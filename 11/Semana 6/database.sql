

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
    FOREIGN KEY (id_artista) REFERENCES artista(id)
);

CREATE TABLE cancion (
    id int(4) PRIMARY KEY,
    titulo varchar(100),
    duracion int(4),
    año_de_lanzamiento int(4),
    valoracion int(1)

);

CREATE TABLE album(
    id int(3) PRIMARY KEY,
    año int(4),
    nombre varchar(100),
    caratula BLOB

);

CREATE TABLE cancion_album(
 id_cancion int(4) NOT NULL,
    id_album int(3) NOT NULL,
    FOREIGN KEY (id_cancion) REFERENCES cancion(id),
    FOREIGN KEY (id_album) REFERENCES album(id)
);


CREATE TABLE cancion_genero(
    id_genero_musical int(3) NOT NULL,
    id_cancion int(3) NOT NULL,
    FOREIGN KEY (id_genero_musical) REFERENCES genero_musical(id),
    FOREIGN KEY (id_cancion) REFERENCES cancion(id)
);



