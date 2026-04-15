
CREATE DATABASE IF NOT EXISTS BitPalette;
USE BitPalette;


CREATE TABLE usuarios (
    id_usuario INT NOT NULL AUTO_INCREMENT,
    nombre_usuario VARCHAR(50) NOT NULL,
    password VARCHAR(255) NOT NULL,
    PRIMARY KEY (id_usuario)
) ENGINE=InnoDB;


CREATE TABLE favoritos (
    id_favorito INT NOT NULL AUTO_INCREMENT,
    id_usuario INT NOT NULL,
    codigo_hex VARCHAR(7) NOT NULL,
    nombre_color VARCHAR(50),
    PRIMARY KEY (id_favorito),
    -- Relación con la tabla usuarios
    CONSTRAINT fk_usuario_favorito
        FOREIGN KEY (id_usuario)
        REFERENCES usuarios(id_usuario)
        ON DELETE CASCADE
        ON UPDATE CASCADE
) ENGINE=InnoDB;