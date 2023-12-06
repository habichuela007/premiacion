/*Base concursos*/
CREATE DATABASE IF NOT EXISTS prb_concursos;

/*Hacer dueño*/
CREATE USER 'juez'@'%' IDENTIFIED BY 'Bio.2020';
GRANT ALL PRIVILEGES ON prb_concursos.* TO 'juez'@'%' WITH GRANT OPTION;

CREATE USER 'jugador'@'%' IDENTIFIED BY 'Bio.2023';
GRANT SELECT ON prb_concursos.* TO 'jugador'@'%' WITH GRANT OPTION;