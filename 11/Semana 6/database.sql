CREATE DATABASE musica;

CREATE TABLE artista(
    id int(3) PRIMARY KEY,
    nombre_artistico varchar(100),
    nombres varchar(100),
    apellidos varchar(100),
    fecha_nacimiento date,
    sexo enum("masculino", "femenino", "otro")
);

CREATE TABLE genero_musical(
   id int(3) PRIMARY KEY,
   nombre varchar(100),
   descripcion varchar(300)
);

CREATE TABLE artista_genero(
    id_genero_musical int(3) NOT NULL,
    id_artista int(3) NOT NULL,
    FOREIGN KEY (id_genero_musical) REFERENCES genero_musical(id),
    FOREIGN KEY (id_artista) REFERENCES artistas(id)
);





