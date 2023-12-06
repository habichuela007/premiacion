/*Crear tablas*/

CREATE TABLE IF NOT EXISTS alinea_puntajes(
  punto_id INTEGER unsigned NOT NULL AUTO_INCREMENT PRIMARY KEY,
  puntaje SMALLINT UNSIGNED DEFAULT 1, /*1, 2, 3, 4, 5*/
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS alinea_usuarios(
  usuario_id INTEGER unsigned NOT NULL AUTO_INCREMENT PRIMARY KEY,
  usr VARCHAR(50) DEFAULT 'SIN ASIGNAR',
  usr_descripcion VARCHAR(200) DEFAULT 'SIN ASIGNAR',
  estado SMALLINT UNSIGNED DEFAULT 1, /*1activo*/
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS alinea_puntuacion(
  puntuacion_id INTEGER unsigned NOT NULL AUTO_INCREMENT PRIMARY KEY,
  usr VARCHAR(50) DEFAULT 'SIN ASIGNAR',
  aporte VARCHAR(256) DEFAULT 'SIN ASIGNAR',
  puntuacion SMALLINT UNSIGNED DEFAULT 1, /*1activo*/
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE `usuarios` (
  `cod` int(50) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `tel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`cod`);
  
  ALTER TABLE `usuarios`
  MODIFY `cod` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32448;
  
  INSERT INTO `usuarios` (`cod`, `nom`, `correo`, `tel`) VALUES
(32412, 'VaidrollTeam', 'correo@gmail.com', 123456789),
(32413, 'VaidrollTeam2', 'correo2@gmail.com', 342568124),
(32414, 'VaidrollTeam3', 'corre3@hotmail.com', 134653246),
(32425, 'VaidrollTeam4', 'corre4@gmail.com', 2147483647),
(32447, 'UsuarioTest', 'vai@gmail.com', 111111111);

CREATE TABLE `usuarios` (
  `cod` int(50) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `tel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS registros(
  registro_id INTEGER unsigned NOT NULL AUTO_INCREMENT PRIMARY KEY,
  participante VARCHAR(50) DEFAULT 'SIN ASIGNAR',
  puntuacion SMALLINT UNSIGNED DEFAULT 1, /*1activo*/
  aporte TEXT,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    ON UPDATE CURRENT_TIMESTAMP
);