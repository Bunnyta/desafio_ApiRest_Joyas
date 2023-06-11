CREATE DATABASE joyas;

CREATE TABLE inventario (id SERIAL, nombre VARCHAR(50), categoria
VARCHAR(50), metal VARCHAR(50), precio INT, stock INT);


INSERT INTO inventario values
(DEFAULT, 'Collar Heart', 'collar', 'oro', 20000 , 2),
(DEFAULT, 'Collar History', 'collar', 'plata', 15000 , 5),
(DEFAULT, 'Aros Berry', 'aros', 'oro', 12000 , 10),
(DEFAULT, 'Aros Hook Blue', 'aros', 'oro', 25000 , 4),
(DEFAULT, 'Anillo Wish', 'aros', 'plata', 30000 , 4),
(DEFAULT, 'Anillo Cuarzo Greece', 'anillo', 'oro', 40000 , 2),
(DEFAULT, 'Collar Moonlight', 'collar', 'plata', 18000, 3),
(DEFAULT, 'Collar Infinity', 'collar', 'oro', 22000, 5),
(DEFAULT, 'Aros Glamour', 'aros', 'oro', 15000, 8),
(DEFAULT, 'Aros Twist', 'aros', 'plata', 10000, 6),
(DEFAULT, 'Anillo Starlight', 'anillo', 'plata', 28000, 2),
(DEFAULT, 'Anillo Diamond', 'anillo', 'oro', 35000, 3),
(DEFAULT, 'Collar Secret Garden', 'collar', 'plata', 19000, 4),
(DEFAULT, 'Collar Royal', 'collar', 'oro', 25000, 6),
(DEFAULT, 'Aros Divine', 'aros', 'oro', 18000, 9),
(DEFAULT, 'Aros Pearl', 'aros', 'plata', 9000, 12),
(DEFAULT, 'Anillo Sparkle', 'anillo', 'plata', 32000, 5),
(DEFAULT, 'Anillo Elegance', 'anillo', 'oro', 38000, 4),
(DEFAULT, 'Collar Enchanted', 'collar', 'plata', 17000, 5),
(DEFAULT, 'Collar Crown', 'collar', 'oro', 23000, 7),
(DEFAULT, 'Aros Crystal', 'aros', 'oro', 16000, 10),
(DEFAULT, 'Aros Loop', 'aros', 'plata', 8000, 15),
(DEFAULT, 'Anillo Moonstone', 'anillo', 'plata', 30000, 6),
(DEFAULT, 'Anillo Radiance', 'anillo', 'oro', 42000, 2),
(DEFAULT, 'Collar Serenity', 'collar', 'plata', 20000, 6),
(DEFAULT, 'Collar Angelic', 'collar', 'oro', 27000, 4),
(DEFAULT, 'Aros Harmony', 'aros', 'oro', 14000, 7),
(DEFAULT, 'Aros Blossom', 'aros', 'plata', 11000, 10),
(DEFAULT, 'Anillo Love', 'anillo', 'plata', 34000, 3),
(DEFAULT, 'Anillo Harmony', 'anillo', 'oro', 39000, 2),
(DEFAULT, 'Collar Dazzle', 'collar', 'plata', 21000, 4),
(DEFAULT, 'Collar Radiant', 'collar', 'oro', 26000, 5),
(DEFAULT, 'Aros Star', 'aros', 'oro', 17000, 8),
(DEFAULT, 'Aros Shimmer', 'aros', 'plata', 9500, 12),
(DEFAULT, 'Anillo Spark', 'anillo', 'plata', 33000, 4),
(DEFAULT, 'Anillo Divine', 'anillo', 'oro', 41000, 2);