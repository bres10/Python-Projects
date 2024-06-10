-- Generado por Oracle SQL Developer Data Modeler 23.1.0.087.0806
--   en:        2024-04-13 09:42:55 CST
--   sitio:      Oracle Database 10g
--   tipo:      Oracle Database 10g



-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE aeropuerto (
    codigo            NUMBER NOT NULL,
    nombre            CHAR 
--  WARNING: CHAR size not specified 
    ,
    ciudad            CHAR 
--  WARNING: CHAR size not specified 
    ,
    pais              CHAR 
--  WARNING: CHAR size not specified 
    ,
    aeropuerto_codigo NUMBER NOT NULL
);

CREATE UNIQUE INDEX aeropuerto__idx ON
    aeropuerto (
        aeropuerto_codigo
    ASC );

ALTER TABLE aeropuerto ADD CONSTRAINT aeropuerto_pk PRIMARY KEY ( codigo );

CREATE TABLE aterrizaje (
    codigo            NUMBER NOT NULL,
    descripcion       CHAR 
--  WARNING: CHAR size not specified 
    ,
    aeropuerto_codigo NUMBER NOT NULL
);

ALTER TABLE aterrizaje ADD CONSTRAINT aterrizaje_pk PRIMARY KEY ( codigo );

CREATE TABLE despegue (
    codigo            NUMBER NOT NULL,
    descripcion       CHAR 
--  WARNING: CHAR size not specified 
    ,
    aeropuerto_codigo NUMBER NOT NULL
);

ALTER TABLE despegue ADD CONSTRAINT despegue_pk PRIMARY KEY ( codigo );

CREATE TABLE escala_tecnica (
    no_orden                    NUMBER NOT NULL,
    areopuerto_escala           CHAR 
--  WARNING: CHAR size not specified 
    ,
    programa_vuelo_cod_programa NUMBER NOT NULL
);
ALTER TABLE escala_tecnica MODIFY (areopuerto_escala VARCHAR2(100));

ALTER TABLE escala_tecnica ADD CONSTRAINT escala_tecnica_pk PRIMARY KEY ( no_orden );

CREATE TABLE modelo_avion (
    no_plazas         NUMBER NOT NULL,
    descripcion       CHAR 
--  WARNING: CHAR size not specified 
    ,
    aeropuerto_codigo NUMBER NOT NULL
);
ALTER TABLE modelo_avion MODIFY (descripcion VARCHAR2(100));

ALTER TABLE modelo_avion ADD CONSTRAINT modelo_avion_pk PRIMARY KEY ( no_plazas );

CREATE TABLE programa_vuelo (
    cod_programa      NUMBER NOT NULL,
    linea_area        CHAR 
--  WARNING: CHAR size not specified 
    ,
    dias_despegue     DATE,
    aeropuerto_codigo NUMBER NOT NULL
);
ALTER TABLE programa_vuelo MODIFY (linea_area VARCHAR2(100));

ALTER TABLE programa_vuelo ADD CONSTRAINT programa_vuelo_pk PRIMARY KEY ( cod_programa );

CREATE TABLE vuelo (
    no_vuelo                    NUMBER NOT NULL,
    fecha                       DATE,
    plaza_vacante               CHAR 
--  WARNING: CHAR size not specified 
    ,
    programa_vuelo_cod_programa NUMBER NOT NULL,
    aeropuerto_codigo           NUMBER NOT NULL
);
ALTER TABLE vuelo MODIFY (plaza_vacante VARCHAR2(100));

CREATE UNIQUE INDEX vuelo__idx ON
    vuelo (
        programa_vuelo_cod_programa
    ASC );

ALTER TABLE vuelo ADD CONSTRAINT vuelo_pk PRIMARY KEY ( no_vuelo );

ALTER TABLE aeropuerto
    ADD CONSTRAINT aeropuerto_aeropuerto_fk FOREIGN KEY ( aeropuerto_codigo )
        REFERENCES aeropuerto ( codigo );

ALTER TABLE aterrizaje
    ADD CONSTRAINT aterrizaje_aeropuerto_fk FOREIGN KEY ( aeropuerto_codigo )
        REFERENCES aeropuerto ( codigo );

ALTER TABLE despegue
    ADD CONSTRAINT despegue_aeropuerto_fk FOREIGN KEY ( aeropuerto_codigo )
        REFERENCES aeropuerto ( codigo );

--  ERROR: FK name length exceeds maximum allowed length(30) 
ALTER TABLE escala_tecnica
    ADD CONSTRAINT escala_tecnica_programa_vuelo_fk FOREIGN KEY ( programa_vuelo_cod_programa )
        REFERENCES programa_vuelo ( cod_programa );

ALTER TABLE modelo_avion
    ADD CONSTRAINT modelo_avion_aeropuerto_fk FOREIGN KEY ( aeropuerto_codigo )
        REFERENCES aeropuerto ( codigo );

ALTER TABLE programa_vuelo
    ADD CONSTRAINT programa_vuelo_aeropuerto_fk FOREIGN KEY ( aeropuerto_codigo )
        REFERENCES aeropuerto ( codigo );

ALTER TABLE vuelo
    ADD CONSTRAINT vuelo_aeropuerto_fk FOREIGN KEY ( aeropuerto_codigo )
        REFERENCES aeropuerto ( codigo );

ALTER TABLE vuelo
    ADD CONSTRAINT vuelo_programa_vuelo_fk FOREIGN KEY ( programa_vuelo_cod_programa )
        REFERENCES programa_vuelo ( cod_programa );



-- Informe de Resumen de Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                             7
-- CREATE INDEX                             2
-- ALTER TABLE                             15
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   1
-- WARNINGS                                 9

ALTER TABLE aeropuerto MODIFY (ciudad VARCHAR2(100));
ALTER TABLE aeropuerto MODIFY (pais VARCHAR2(100));
ALTER TABLE aterrizaje MODIFY (descripcion VARCHAR2(100));
ALTER TABLE despegue MODIFY (descripcion VARCHAR2(100));


-- Ingresar datos en la tabla aeropuerto
INSERT INTO aeropuerto (codigo, nombre, ciudad, pais, aeropuerto_codigo) 
VALUES (101, 'Aeropuerto Internacional de Los Angeles', 'Los Angeles', 'Estados Unidos', 101);

INSERT INTO aeropuerto (codigo, nombre, ciudad, pais, aeropuerto_codigo) 
VALUES (102, 'Aeropuerto Heathrow de Londres', 'Londres', 'Reino Unido', 102);

INSERT INTO aeropuerto (codigo, nombre, ciudad, pais, aeropuerto_codigo) 
VALUES (103, 'Aeropuerto Internacional de Dubái', 'Dubái', 'Emiratos Árabes Unidos', 103);

-- Ingresar datos en la tabla aterrizaje
INSERT INTO aterrizaje (codigo, descripcion, aeropuerto_codigo) 
VALUES (101, 'Pista de aterrizaje 1', 101);

INSERT INTO aterrizaje (codigo, descripcion, aeropuerto_codigo) 
VALUES (102, 'Pista de aterrizaje 2', 102);

INSERT INTO aterrizaje (codigo, descripcion, aeropuerto_codigo) 
VALUES (103, 'Pista de aterrizaje 3', 103);

-- Ingresar datos en la tabla despegue
INSERT INTO despegue (codigo, descripcion, aeropuerto_codigo) 
VALUES (101, 'Pista de despegue 1', 101);

INSERT INTO despegue (codigo, descripcion, aeropuerto_codigo) 
VALUES (102, 'Pista de despegue 2', 102);

INSERT INTO despegue (codigo, descripcion, aeropuerto_codigo) 
VALUES (103, 'Pista de despegue 3', 103);

-- Ingresar datos en la tabla escala_tecnica
INSERT INTO escala_tecnica (no_orden, areopuerto_escala, programa_vuelo_cod_programa) 
VALUES (1, 'Aeropuerto Internacional de Madrid', 1001);

INSERT INTO escala_tecnica (no_orden, areopuerto_escala, programa_vuelo_cod_programa) 
VALUES (12, 'Aeropuerto Internacional de París', 1002);

INSERT INTO escala_tecnica (no_orden, areopuerto_escala, programa_vuelo_cod_programa) 
VALUES (13, 'Aeropuerto Internacional de Frankfurt', 1003);

-- Ingresar datos en la tabla modelo_avion
INSERT INTO modelo_avion (no_plazas, descripcion, aeropuerto_codigo) 
VALUES (150, 'Boeing 737', 101);

INSERT INTO modelo_avion (no_plazas, descripcion, aeropuerto_codigo) 
VALUES (300, 'Airbus A320', 102);

INSERT INTO modelo_avion (no_plazas, descripcion, aeropuerto_codigo) 
VALUES (250, 'Boeing 787', 103);

-- Ingresar datos en la tabla programa_vuelo
INSERT INTO programa_vuelo (cod_programa, linea_area, dias_despegue, aeropuerto_codigo) 
VALUES (1001, 'Iberia', TO_DATE('2024-04-15', 'YYYY-MM-DD'), 101);

INSERT INTO programa_vuelo (cod_programa, linea_area, dias_despegue, aeropuerto_codigo) 
VALUES (1002, 'Air France', TO_DATE('2024-04-16', 'YYYY-MM-DD'), 102);

INSERT INTO programa_vuelo (cod_programa, linea_area, dias_despegue, aeropuerto_codigo) 
VALUES (1003, 'Lufthansa', TO_DATE('2024-04-17', 'YYYY-MM-DD'), 103);

-- Ingresar datos en la tabla vuelo
INSERT INTO vuelo (no_vuelo, fecha, plaza_vacante, programa_vuelo_cod_programa, aeropuerto_codigo) 
VALUES (1, TO_DATE('2024-04-15', 'YYYY-MM-DD'), 'Económica', 1001, 101);

INSERT INTO vuelo (no_vuelo, fecha, plaza_vacante, programa_vuelo_cod_programa, aeropuerto_codigo) 
VALUES (2, TO_DATE('2024-04-16', 'YYYY-MM-DD'), 'Business', 1002, 102);

INSERT INTO vuelo (no_vuelo, fecha, plaza_vacante, programa_vuelo_cod_programa, aeropuerto_codigo) 
VALUES (3, TO_DATE('2024-04-17', 'YYYY-MM-DD'), 'Primera Clase', 1003, 103);


SELECT * FROM aeropuerto;
SELECT * FROM aterrizaje;
SELECT * FROM despegue;
SELECT * FROM escala_tecnica;
SELECT * FROM modelo_avion;
SELECT * FROM programa_vuelo;
SELECT * FROM vuelo;

SELECT * FROM aeropuerto, aterrizaje, vuelo;


