/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     6/18/2019 10:14:16 AM                        */
/*==============================================================*/


drop table if exists ALQUILER;

drop table if exists CLIENTE;

drop table if exists MARCAVEHICULO;

drop table if exists ROL;

drop table if exists SEGURO;

drop table if exists TIPOCOMBUSTIBLE;

drop table if exists TIPOVEHICULO;

drop table if exists TRANSMICION;

drop table if exists USUARIO;

drop table if exists VEHICULO;

/*==============================================================*/
/* Table: ALQUILER                                              */
/*==============================================================*/
create table ALQUILER
(
   ID_ALQUILER          char(5) not null,
   ID_VEHICULO          char(5),
   ID_USUARIO           char(5),
   ID_CLIENTE           char(5),
   ID_EMPRESA           char(50),
   FECHA_ALQUILADO      date not null,
   FECHA_DEVOLUCION     date not null,
   TOTAL_PAGAR          numeric(10,2) not null,
   ESTADO_ALQUILER      char(20) not null,
   primary key (ID_ALQUILER)
);

/*==============================================================*/
/* Table: CLIENTE                                               */
/*==============================================================*/
create table CLIENTE
(
   ID_CLIENTE           char(5) not null,
   NOMBRE               char(100) not null,
   APELLIDO             varchar(100) not null,
   FECHA_NACIMIENTO     date not null,
   DUI                  char(9) not null,
   DIRECCION            char(100) not null,
   TELEFONO             int not null,
   primary key (ID_CLIENTE)
);

/*==============================================================*/
/* Table: MARCAVEHICULO                                         */
/*==============================================================*/
create table MARCAVEHICULO
(
   ID_MARCA             char(5) not null,
   MARCA_VEHICULO       varchar(50) not null,
   primary key (ID_MARCA)
);

/*==============================================================*/
/* Table: ROL                                                   */
/*==============================================================*/
create table ROL
(
   ID_ROL               char(5) not null,
   NOMBRE_ROL           varchar(50) not null,
   primary key (ID_ROL)
);

/*==============================================================*/
/* Table: SEGURO                                                */
/*==============================================================*/
create table SEGURO
(
   ID_EMPRESA           char(50) not null,
   PRECIO               decimal(10,2) not null,
   DESCRIPCION          varchar(1000) not null,
   primary key (ID_EMPRESA)
);

/*==============================================================*/
/* Table: TIPOCOMBUSTIBLE                                       */
/*==============================================================*/
create table TIPOCOMBUSTIBLE
(
   ID_COMBUSTIBLE       char(5) not null,
   TIPO_COMBUSTIBLE     varchar(50) not null,
   primary key (ID_COMBUSTIBLE)
);

/*==============================================================*/
/* Table: TIPOVEHICULO                                          */
/*==============================================================*/
create table TIPOVEHICULO
(
   ID_TIPO_VEHICULO     char(5) not null,
   TIPO_VEHICULO        varchar(50) not null,
   primary key (ID_TIPO_VEHICULO)
);

/*==============================================================*/
/* Table: TRANSMICION                                           */
/*==============================================================*/
create table TRANSMICION
(
   ID_TRANSMICION       char(5) not null,
   TIPO_TRANSMICION     varchar(50) not null,
   primary key (ID_TRANSMICION)
);

/*==============================================================*/
/* Table: USUARIO                                               */
/*==============================================================*/
create table USUARIO
(
   ID_USUARIO           char(5) not null,
   ID_ROL               char(5) not null,
   NOMBRE_USUARIO       char(100) not null,
   APELLIDO_USUARIO     char(50) not null,
   primary key (ID_USUARIO)
);

/*==============================================================*/
/* Table: VEHICULO                                              */
/*==============================================================*/
create table VEHICULO
(
   ID_VEHICULO          char(5) not null,
   ID_MARCA             char(5),
   ID_TIPO_VEHICULO     char(5),
   ID_COMBUSTIBLE       char(5),
   ID_TRANSMICION       char(5),
   NUM_PUERTAS          int not null,
   CAPACIDAD_PERSONAS   int not null,
   COLOR                char(50) not null,
   PLACA                char(50) not null,
   FUNCIONES            varchar(1000) not null,
   CAPACIDAD_MALETERO   char(30) not null,
   ANO                  int not null,
   ESTADO_VEHICULO      char(50) not null,
   primary key (ID_VEHICULO)
);

alter table ALQUILER add constraint FK_CONTIENE foreign key (ID_VEHICULO)
      references VEHICULO (ID_VEHICULO) on delete restrict on update restrict;

alter table ALQUILER add constraint FK_ES_REALIZADO_POR foreign key (ID_USUARIO)
      references USUARIO (ID_USUARIO) on delete restrict on update restrict;

alter table ALQUILER add constraint FK_POSEE_UN foreign key (ID_CLIENTE)
      references CLIENTE (ID_CLIENTE) on delete restrict on update restrict;

alter table ALQUILER add constraint FK_PUEDE_CONTRATAR foreign key (ID_EMPRESA)
      references SEGURO (ID_EMPRESA) on delete restrict on update restrict;

alter table USUARIO add constraint FK_CONTIENE_UN foreign key (ID_ROL)
      references ROL (ID_ROL) on delete restrict on update restrict;

alter table VEHICULO add constraint FK_ES_UN foreign key (ID_TIPO_VEHICULO)
      references TIPOVEHICULO (ID_TIPO_VEHICULO) on delete restrict on update restrict;

alter table VEHICULO add constraint FK_POSEE foreign key (ID_MARCA)
      references MARCAVEHICULO (ID_MARCA) on delete restrict on update restrict;

alter table VEHICULO add constraint FK_USA foreign key (ID_COMBUSTIBLE)
      references TIPOCOMBUSTIBLE (ID_COMBUSTIBLE) on delete restrict on update restrict;

alter table VEHICULO add constraint FK_USA_UN_TIPO_DE foreign key (ID_TRANSMICION)
      references TRANSMICION (ID_TRANSMICION) on delete restrict on update restrict;

