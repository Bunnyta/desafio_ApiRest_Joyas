import { config } from "dotenv";
config();

import express from "express";
import pool from "./database/connection.js";
import format from "pg-format";
import { handleErrors } from "./database/errors.js";
import { queryVerification } from "./middleware/queryVerification.js";


const app = express();


app.get("/joyas",  queryVerification, async (req, res) => {
  const { sort, limit = 6, page = 1, filters } = req.query;
  let query = "SELECT * FROM inventario";
  let arrayValues = [];

  if (filters) {
    query += " WHERE ";
    const propertys = Object.keys(filters);

    const operatorsQueryObjet = {
      $eq: "=",
      $gt: ">",
      $gte: ">=",
      $lt: "<",
      $lte: "<=",
      $ne: "!=",
      
    };
    for (const key in filters) {
      const name = key;
      const object = filters[name];
      const operator = Object.keys(object)[0];
      const value = object[operator];

      query += "%s %s '%s'";

      arrayValues.push(name, operatorsQueryObjet[operator], value);

      if (key !== propertys[propertys.length - 1]) {
        query += " AND ";
      }
    }
  }

  if (sort) {
    query += " ORDER BY %s %s";
    const property = Object.keys(sort)[0];
    arrayValues.push(property, sort[property]);
  }

  if (limit) {
    query += " LIMIT %s";
    arrayValues.push(limit);
  }

  if (page) {
    query += " OFFSET %s";
    arrayValues.push((page - 1) * limit);
  }

  

  try {
    const finalQuery = format(query, ...arrayValues);
    const { rows } = await pool.query(finalQuery);

    const results = rows.map((row) => {
      return {
        name: row.nombre,
        category: row.categoria,
        metal: row.metal,
        precio: row.precio,
        stock: row.stock,
        href: `http://localhost:3000/inventario/${row.id}`,
      };
    });

    const text = "SELECT * FROM inventario";
    const { rows: data } = await pool.query(text);
    const total_pages = Math.ceil(data.length / limit);

    return res.json({
      results,
      meta: {
        total_Joyas: data.length,
        limit: parseInt(limit),
        page: parseInt(page),
        total_pages: total_pages,
        next:
          total_pages <= page
            ? null
            : `http://localhost:3000/inventario?limit=${limit}&page=${
                parseInt(page) + 1
              }`,
        previous:
          page <= 1
            ? null
            : `http://localhost:3000/inventario?limit=${limit}&page=${
                parseInt(page) - 1
              }`,
      },
    });
  } catch (error) {
    console.log(error);
    const { status, message } = handleErrors(error.code);
    return res.status(status).json({ ok: false, result: message });
  }
});

const PORT = process.env.PORT || 3000;
app.listen(PORT,()=> console.log(`Server listening on port http://localhost:${PORT}`))
