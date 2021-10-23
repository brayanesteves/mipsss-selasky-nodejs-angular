# --------- <ENGLISH: MODULE. USERS / SPANISH: MÓDULO. USUARIOS> ----------- #

# <ENGLISH: USERS / SPANISH: USUARIOS>
CREATE TABLE IF NOT EXISTS `MIPSS_Frwdr`.`0_Usrs` (
    `Rfrnc`        INT(255)     NOT NULL AUTO_INCREMENT COMMENT 'Rfrnc        (English: Reference                          / Spanish: Referencia)',
    `Usrnm`        VARCHAR(20)  NOT NULL                COMMENT 'Usrnm        (English: Username                           / Spanish: Nombre de Usuario)',
    `Psswrd`       VARCHAR(255) NOT NULL                COMMENT 'Psswrd       (English: Password                           / Spanish: Contraseña)',
    `Rfrnc_Prsn`   INT    (255) NOT NULL                COMMENT 'Rfrnc_Prsn   (English: Reference. Person                  / Spanish: Referencia. Persona)',
    `UsrTyp_Rfrnc` INT    (255) NOT NULL                COMMENT 'UsrTyp_Rfrnc (English: User Type. Reference               / Spanish: Referencia. Tipo de Usuario)',
    `Cndtn`        INT    (2)   NOT NULL                COMMENT 'Cndtn        (English: Condition [0: Inactive, 1: Active] / Spanish: Estado [0: Inactivo, 1: Activo])',
    `Rmvd`         INT    (2)   NOT NULL                COMMENT 'Rmvd         (English: Removed [0: Inactive, 1: Active]   / Spanish: Eliminado [0: Inactivo, 1: Activo])',
    `Lckd`         INT    (2)   NOT NULL                COMMENT 'Lckd         (English: Locked [0: Inactive, 1: Active]    / Spanish: Bloqueado [0: Inactivo, 1: Activo])',
    `DtAdmssn`     DATE             NULL                COMMENT 'DtAdmssn     (English: Date of Admission                  / Spanish: Fecha de Ingreso)',
    `ChckTm`       TIME             NULL                COMMENT 'ChckTm       (English: Check In Time                      / Spanish: Hora de Ingreso)',
    PRIMARY KEY (`Rfrnc`)
) ENGINE='MyISAM' DEFAULT CHARSET='utf8' COLLATE='utf8_bin' COMMENT='0_Usrs (English: 0 - Users / Spanish: 0 - Usuarios)';
# <0 - USUARIOS: INSERTAR DATOS>

# <.ENGLISH: USERS / SPANISH: USUARIOS>

# <ENGLISH: TYPES OF USERS / SPANISH: TIPOS DE USUARIOS>
CREATE TABLE IF NOT EXISTS `MIPSS_Frwdr`.`0_TypsUsrs` (
    `Rfrnc`    INT    (255) NOT NULL AUTO_INCREMENT COMMENT 'Rfrnc    (English: Reference                          / Spanish: Referencia)',
    `Nm`       VARCHAR(20)  NOT NULL                COMMENT 'Nm       (English: Name                               / Spanish: Nombre)',
    `Dscrptn`  TEXT         NOT NULL                COMMENT 'Dscrptn  (English: Description                        / Spanish: Descripción)',
    `Lvl`      INT    (20)  NOT NULL                COMMENT 'Lvl      (English: Level                              / Spanish: Nivel)',
    `Cndtn`    INT    (2)   NOT NULL                COMMENT 'Cndtn    (English: Condition [0: Inactive, 1: Active] / Spanish: Estado [0: Inactivo, 1: Activo])',
    `Rmvd`     INT    (2)   NOT NULL                COMMENT 'Rmvd     (English: Removed [0: Inactive, 1: Active]   / Spanish: Eliminado [0: Inactivo, 1: Activo])',
    `Lckd`     INT    (2)   NOT NULL                COMMENT 'Lckd     (English: Locked [0: Inactive, 1: Active]    / Spanish: Bloqueado [0: Inactivo, 1: Activo])',
    `DtAdmssn` DATE             NULL                COMMENT 'DtAdmssn (English: Date of Admission                  / Spanish: Fecha de Ingreso)',
    `ChckTm`   TIME             NULL                COMMENT 'ChckTm   (English: Check In Time                      / Spanish: Hora de Ingreso)', 
    PRIMARY KEY (`Rfrnc`)
) ENGINE='MyISAM' DEFAULT CHARSET='utf8' COLLATE='utf8_bin' COMMENT='0_TpsUsrs (English: 0 - Types of Users / Spanish: 0 - Tipos de Usuarios)';
# <ACCIONES: INSERTAR DATOS> 

# <00000 - MÓDULO: USUARIOS (USRS)[CRUD]>
INSERT INTO `MIPSS_Frwdr`.`0_TypsUsrs` (`Rfrnc`, `Nm`, `Dscrptn`, `Lvl`, `Cndtn`, `Rmvd`,`Lckd`, `DtAdmssn`, `ChckTm`) VALUES ('00000', 'Mngr', 'English: Manager / Spanish: Administrador', 0, 1, 0, 0, "0001-01-01", "00:00:00");
# </ACCIONES: INSERTAR DATOS>
# <.ENGLISH: TYPES OF USERS / SPANISH: TIPOS DE USUARIOS>

# <ENGLISH: OPERATION. USER TYPE ACTIONS / SPANISH: OPERACIÓN. ACCIONES DE TIPOS DE USUARIOS>
CREATE TABLE IF NOT EXISTS `MIPSS_Frwdr`.`0_OprtnUsrTypActns` (
    `Rfrnc`        INT    (255) NOT NULL AUTO_INCREMENT COMMENT 'Rfrnc        (English: Reference                          / Spanish: Referencia)',
    `Rfrnc_TypUsr` INT    (255) NOT NULL                COMMENT 'Rfrnc_TypUsr (English: Reference. Type of User            / Spanish: Referencia. Tipo de Usuario)',
    `Rfrnc_Actn`   INT    (255) NOT NULL                COMMENT 'Rfrnc_Atcn   (English: Reference. Action                  / Spanish: Referencia. Acción)',    
    `Cndtn`        INT    (2)   NOT NULL                COMMENT 'Cndtn        (English: Condition [0: Inactive, 1: Active] / Spanish: Estado [0: Inactivo, 1: Activo])',
    `Rmvd`         INT    (2)   NOT NULL                COMMENT 'Rmvd         (English: Removed [0: Inactive, 1: Active]   / Spanish: Eliminado [0: Inactivo, 1: Activo])',
    `Lckd`         INT    (2)   NOT NULL                COMMENT 'Lckd         (English: Locked [0: Inactive, 1: Active]    / Spanish: Bloqueado [0: Inactivo, 1: Activo])',
    `DtAdmssn`     DATE             NULL                COMMENT 'DtAdmssn     (English: Date of Admission                  / Spanish: Fecha de Ingreso)',
    `ChckTm`       TIME             NULL                COMMENT 'ChckTm       (English: Check In Time                      / Spanish: Hora de Ingreso)',
    PRIMARY KEY (`Rfrnc`)
) ENGINE='MyISAM' DEFAULT CHARSET='utf8' COLLATE='utf8_bin' COMMENT='0_OprtnUsrTypActns (English: Operation. User Type Actions / Spanish: 0 - Operación. Acciones: Tipos de Usuarios)';

# <ACCIONES: INSERTAR DATOS>

INSERT INTO `MIPSS_Frwdr`.`0_OprtnUsrTypActns` (`Rfrnc`, `Rfrnc_TypUsr`, `Rfrnc_Actn`, `Cndtn`, `Rmvd`, `Lckd`, `DtAdmssn`, `ChckTm`) VALUES (NULL, 1, 1, 1, 0, 0, "0001-01-01", "00:00:00");
INSERT INTO `MIPSS_Frwdr`.`0_OprtnUsrTypActns` (`Rfrnc`, `Rfrnc_TypUsr`, `Rfrnc_Actn`, `Cndtn`, `Rmvd`, `Lckd`, `DtAdmssn`, `ChckTm`) VALUES (NULL, 1, 2, 1, 0, 0, "0001-01-01", "00:00:00");
INSERT INTO `MIPSS_Frwdr`.`0_OprtnUsrTypActns` (`Rfrnc`, `Rfrnc_TypUsr`, `Rfrnc_Actn`, `Cndtn`, `Rmvd`, `Lckd`, `DtAdmssn`, `ChckTm`) VALUES (NULL, 1, 3, 1, 0, 0, "0001-01-01", "00:00:00");
INSERT INTO `MIPSS_Frwdr`.`0_OprtnUsrTypActns` (`Rfrnc`, `Rfrnc_TypUsr`, `Rfrnc_Actn`, `Cndtn`, `Rmvd`, `Lckd`, `DtAdmssn`, `ChckTm`) VALUES (NULL, 1, 4, 1, 0, 0, "0001-01-01", "00:00:00");
# </ACCIONES: INSERTAR DATOS>
# <.ENGLISH: OPERATION. USER TYPE ACTIONS / SPANISH: OPERACIÓN. ACCIONES DE TIPOS DE USUARIOS>

# <ENGLISH: ACTIONS / SPANISH: ACCIONES>
CREATE TABLE IF NOT EXISTS `MIPSS_Frwdr`.`0_Actns` (
    `Rfrnc`      INT    (255) NOT NULL AUTO_INCREMENT COMMENT 'Rfrnc        (English: Reference                          / Spanish: Referencia)',
    `Rfrnc_Lnk`  INT    (255)     NULL                COMMENT 'Rfrnc_Lnk    (English: Reference Link                     / Spanish: Referencia. Enlace)',
    `Nm`         VARCHAR(20)  NOT NULL                COMMENT 'Nm           (English: Name                               / Spanish: Nombre)',
    `Dscrptn`    TEXT         NOT NULL                COMMENT 'Dscrptn      (English: Description                        / Spanish: Descripción)',
    `Rfrnc_Actn` INT    (255)     NULL                COMMENT 'Rfrnc_Actn   (English: Reference. Action                  / Spanish: Referencia. Acción)',
    `Mdl_Rfrnc`  INT    (255) NOT NULL                COMMENT 'Mdl_Rfrnc    (English: Module. Reference                  / English: Referencia. Módulo)',    
    `Cndtn`      INT    (2)   NOT NULL                COMMENT 'Cndtn        (English: Condition [0: Inactive, 1: Active] / Spanish: Estado [0: Inactivo, 1: Activo])',
    `Rmvd`       INT    (2)   NOT NULL                COMMENT 'Rmvd         (English: Removed [0: Inactive, 1: Active]   / Spanish: Eliminado [0: Inactivo, 1: Activo])',
    `Lckd`       INT    (2)   NOT NULL                COMMENT 'Lckd         (English: Locked [0: Inactive, 1: Active]    / Spanish: Bloqueado [0: Inactivo, 1: Activo])',
    `DtAdmssn`   DATE             NULL                COMMENT 'DtAdmssn     (English: Date of Admission                  / Spanish: Fecha de Ingreso)',
    `ChckTm`     TIME             NULL                COMMENT 'ChckTm       (English: Check In Time                      / Spanish: Hora de Ingreso)', 
    PRIMARY KEY (`Rfrnc`)
) ENGINE='MyISAM' DEFAULT CHARSET='utf8' COLLATE='utf8_bin' COMMENT='0_Actns (English: 0 - Actions / Spanish: 0 - Acciones)';

# <ENGLISH: ACTIONS. INSERT DATA / SPANISH: ACCIONES. INSERTAR DATOS>

# <ENGLISH: 00000 - MODULE. USERS (USRS)[CRUD] / SPANISH: 00000 - MÓDULO. USUARIOS (USRS)[CRUD]>
INSERT INTO `MIPSS_Frwdr`.`0_Actns` (`Rfrnc`, `Rfrnc_Lnk`, `Nm`, `Dscrptn`, `Rfrnc_Actn`, `Mdl_Rfrnc`, `Cndtn`, `Rmvd`, `Lckd`, `DtAdmssn`, `ChckTm`) VALUES (NULL, 1,  'Add', 'English: Add    / Spanish: Agregar',    NULL, 1, 1, 0, 0, '0001-01-01', '00:00:00');
INSERT INTO `MIPSS_Frwdr`.`0_Actns` (`Rfrnc`, `Rfrnc_Lnk`, `Nm`, `Dscrptn`, `Rfrnc_Actn`, `Mdl_Rfrnc`, `Cndtn`, `Rmvd`, `Lckd`, `DtAdmssn`, `ChckTm`) VALUES (NULL, 2, 'Updt', 'English: Update / Spanish: Actualizar', NULL, 1, 1, 0, 0, '0001-01-01', '00:00:00');
INSERT INTO `MIPSS_Frwdr`.`0_Actns` (`Rfrnc`, `Rfrnc_Lnk`, `Nm`, `Dscrptn`, `Rfrnc_Actn`, `Mdl_Rfrnc`, `Cndtn`, `Rmvd`, `Lckd`, `DtAdmssn`, `ChckTm`) VALUES (NULL, 3,  'Dlt', 'English: Delete / Spanish: Eliminar',   NULL, 1, 1, 0, 0, '0001-01-01', '00:00:00');
INSERT INTO `MIPSS_Frwdr`.`0_Actns` (`Rfrnc`, `Rfrnc_Lnk`, `Nm`, `Dscrptn`, `Rfrnc_Actn`, `Mdl_Rfrnc`, `Cndtn`, `Rmvd`, `Lckd`, `DtAdmssn`, `ChckTm`) VALUES (NULL, 4, 'Srch', 'English: Search / Spanish: Buscar',     NULL, 1, 1, 0, 0, '0001-01-01', '00:00:00');
# <.ENGLISH: 00000 - MODULE. USERS (USRS)[CRUD] / SPANISH: 00000 - MÓDULO. USUARIOS (USRS)[CRUD]>

# <ENGLISH: 00001 - MODULE. TYPE OF USER (TYPUSR)[CRUD] / SPANISH: 00001 - MÓDULO. TIPO DE USUARIO (TPUSR)[CRUD]>
INSERT INTO `MIPSS_Frwdr`.`0_Actns` (`Rfrnc`, `Rfrnc_Lnk`, `Nm`, `Dscrptn`,`Rfrnc_Actn`, `Mdl_Rfrnc`, `Cndtn`, `Rmvd`, `Lckd`, `DtAdmssn`, `ChckTm`) VALUES (NULL, 1,  'Add', 'English: Add    / Spanish: Agregar',    NULL, 2, 1, 0, 0, '0001-01-01', '00:00:00');
INSERT INTO `MIPSS_Frwdr`.`0_Actns` (`Rfrnc`, `Rfrnc_Lnk`, `Nm`, `Dscrptn`,`Rfrnc_Actn`, `Mdl_Rfrnc`, `Cndtn`, `Rmvd`, `Lckd`, `DtAdmssn`, `ChckTm`) VALUES (NULL, 2, 'Updt', 'English: Update / Spanish: Actualizar', NULL, 2, 1, 0, 0, '0001-01-01', '00:00:00');
INSERT INTO `MIPSS_Frwdr`.`0_Actns` (`Rfrnc`, `Rfrnc_Lnk`, `Nm`, `Dscrptn`,`Rfrnc_Actn`, `Mdl_Rfrnc`, `Cndtn`, `Rmvd`, `Lckd`, `DtAdmssn`, `ChckTm`) VALUES (NULL, 3,  'Dlt', 'English: Delete / Spanish: Eliminar',   NULL, 2, 1, 0, 0, '0001-01-01', '00:00:00');
INSERT INTO `MIPSS_Frwdr`.`0_Actns` (`Rfrnc`, `Rfrnc_Lnk`, `Nm`, `Dscrptn`,`Rfrnc_Actn`, `Mdl_Rfrnc`, `Cndtn`, `Rmvd`, `Lckd`, `DtAdmssn`, `ChckTm`) VALUES (NULL, 4, 'Srch', 'English: Search / Spanish: Buscar',     NULL, 2, 1, 0, 0, '0001-01-01', '00:00:00');
# <.ENGLISH: 00001 - MODULE. TYPE OF USER (TYPUSR)[CRUD] / SPANISH: 00001 - MÓDULO. TIPO DE USUARIO (TPUSR)[CRUD]>

# <ENGLISH: 00002 - MODULE. PERSON (PRSN)[CRUD] / SPANISH: 00002 - MÓDULO. PERSONA (PRSN)[CRUD]>
INSERT INTO `MIPSS_Frwdr`.`0_Actns` (`Rfrnc`, `Rfrnc_Lnk`, `Nm`, `Dscrptn`,`Rfrnc_Actn`, `Mdl_Rfrnc`, `Cndtn`, `Rmvd`, `Lckd`, `DtAdmssn`, `ChckTm`) VALUES (NULL, 1,  'Add', 'English: Add    / Spanish: Agregar',    NULL, 3, 1, 0, 0, '0001-01-01', '00:00:00');
INSERT INTO `MIPSS_Frwdr`.`0_Actns` (`Rfrnc`, `Rfrnc_Lnk`, `Nm`, `Dscrptn`,`Rfrnc_Actn`, `Mdl_Rfrnc`, `Cndtn`, `Rmvd`, `Lckd`, `DtAdmssn`, `ChckTm`) VALUES (NULL, 2, 'Updt', 'English: Update / Spanish: Actualizar', NULL, 3, 1, 0, 0, '0001-01-01', '00:00:00');
INSERT INTO `MIPSS_Frwdr`.`0_Actns` (`Rfrnc`, `Rfrnc_Lnk`, `Nm`, `Dscrptn`,`Rfrnc_Actn`, `Mdl_Rfrnc`, `Cndtn`, `Rmvd`, `Lckd`, `DtAdmssn`, `ChckTm`) VALUES (NULL, 3,  'Dlt', 'English: Delete / Spanish: Eliminar',   NULL, 3, 1, 0, 0, '0001-01-01', '00:00:00');
INSERT INTO `MIPSS_Frwdr`.`0_Actns` (`Rfrnc`, `Rfrnc_Lnk`, `Nm`, `Dscrptn`,`Rfrnc_Actn`, `Mdl_Rfrnc`, `Cndtn`, `Rmvd`, `Lckd`, `DtAdmssn`, `ChckTm`) VALUES (NULL, 4, 'Srch', 'English: Search / Spanish: Buscar',     NULL, 3, 1, 0, 0, '0001-01-01', '00:00:00');
# <.ENGLISH: 00002 - MODULE. PERSON (PRSN)[CRUD] / SPANISH: 00002 - MÓDULO. PERSONA (PRSN)[CRUD]>

# <ENGLISH: 00003 - MODULE. PRODUCT (PRDCT)[CRUD] / SPANISH: 00003 - MÓDULO. PRODUCTO (PRDCT)[CRUD]>
INSERT INTO `MIPSS_Frwdr`.`0_Actns` (`Rfrnc`, `Rfrnc_Lnk`, `Nm`, `Dscrptn`,`Rfrnc_Actn`, `Mdl_Rfrnc`, `Cndtn`, `Rmvd`, `Lckd`, `DtAdmssn`, `ChckTm`) VALUES (NULL, 1,  'Add', 'English: Add    / Spanish: Agregar',    NULL, 4, 1, 0, 0, '0001-01-01', '00:00:00');
INSERT INTO `MIPSS_Frwdr`.`0_Actns` (`Rfrnc`, `Rfrnc_Lnk`, `Nm`, `Dscrptn`,`Rfrnc_Actn`, `Mdl_Rfrnc`, `Cndtn`, `Rmvd`, `Lckd`, `DtAdmssn`, `ChckTm`) VALUES (NULL, 2, 'Updt', 'English: Update / Spanish: Actualizar', NULL, 4, 1, 0, 0, '0001-01-01', '00:00:00');
INSERT INTO `MIPSS_Frwdr`.`0_Actns` (`Rfrnc`, `Rfrnc_Lnk`, `Nm`, `Dscrptn`,`Rfrnc_Actn`, `Mdl_Rfrnc`, `Cndtn`, `Rmvd`, `Lckd`, `DtAdmssn`, `ChckTm`) VALUES (NULL, 3,  'Dlt', 'English: Delete / Spanish: Eliminar',   NULL, 4, 1, 0, 0, '0001-01-01', '00:00:00');
INSERT INTO `MIPSS_Frwdr`.`0_Actns` (`Rfrnc`, `Rfrnc_Lnk`, `Nm`, `Dscrptn`,`Rfrnc_Actn`, `Mdl_Rfrnc`, `Cndtn`, `Rmvd`, `Lckd`, `DtAdmssn`, `ChckTm`) VALUES (NULL, 4, 'Srch', 'English: Search / Spanish: Buscar',     NULL, 4, 1, 0, 0, '0001-01-01', '00:00:00');
# <.ENGLISH: 00003 - MODULE. PRODUCT (PRDCT)[CRUD] / SPANISH: 00003 - MÓDULO. PRODUCTO (PRDCT)[CRUD]>

# <ENGLISH: 00004 - MODULE. PURCHASE INVOICE (PRCHS_INVC)[CRUD] / SPANISH: 00004 - MÓDULO. FACTURA DE COMPRA (FCTR_CMPR)[CRUD]>
INSERT INTO `MIPSS_Frwdr`.`0_Actns` (`Rfrnc`, `Rfrnc_Lnk`, `Nm`, `Dscrptn`,`Rfrnc_Actn`, `Mdl_Rfrnc`, `Cndtn`, `Rmvd`, `Lckd`, `DtAdmssn`, `ChckTm`) VALUES (NULL, 1,  'Add', 'English: Add    / Spanish: Agregar',    NULL, 5, 1, 0, 0, '0001-01-01', '00:00:00');
INSERT INTO `MIPSS_Frwdr`.`0_Actns` (`Rfrnc`, `Rfrnc_Lnk`, `Nm`, `Dscrptn`,`Rfrnc_Actn`, `Mdl_Rfrnc`, `Cndtn`, `Rmvd`, `Lckd`, `DtAdmssn`, `ChckTm`) VALUES (NULL, 2, 'Updt', 'English: Update / Spanish: Actualizar', NULL, 5, 1, 0, 0, '0001-01-01', '00:00:00');
INSERT INTO `MIPSS_Frwdr`.`0_Actns` (`Rfrnc`, `Rfrnc_Lnk`, `Nm`, `Dscrptn`,`Rfrnc_Actn`, `Mdl_Rfrnc`, `Cndtn`, `Rmvd`, `Lckd`, `DtAdmssn`, `ChckTm`) VALUES (NULL, 3,  'Dlt', 'English: Delete / Spanish: Eliminar',   NULL, 5, 1, 0, 0, '0001-01-01', '00:00:00');
INSERT INTO `MIPSS_Frwdr`.`0_Actns` (`Rfrnc`, `Rfrnc_Lnk`, `Nm`, `Dscrptn`,`Rfrnc_Actn`, `Mdl_Rfrnc`, `Cndtn`, `Rmvd`, `Lckd`, `DtAdmssn`, `ChckTm`) VALUES (NULL, 4, 'Srch', 'English: Search / Spanish: Buscar',     NULL, 5, 1, 0, 0, '0001-01-01', '00:00:00');
# <.ENGLISH: 00004 - MODULE. PURCHASE INVOICE (PRCHS_INVC)[CRUD] / SPANISH: 00004 - MÓDULO. FACTURA DE COMPRA (FCTR_CMPR)[CRUD]>

# <ENGLISH: 00005 - MODULE. PURCHASED PRODUCTS (PRCHSD_PRDCTS)[CRUD] / SPANISH: 00005 - MÓDULO. PRODUCTOS COMPRADOS (PRDCTS_CMPRDS)[CRUD]>
INSERT INTO `MIPSS_Frwdr`.`0_Actns` (`Rfrnc`, `Rfrnc_Lnk`, `Nm`, `Dscrptn`,`Rfrnc_Actn`, `Mdl_Rfrnc`, `Cndtn`, `Rmvd`, `Lckd`, `DtAdmssn`, `ChckTm`) VALUES (NULL, 1,  'Add', 'English: Add    / Spanish: Agregar',    NULL, 6, 1, 0, 0, '0001-01-01', '00:00:00');
INSERT INTO `MIPSS_Frwdr`.`0_Actns` (`Rfrnc`, `Rfrnc_Lnk`, `Nm`, `Dscrptn`,`Rfrnc_Actn`, `Mdl_Rfrnc`, `Cndtn`, `Rmvd`, `Lckd`, `DtAdmssn`, `ChckTm`) VALUES (NULL, 2, 'Updt', 'English: Update / Spanish: Actualizar', NULL, 6, 1, 0, 0, '0001-01-01', '00:00:00');
INSERT INTO `MIPSS_Frwdr`.`0_Actns` (`Rfrnc`, `Rfrnc_Lnk`, `Nm`, `Dscrptn`,`Rfrnc_Actn`, `Mdl_Rfrnc`, `Cndtn`, `Rmvd`, `Lckd`, `DtAdmssn`, `ChckTm`) VALUES (NULL, 3,  'Dlt', 'English: Delete / Spanish: Eliminar',   NULL, 6, 1, 0, 0, '0001-01-01', '00:00:00');
INSERT INTO `MIPSS_Frwdr`.`0_Actns` (`Rfrnc`, `Rfrnc_Lnk`, `Nm`, `Dscrptn`,`Rfrnc_Actn`, `Mdl_Rfrnc`, `Cndtn`, `Rmvd`, `Lckd`, `DtAdmssn`, `ChckTm`) VALUES (NULL, 4, 'Srch', 'English: Search / Spanish: Buscar',     NULL, 6, 1, 0, 0, '0001-01-01', '00:00:00');
# <.ENGLISH: 00005 - MODULE. PURCHASED PRODUCTS (PRCHSD_PRDCTS)[CRUD] / SPANISH: 00005 - MÓDULO. PRODUCTOS COMPRADOS (PRDCTS_CMPRDS)[CRUD]>

# <ENGLISH: 00006 - MODULE. PRODUCTS ON SALE (PRDCTS_SL)[CRUD] / SPANISH: 00006 - MÓDULO. PRODUCTOS EN VENTAS (PRDCTS_VNTS)[CRUD]>
INSERT INTO `MIPSS_Frwdr`.`0_Actns` (`Rfrnc`, `Rfrnc_Lnk`, `Nm`, `Dscrptn`,`Rfrnc_Actn`, `Mdl_Rfrnc`, `Cndtn`, `Rmvd`, `Lckd`, `DtAdmssn`, `ChckTm`) VALUES (NULL, 1,  'Add', 'English: Add    / Spanish: Agregar',    NULL, 7, 1, 0, 0, '0001-01-01', '00:00:00');
INSERT INTO `MIPSS_Frwdr`.`0_Actns` (`Rfrnc`, `Rfrnc_Lnk`, `Nm`, `Dscrptn`,`Rfrnc_Actn`, `Mdl_Rfrnc`, `Cndtn`, `Rmvd`, `Lckd`, `DtAdmssn`, `ChckTm`) VALUES (NULL, 2, 'Updt', 'English: Update / Spanish: Actualizar', NULL, 7, 1, 0, 0, '0001-01-01', '00:00:00');
INSERT INTO `MIPSS_Frwdr`.`0_Actns` (`Rfrnc`, `Rfrnc_Lnk`, `Nm`, `Dscrptn`,`Rfrnc_Actn`, `Mdl_Rfrnc`, `Cndtn`, `Rmvd`, `Lckd`, `DtAdmssn`, `ChckTm`) VALUES (NULL, 3,  'Dlt', 'English: Delete / Spanish: Eliminar',   NULL, 7, 1, 0, 0, '0001-01-01', '00:00:00');
INSERT INTO `MIPSS_Frwdr`.`0_Actns` (`Rfrnc`, `Rfrnc_Lnk`, `Nm`, `Dscrptn`,`Rfrnc_Actn`, `Mdl_Rfrnc`, `Cndtn`, `Rmvd`, `Lckd`, `DtAdmssn`, `ChckTm`) VALUES (NULL, 4, 'Srch', 'English: Search / Spanish: Buscar',     NULL, 7, 1, 0, 0, '0001-01-01', '00:00:00');
# <.ENGLISH: 00006 - MODULE. PRODUCTS ON SALE (PRDCTS_SL)[CRUD] / SPANISH: 00006 - MÓDULO. PRODUCTOS EN VENTAS (PRDCTS_VNTS)[CRUD]>

# <ENGLISH: 00007 - MODULE. BILL OF SALE (BLL_SL)[CRUD] / SPANISH: 00007 - MÓDULO. FACTURA DE VENTA (FCTR_VNT)[CRUD]>
INSERT INTO `MIPSS_Frwdr`.`0_Actns` (`Rfrnc`, `Rfrnc_Lnk`, `Nm`, `Dscrptn`,`Rfrnc_Actn`, `Mdl_Rfrnc`, `Cndtn`, `Rmvd`, `Lckd`, `DtAdmssn`, `ChckTm`) VALUES (NULL, 1,  'Add', 'English: Add    / Spanish: Agregar',    NULL, 8, 1, 0, 0, '0001-01-01', '00:00:00');
INSERT INTO `MIPSS_Frwdr`.`0_Actns` (`Rfrnc`, `Rfrnc_Lnk`, `Nm`, `Dscrptn`,`Rfrnc_Actn`, `Mdl_Rfrnc`, `Cndtn`, `Rmvd`, `Lckd`, `DtAdmssn`, `ChckTm`) VALUES (NULL, 2, 'Updt', 'English: Update / Spanish: Actualizar', NULL, 8, 1, 0, 0, '0001-01-01', '00:00:00');
INSERT INTO `MIPSS_Frwdr`.`0_Actns` (`Rfrnc`, `Rfrnc_Lnk`, `Nm`, `Dscrptn`,`Rfrnc_Actn`, `Mdl_Rfrnc`, `Cndtn`, `Rmvd`, `Lckd`, `DtAdmssn`, `ChckTm`) VALUES (NULL, 3,  'Dlt', 'English: Delete / Spanish: Eliminar',   NULL, 8, 1, 0, 0, '0001-01-01', '00:00:00');
INSERT INTO `MIPSS_Frwdr`.`0_Actns` (`Rfrnc`, `Rfrnc_Lnk`, `Nm`, `Dscrptn`,`Rfrnc_Actn`, `Mdl_Rfrnc`, `Cndtn`, `Rmvd`, `Lckd`, `DtAdmssn`, `ChckTm`) VALUES (NULL, 4, 'Srch', 'English: Search / Spanish: Buscar',     NULL, 8, 1, 0, 0, '0001-01-01', '00:00:00');
# <.ENGLISH: 00007 - MODULE. BILL OF SALE (BLL_SL)[CRUD] / SPANISH: 00007 - MÓDULO. FACTURA DE VENTA (FCTR_VNT)[CRUD]>

# <ENGLISH: 00008 - MODULE. PURCHASE NOTE (PRCHS_NT)[CRUD] / SPANISH: 00008 - MÓDULO. NOTA DE COMPRA (NT_CMPR)[CRUD]>
INSERT INTO `MIPSS_Frwdr`.`0_Actns` (`Rfrnc`, `Rfrnc_Lnk`, `Nm`, `Dscrptn`,`Rfrnc_Actn`, `Mdl_Rfrnc`, `Cndtn`, `Rmvd`, `Lckd`, `DtAdmssn`, `ChckTm`) VALUES (NULL, 1,  'Add', 'English: Add    / Spanish: Agregar',    NULL, 9, 1, 0, 0, '0001-01-01', '00:00:00');
INSERT INTO `MIPSS_Frwdr`.`0_Actns` (`Rfrnc`, `Rfrnc_Lnk`, `Nm`, `Dscrptn`,`Rfrnc_Actn`, `Mdl_Rfrnc`, `Cndtn`, `Rmvd`, `Lckd`, `DtAdmssn`, `ChckTm`) VALUES (NULL, 2, 'Updt', 'English: Update / Spanish: Actualizar', NULL, 9, 1, 0, 0, '0001-01-01', '00:00:00');
INSERT INTO `MIPSS_Frwdr`.`0_Actns` (`Rfrnc`, `Rfrnc_Lnk`, `Nm`, `Dscrptn`,`Rfrnc_Actn`, `Mdl_Rfrnc`, `Cndtn`, `Rmvd`, `Lckd`, `DtAdmssn`, `ChckTm`) VALUES (NULL, 3,  'Dlt', 'English: Delete / Spanish: Eliminar',   NULL, 9, 1, 0, 0, '0001-01-01', '00:00:00');
INSERT INTO `MIPSS_Frwdr`.`0_Actns` (`Rfrnc`, `Rfrnc_Lnk`, `Nm`, `Dscrptn`,`Rfrnc_Actn`, `Mdl_Rfrnc`, `Cndtn`, `Rmvd`, `Lckd`, `DtAdmssn`, `ChckTm`) VALUES (NULL, 4, 'Srch', 'English: Search / Spanish: Buscar',     NULL, 9, 1, 0, 0, '0001-01-01', '00:00:00');
# <.ENGLISH: 00008 - MODULE. PURCHASE NOTE (PRCHS_NT)[CRUD] / SPANISH: 00008 - MÓDULO. NOTA DE COMPRA (NT_CMPR)[CRUD]>

# <ENGLISH: 00009 - MODULE. SALE NOTE (SL_NT)[CRUD] / SPANISH: 00009 - MÓDULO. NOTA DE VENTA (NT_VNT)[CRUD]>
INSERT INTO `MIPSS_Frwdr`.`0_Actns` (`Rfrnc`, `Rfrnc_Lnk`, `Nm`, `Dscrptn`,`Rfrnc_Actn`, `Mdl_Rfrnc`, `Cndtn`, `Rmvd`, `Lckd`, `DtAdmssn`, `ChckTm`) VALUES (NULL, 1,  'Add', 'English: Add    / Spanish: Agregar',    NULL, 10, 1, 0, 0, '0001-01-01', '00:00:00');
INSERT INTO `MIPSS_Frwdr`.`0_Actns` (`Rfrnc`, `Rfrnc_Lnk`, `Nm`, `Dscrptn`,`Rfrnc_Actn`, `Mdl_Rfrnc`, `Cndtn`, `Rmvd`, `Lckd`, `DtAdmssn`, `ChckTm`) VALUES (NULL, 2, 'Updt', 'English: Update / Spanish: Actualizar', NULL, 10, 1, 0, 0, '0001-01-01', '00:00:00');
INSERT INTO `MIPSS_Frwdr`.`0_Actns` (`Rfrnc`, `Rfrnc_Lnk`, `Nm`, `Dscrptn`,`Rfrnc_Actn`, `Mdl_Rfrnc`, `Cndtn`, `Rmvd`, `Lckd`, `DtAdmssn`, `ChckTm`) VALUES (NULL, 3,  'Dlt', 'English: Delete / Spanish: Eliminar',   NULL, 10, 1, 0, 0, '0001-01-01', '00:00:00');
INSERT INTO `MIPSS_Frwdr`.`0_Actns` (`Rfrnc`, `Rfrnc_Lnk`, `Nm`, `Dscrptn`,`Rfrnc_Actn`, `Mdl_Rfrnc`, `Cndtn`, `Rmvd`, `Lckd`, `DtAdmssn`, `ChckTm`) VALUES (NULL, 4, 'Srch', 'English: Search / Spanish: Buscar',     NULL, 10, 1, 0, 0, '0001-01-01', '00:00:00');
# <.ENGLISH: 00009 - MODULE. SALE NOTE (SL_NT)[CRUD] / SPANISH: 00009 - MÓDULO. NOTA DE VENTA (NT_VNT)[CRUD]>

# <ENGLISH: 000010 - MODULE. DELIVERY NOTE (DLVRY_NT)[CRUD]  / SPANISH: 000010 - MÓDULO. NOTA DE ENTREGA (NT_VNT)[CRUD]>
INSERT INTO `MIPSS_Frwdr`.`0_Actns` (`Rfrnc`, `Rfrnc_Lnk`, `Nm`, `Dscrptn`,`Rfrnc_Actn`, `Mdl_Rfrnc`, `Cndtn`, `Rmvd`, `Lckd`, `DtAdmssn`, `ChckTm`) VALUES (NULL, 1,  'Add', 'English: Add    / Spanish: Agregar',    NULL, 11, 1, 0, 0, '0001-01-01', '00:00:00');
INSERT INTO `MIPSS_Frwdr`.`0_Actns` (`Rfrnc`, `Rfrnc_Lnk`, `Nm`, `Dscrptn`,`Rfrnc_Actn`, `Mdl_Rfrnc`, `Cndtn`, `Rmvd`, `Lckd`, `DtAdmssn`, `ChckTm`) VALUES (NULL, 2, 'Updt', 'English: Update / Spanish: Actualizar', NULL, 11, 1, 0, 0, '0001-01-01', '00:00:00');
INSERT INTO `MIPSS_Frwdr`.`0_Actns` (`Rfrnc`, `Rfrnc_Lnk`, `Nm`, `Dscrptn`,`Rfrnc_Actn`, `Mdl_Rfrnc`, `Cndtn`, `Rmvd`, `Lckd`, `DtAdmssn`, `ChckTm`) VALUES (NULL, 3,  'Dlt', 'English: Delete / Spanish: Eliminar',   NULL, 11, 1, 0, 0, '0001-01-01', '00:00:00');
INSERT INTO `MIPSS_Frwdr`.`0_Actns` (`Rfrnc`, `Rfrnc_Lnk`, `Nm`, `Dscrptn`,`Rfrnc_Actn`, `Mdl_Rfrnc`, `Cndtn`, `Rmvd`, `Lckd`, `DtAdmssn`, `ChckTm`) VALUES (NULL, 4, 'Srch', 'English: Search / Spanish: Buscar',     NULL, 11, 1, 0, 0, '0001-01-01', '00:00:00');
# <.ENGLISH: 000010 - MODULE. DELIVERY NOTE (DLVRY_NT)[CRUD]  / SPANISH: 000010 - MÓDULO. NOTA DE ENTREGA (NT_VNT)[CRUD]>

# <.ENGLISH: ACTIONS. INSERT DATA / SPANISH: ACCIONES. INSERTAR DATOS>

# <.ENGLISH: ACTIONS / SPANISH: ACCIONES>

# <ENGLISH: MODULE / SPANISH: MÓDULOS>
CREATE TABLE IF NOT EXISTS `MIPSS_Frwdr`.`0_Mdls` (
    `Rfrnc`      INT    (255) NOT NULL AUTO_INCREMENT COMMENT 'Rfrnc        (English: Reference                          / Spanish: Referencia)',
    `Nm`         VARCHAR(20)  NOT NULL                COMMENT 'Nm           (English: Name                               / Spanish: Nombre)',
    `Dscrptn`    TEXT         NOT NULL                COMMENT 'Dscrptn      (English: Description                        / Spanish: Descripción)',
    `Mdl_Rfrnc`  INT    (255)     NULL                COMMENT 'Mdl_Rfrnc    (English: Module. Reference                  / English: Referencia. Módulo)', 
    `Cndtn`      INT    (2)   NOT NULL                COMMENT 'Cndtn        (English: Condition [0: Inactive, 1: Active] / Spanish: Estado [0: Inactivo, 1: Activo])',
    `Rmvd`       INT    (2)   NOT NULL                COMMENT 'Rmvd         (English: Removed [0: Inactive, 1: Active]   / Spanish: Eliminado [0: Inactivo, 1: Activo])',
    `Lckd`       INT    (2)   NOT NULL                COMMENT 'Lckd         (English: Locked [0: Inactive, 1: Active]    / Spanish: Bloqueado [0: Inactivo, 1: Activo])',
    `DtAdmssn`   DATE             NULL                COMMENT 'DtAdmssn     (English: Date of Admission                  / Spanish: Fecha de Ingreso)',
    `ChckTm`     TIME             NULL                COMMENT 'ChckTm       (English: Check In Time                      / Spanish: Hora de Ingreso)', 
    PRIMARY KEY (`Rfrnc`)
) ENGINE='MyISAM' DEFAULT CHARSET='utf8' COLLATE='utf8_bin' COMMENT='0_Mdls (English: 0 - Modules / Spanish: 0 - Módulos)';

# <ENGLISH: MODULES. INSERT DATA / SPANISH: MÓDULOS. INSERTAR DATOS>
INSERT INTO `MIPSS_Frwdr`.`0_Mdls` (`Rfrnc`, `Nm`, `Dscrptn`, `Mdl_Rfrnc`, `Cndtn`, `Rmvd`, `Lckd`, `DtAdmssn`, `ChckTm`) VALUES (NULL,          'Usrs', 'English: Users              / Spanish: Usuarios',            NULL, 1, 0, 0, '0001-01-01', '00:00:00');
INSERT INTO `MIPSS_Frwdr`.`0_Mdls` (`Rfrnc`, `Nm`, `Dscrptn`, `Mdl_Rfrnc`, `Cndtn`, `Rmvd`, `Lckd`, `DtAdmssn`, `ChckTm`) VALUES (NULL,        'TypUsr', 'English: Type of User       / Spanish: Tipo de Usuario',     NULL, 1, 0, 0, '0001-01-01', '00:00:00');
INSERT INTO `MIPSS_Frwdr`.`0_Mdls` (`Rfrnc`, `Nm`, `Dscrptn`, `Mdl_Rfrnc`, `Cndtn`, `Rmvd`, `Lckd`, `DtAdmssn`, `ChckTm`) VALUES (NULL,          'Prsn', 'English: Person             / Spanish: Persona',             NULL, 1, 0, 0, '0001-01-01', '00:00:00');
INSERT INTO `MIPSS_Frwdr`.`0_Mdls` (`Rfrnc`, `Nm`, `Dscrptn`, `Mdl_Rfrnc`, `Cndtn`, `Rmvd`, `Lckd`, `DtAdmssn`, `ChckTm`) VALUES (NULL,         'Prdct', 'English: Product            / Spanish: Producto',            NULL, 1, 0, 0, '0001-01-01', '00:00:00');
INSERT INTO `MIPSS_Frwdr`.`0_Mdls` (`Rfrnc`, `Nm`, `Dscrptn`, `Mdl_Rfrnc`, `Cndtn`, `Rmvd`, `Lckd`, `DtAdmssn`, `ChckTm`) VALUES (NULL,    'Prchs_Invc', 'English: Purchase Invoice   / Spanish: Factura de Compra',   NULL, 1, 0, 0, '0001-01-01', '00:00:00');
INSERT INTO `MIPSS_Frwdr`.`0_Mdls` (`Rfrnc`, `Nm`, `Dscrptn`, `Mdl_Rfrnc`, `Cndtn`, `Rmvd`, `Lckd`, `DtAdmssn`, `ChckTm`) VALUES (NULL, 'Prchsd_Prdcts', 'English: Purchased Products / Spanish: Productos Comprados', NULL, 1, 0, 0, '0001-01-01', '00:00:00');
INSERT INTO `MIPSS_Frwdr`.`0_Mdls` (`Rfrnc`, `Nm`, `Dscrptn`, `Mdl_Rfrnc`, `Cndtn`, `Rmvd`, `Lckd`, `DtAdmssn`, `ChckTm`) VALUES (NULL,     'Prdcts_Sl', 'English: Products on Sale   / Spanish: Productos en Ventas', NULL, 1, 0, 0, '0001-01-01', '00:00:00');
INSERT INTO `MIPSS_Frwdr`.`0_Mdls` (`Rfrnc`, `Nm`, `Dscrptn`, `Mdl_Rfrnc`, `Cndtn`, `Rmvd`, `Lckd`, `DtAdmssn`, `ChckTm`) VALUES (NULL,        'Bll_Sl', 'English: Bill of Sale       / Spanish: Factura de Ventas',   NULL, 1, 0, 0, '0001-01-01', '00:00:00');
INSERT INTO `MIPSS_Frwdr`.`0_Mdls` (`Rfrnc`, `Nm`, `Dscrptn`, `Mdl_Rfrnc`, `Cndtn`, `Rmvd`, `Lckd`, `DtAdmssn`, `ChckTm`) VALUES (NULL,      'Prchs_Nt', 'English: Purchase Note      / Spanish: Nota de Compra',      NULL, 1, 0, 0, '0001-01-01', '00:00:00');
INSERT INTO `MIPSS_Frwdr`.`0_Mdls` (`Rfrnc`, `Nm`, `Dscrptn`, `Mdl_Rfrnc`, `Cndtn`, `Rmvd`, `Lckd`, `DtAdmssn`, `ChckTm`) VALUES (NULL,         'Sl_Nt', 'English: Sale Note          / Spanish: Nota de Venta',       NULL, 1, 0, 0, '0001-01-01', '00:00:00');
INSERT INTO `MIPSS_Frwdr`.`0_Mdls` (`Rfrnc`, `Nm`, `Dscrptn`, `Mdl_Rfrnc`, `Cndtn`, `Rmvd`, `Lckd`, `DtAdmssn`, `ChckTm`) VALUES (NULL,      'Dlvry_Nt', 'English: Delivery Note      / Spanish: Nota de Entrega',     NULL, 1, 0, 0, '0001-01-01', '00:00:00');
# <.ENGLISH: MODULES. INSERT DATA / SPANISH: MÓDULOS. INSERTAR DATOS>

# <.ENGLISH: MODULE / SPANISH: MÓDULOS>

# --------- </ENGLISH: MODULE. USERS / SPANISH: MÓDULO. USUARIOS> ----------- #

# --------- <ENGLISH: MODULE. PEOPLE / SPANISH: MÓDULO. PERSONAS> ----------- #

# <ENGLISH: MASTER TABLE / SPANISH: TABLA MAESTRA>
# <ENGLISH: PERSON / SPANISH: PERSONAS>
CREATE TABLE IF NOT EXISTS `MIPSS_Frwdr`.`0_Prsn` (
    `Rfrnc`         INT(255) NOT NULL AUTO_INCREMENT COMMENT 'Rfrnc         (English: Reference                                                                      / Spanish: Referencia)',
    `Rfrnc_Prsn`    INT(255) NOT NULL                COMMENT 'Rfrnc_Prsn    (English: Reference. Person [Natural Persons (0_NtrlPrsns) U Legal Persons (0_LglPrsns)] / Spanish: Referencia. Persona [Personas Naturales (0_NtrlPrsns) U Personas Jurídicas (0_LglPrsns)])',
    `Rfrnc_TypPrsn` INT(2)   NOT NULL                COMMENT 'Rfrnc_TypPrsn (English: Reference. Type of Person                                                      / Spanish: Referencia. Tipo de Persona)',    
    `Cndtn`         INT(2)   NOT NULL                COMMENT 'Cndtn         (English: Condition [0: Inactive, 1: Active]                                             / Spanish: Estado              [0: Inactivo, 1: Activo])',
    `Rmvd`          INT(2)   NOT NULL                COMMENT 'Rmvd          (English: Removed [0: Inactive, 1: Active]                                               / Spanish: Eliminado           [0: Inactivo, 1: Activo])',
    `Lckd`          INT(2)   NOT NULL                COMMENT 'Lckd          (English: Locked [0: Inactive, 1: Active]                                                / Spanish: Bloqueado           [0: Inactivo, 1: Activo])',
    `DtAdmssn`      DATE         NULL                COMMENT 'DtAdmssn      (English: Date of Admission                                                              / Spanish: Fecha de Ingreso)',
    `ChckTm`        TIME         NULL                COMMENT 'ChckTm        (English: Check In Time                                                                  / Spanish: Hora de Ingreso)', 
    PRIMARY KEY (`Rfrnc`)
) ENGINE='MyISAM' DEFAULT CHARSET='utf8' COLLATE='utf8_bin' COMMENT='0_Prsn (English: 0 - Person / Spanish: 0 - Personas)';
# <.ENGLISH: PERSON / SPANISH: PERSONAS>
# <.ENGLISH: MASTER TABLE / SPANISH: TABLA MAESTRA>

# <ENGLISH: MASTER TABLE / SPANISH: TABLA MAESTRA>
# <ENGLISH: TYPES OF PERSON/ SPANISH: TIPOS DE PERSONAS>
CREATE TABLE IF NOT EXISTS `MIPSS_Frwdr`.`0_TypsPrsns` (
    `Rfrnc`           INT    (255) NOT NULL AUTO_INCREMENT COMMENT 'Rfrnc           (English: Reference                          / Spanish: Referencia)',
    `Nm`              VARCHAR(255) NOT NULL                COMMENT 'Nm              (English: Name                               / Spanish: Nombre)',
    `Dscrptn`         VARCHAR(60)  NOT NULL                COMMENT 'Dscrptn         (English: Description                        / Spanish: Descripción)',
    `Rfrnc_TypsPrsns` INT    (255)     NULL                COMMENT 'Rfrnc_TtpsPrsns (English: Reference. Types of Person         / Spanish: Referencia. Tipos de Personas)',   
    `Cndtn`           INT    (2)   NOT NULL                COMMENT 'Cndtn           (English: Condition [0: Inactive, 1: Active] / Spanish: Estado              [0: Inactivo, 1: Activo])',
    `Rmvd`            INT    (2)   NOT NULL                COMMENT 'Rmvd            (English: Removed   [0: Inactive, 1: Active] / Spanish: Eliminado           [0: Inactivo, 1: Activo])',
    `Lckd`            INT    (2)   NOT NULL                COMMENT 'Lckd            (English: Locked    [0: Inactive, 1: Active] / Spanish: Bloqueado           [0: Inactivo, 1: Activo])',
    `DtAdmssn`        DATE             NULL                COMMENT 'DtAdmssn        (English: Date of Admission                  / Spanish: Fecha de Ingreso)',
    `ChckTm`          TIME             NULL                COMMENT 'ChckTm          (English: Check In Time                      / Spanish: Hora de Ingreso)', 
    PRIMARY KEY (`Rfrnc`)
) ENGINE='MyISAM' DEFAULT CHARSET='utf8' COLLATE='utf8_bin' COMMENT='0_TypsPrsns (English: 0 - Types of Person/ Spanish: 0 - Tipos de Personas)';
# <.ENGLISH: TYPES OF PERSON/ SPANISH: TIPOS DE PERSONAS>

# <TIPOS DE PERSONAS: INSERTAR DATOS>
INSERT INTO `MIPSS_Frwdr`.`0_TypsPrsns` (`Rfrnc`, `Nm`, `Dscrptn`, `Rfrnc_TypsPrsns`, `Cndtn`, `Rmvd`, `Lckd`, `DtAdmssn`, `ChckTm`) VALUES (NULL, 'Ntrl' , 'English: Natural  / Spanish: Natural'  , NULL, 1, 0, 0, "0001-01-01", "00:00:00");
INSERT INTO `MIPSS_Frwdr`.`0_TypsPrsns` (`Rfrnc`, `Nm`, `Dscrptn`, `Rfrnc_TypsPrsns`, `Cndtn`, `Rmvd`, `Lckd`, `DtAdmssn`, `ChckTm`) VALUES (NULL, 'Lgl'  , 'English: Legal    / Spanish: Juridico' , NULL, 1, 0, 0, "0001-01-01", "00:00:00");
INSERT INTO `MIPSS_Frwdr`.`0_TypsPrsns` (`Rfrnc`, `Nm`, `Dscrptn`, `Rfrnc_TypsPrsns`, `Cndtn`, `Rmvd`, `Lckd`, `DtAdmssn`, `ChckTm`) VALUES (NULL, 'Prvdr', 'English: Provider / Spanish: Proveedor',    1, 1, 0, 0, "0001-01-01", "00:00:00");
INSERT INTO `MIPSS_Frwdr`.`0_TypsPrsns` (`Rfrnc`, `Nm`, `Dscrptn`, `Rfrnc_TypsPrsns`, `Cndtn`, `Rmvd`, `Lckd`, `DtAdmssn`, `ChckTm`) VALUES (NULL, 'Cstmr', 'English: Customer / Spanish: Cliente'  ,    1, 1, 0, 0, "0001-01-01", "00:00:00");
INSERT INTO `MIPSS_Frwdr`.`0_TypsPrsns` (`Rfrnc`, `Nm`, `Dscrptn`, `Rfrnc_TypsPrsns`, `Cndtn`, `Rmvd`, `Lckd`, `DtAdmssn`, `ChckTm`) VALUES (NULL, 'Prvdr', 'English: Provider / Spanish: Proveedor',    2, 1, 0, 0, "0001-01-01", "00:00:00");
INSERT INTO `MIPSS_Frwdr`.`0_TypsPrsns` (`Rfrnc`, `Nm`, `Dscrptn`, `Rfrnc_TypsPrsns`, `Cndtn`, `Rmvd`, `Lckd`, `DtAdmssn`, `ChckTm`) VALUES (NULL, 'Cstmr', 'English: Customer / Spanish: Cliente'  ,    2, 1, 0, 0, "0001-01-01", "00:00:00");
# </TIPOS DE PERSONAS: INSERTAR DATOS>
# <.ENGLISH: MASTER TABLE / SPANISH: TABLA MAESTRA>

# <ENGLISH: MASTER TABLE / SPANISH: TABLA MAESTRA>
# <ENGLISH: CLASSIFICATION OF PERSON/ SPANISH: CLASIFICACIÓN DE PERSONAS>
# Rfrnc_TypsPrsn > Rfrnc_TypsPrsn [0_TypsPrsn]
CREATE TABLE IF NOT EXISTS `MIPSS_Frwdr`.`0_ClsfctnPrsn` (
    `Rfrnc`          INT(255) NOT NULL AUTO_INCREMENT  COMMENT 'Rfrnc           (English: Reference                                                                                                                             / Spanish: Referencia)',
    `Rfrnc_Prsn`     INT(255) NOT NULL                 COMMENT 'Rfrnc_Prsn      (English: Reference. Person [0_Prsn]                                                                                                            / Spanish: Referencia. Persona [0_Prsn])',
    `Rfrnc_TpsPrsns` INT(255) NOT NULL                 COMMENT 'Rfrnc_TpsPrsns  (English: Reference. Types of Person [1: Naturale - {3: Provider, 4: Customer} | 2: Legal - {5: Providor, 5: Customer}]                         / Spanish: Referencia. Tipos de Personas [1: Natural - {3: Proveedor, 4: Cliente} | 2: Jurídico - {5: Proveedor, 6: Cliente}])',
    `Cndtn`          INT  (2) NOT NULL                 COMMENT 'Cndtn           (English: Condition                  [0: Inactive, 1: Active]                                                                                   / Spanish: Estado                        [0: Inactivo, 1: Activo])',
    `Rmvd`           INT  (2) NOT NULL                 COMMENT 'Rmvd            (English: Removed                    [0: Inactive, 1: Active]                                                                                   / Spanish: Eliminado                     [0: Inactivo, 1: Activo])',
    `Lckd`           INT  (2) NOT NULL                 COMMENT 'Lckd            (English: Locked                     [0: Inactive, 1: Active]                                                                                   / Spanish: Bloqueado                     [0: Inactivo, 1: Activo])',
    `DtAdmssn`       DATE         NULL                 COMMENT 'DtAdmssn        (English: Date of Admission                                                                                                                     / Spanish: Fecha de Ingreso)',
    `ChckTm`         TIME         NULL                 COMMENT 'ChckTm          (English: Check In Time                                                                                                                         / Spanish: Hora de Ingreso)', 
    PRIMARY KEY (`Rfrnc`)
) ENGINE='MyISAM' DEFAULT CHARSET='utf8' COLLATE='utf8_bin' COMMENT='0_ClsfctnPrsn (English: Classification of person [00: Provider, 01: Customer] / Spanish 0 - Clasificación de Personas [00: Proveedor, 01: Cliente])';
# <.ENGLISH: CLASSIFICATION OF PERSON/ SPANISH: CLASIFICACIÓN DE PERSONAS>
# <.ENGLISH: MASTER TABLE / SPANISH: TABLA MAESTRA>

# <ENGLISH: NATURAL PERSON / SPANISH: PERSONAS NATURALES>
CREATE TABLE IF NOT EXISTS `MIPSS_Frwdr`.`0_NtrlPrsn` (
    `Rfrnc`         INT    (255) NOT NULL AUTO_INCREMENT COMMENT 'Rfrnc         (English: Reference                          / Spanish: Referencia)',
    `Rfrnc_Ncnlty`  INT    (255) NOT NULL                COMMENT 'Rfrnc_Ncnlty  (English: Reference. Nacionality             / Spanish: Referencia. Nacionalidad)',
    `Rfrnc_Cntry`   INT    (255) NOT NULL                COMMENT 'Rfrnc_Cntry   (English: Reference. Country                 / Spanish: Referencia. Pais)',
    `IdntfctnDcmnt` VARCHAR(45)  NOT NULL                COMMENT 'IdntfctnDcmnt (English: Identification Document            / Spanish: Documento de Idetentidad)',
    `Nms`           VARCHAR(35)  NOT NULL                COMMENT 'Nms           (English: Names                              / Spanish: Nombres)',
    `Srnms`         VARCHAR(35)  NOT NULL                COMMENT 'Srnms         (English: Surnames                           / Spanish: Apellidos)',
    `RfrntlPhnNmbr` VARCHAR(20)  NOT NULL                COMMENT 'RfrntlPhnNmbr (English: Referential Phone Number           / Spanish: Número de Teléfono Referencial)',
    `TxAddrss`      TEXT         NOT NULL                COMMENT 'TxAddrss      (English: Tax Address                        / Spanish: Domicilio Fiscal)',
    `Cndtn`         INT    (2)   NOT NULL                COMMENT 'Cndtn         (English: Condition [0: Inactive, 1: Active] / Spanish: Estado    [0: Inactivo, 1: Activo])',
    `Rmvd`          INT    (2)   NOT NULL                COMMENT 'Rmvd          (English: Removed   [0: Inactive, 1: Active] / Spanish: Eliminado [0: Inactivo, 1: Activo])',
    `Lckd`          INT    (2)   NOT NULL                COMMENT 'Lckd          (English: Locked    [0: Inactive, 1: Active] / Spanish: Bloqueado [0: Inactivo, 1: Activo])',
    `DtAdmssn`      DATE             NULL                COMMENT 'DtAdmssn      (English: Date of Admission                  / Spanish: Fecha de Ingreso)',
    `ChckTm`        TIME             NULL                COMMENT 'ChckTm        (English: Check In Time                      / Spanish: Hora de Ingreso)', 
    PRIMARY KEY (`Rfrnc`)
) ENGINE='MyISAM' DEFAULT CHARSET='utf8' COLLATE='utf8_bin' COMMENT='0_NtrlPrsn (English: 0 - Natural Person / Spanish: 0 - Personas Naturales)';
# <.ENGLISH: NATURAL PERSON / SPANISH: PERSONAS NATURALES>

# <ENGLISH: LEGAL PERSONS / SPANISH: PERSONAS JURÍDICAS>
CREATE TABLE IF NOT EXISTS `MIPSS_Frwdr`.`0_LglPrsns` (
    `Rfrnc`         INT    (255) NOT NULL AUTO_INCREMENT COMMENT 'Rfrnc         (English: Reference                          / Spanish: Referencia)',
    `Rfrnc_Ncnlty`  INT    (255) NOT NULL                COMMENT 'Rfrnc_Ncnlty  (English: Reference. Nacionality             / Spanish: Referencia. Nacionalidad)',
    `Rfrnc_Cntry`   INT    (255) NOT NULL                COMMENT 'Rfrnc_Cntry   (English: Reference. Country                 / Spanish: Referencia. Pais)',
    `TxIdntfctn`    VARCHAR(45)  NOT NULL                COMMENT 'TxIdntfctn    (English: Tax Identification                 / Spanish: Identificación Tributario)',
    `RfrntlPhnNmbr` VARCHAR(20)  NOT NULL                COMMENT 'RfrntlPhnNmbr (English: Referential Phone Number           / Spanish: Número de Teléfono Referencial)',
    `TxAddrss`      TEXT         NOT NULL                COMMENT 'TxAddrss      (English: Tax Address                        / Spanish: Domicilio Fiscal)',
    `Cndtn`         INT    (2)   NOT NULL                COMMENT 'Cndtn         (English: Condition [0: Inactive, 1: Active] / Spanish: Estado    [0: Inactivo, 1: Activo])',
    `Rmvd`          INT    (2)   NOT NULL                COMMENT 'Rmvd          (English: Removed   [0: Inactive, 1: Active] / Spanish: Eliminado [0: Inactivo, 1: Activo])',
    `Lckd`          INT    (2)   NOT NULL                COMMENT 'Lckd          (English: Locked    [0: Inactive, 1: Active] / Spanish: Bloqueado [0: Inactivo, 1: Activo])',
    `DtAdmssn`      DATE             NULL                COMMENT 'DtAdmssn      (English: Date of Admission                  / Spanish: Fecha de Ingreso)',
    `ChckTm`        TIME             NULL                COMMENT 'ChckTm        (English: Check In Time                      / Spanish: Hora de Ingreso)', 
    PRIMARY KEY (`Rfrnc`)
) ENGINE='MyISAM' DEFAULT CHARSET='utf8' COLLATE='utf8_bin' COMMENT='0_LglPrsns (English: Legal Persons / Spanish: 0 - Personas Jurídicas)';
# <.ENGLISH: LEGAL PERSONS / SPANISH: PERSONAS JURÍDICAS>

# --------- <.ENGLISH: MODULE. PERSONS / SPANISH: MÓDULO: PERSONAS> ----------- #

# <ENGLISH: MASTER TABLE / SPANISH: TABLA MAESTRA>
# <ENGLISH: DOCUMENTS / SPANISH: DOCUMENTOS>
# Rfrnc_Dcmnts > Rfrnc [0_Dcmnts]
# Enlc_Dcmnts > Rfrnc_Dcmnts [0_Dcmnts]
CREATE TABLE IF NOT EXISTS `MIPSS_Frwdr`.`0_Dcmnts` (
    `Rfrnc`        INT    (255) NOT NULL AUTO_INCREMENT COMMENT 'Rfrnc        (English: Reference                          / Spanish: Referencia)',
    `Nm`           VARCHAR(20)  NOT NULL                COMMENT 'Nm           (English: Name                               / Spanish: Nombre)',
    `Dscrptn`      TEXT         NOT NULL                COMMENT 'Dscrptn      (English: Description                        / Spanish: Descripción)',
    `Rfrnc_Dcmnts` INT    (255)     NULL                COMMENT 'Rfrnc_Dcmnts (English: Reference. Documents               / Spanish: Referencia. Documentos)',
    `Lnk_Dcmnts`   INT    (255)     NULL                COMMENT 'Lnk_Dcmnts   (English: Link. Documents                    / Spanish: Enlace. Documentos)',
    `Cndtn`        INT    (2)   NOT NULL                COMMENT 'Cndtn        (English: Condition [0: Inactive, 1: Active] / Spanish: Estado    [0: Inactivo, 1: Activo])',
    `Rmvd`         INT    (2)   NOT NULL                COMMENT 'Rmvd         (English: Removed   [0: Inactive, 1: Active] / Spanish: Eliminado [0: Inactivo, 1: Activo])',
    `Lckd`         INT    (2)   NOT NULL                COMMENT 'Lckd         (English: Locked    [0: Inactive, 1: Active] / Spanish: Bloqueado [0: Inactivo, 1: Activo])',
    `DtAdmssn`     DATE             NULL                COMMENT 'DtAdmssn     (English: Date of Admission                  / Spanish: Fecha de Ingreso)',
    `ChckTm`       TIME             NULL                COMMENT 'ChckTm       (English: Check In Time                      / Spanish: Hora de Ingreso)', 
    PRIMARY KEY (`Rfrnc`)
) ENGINE='MyISAM' DEFAULT CHARSET='utf8' COLLATE='utf8_bin' COMMENT='0_Dcmnts (English: 0 - Documents / Spanish: 0 - Documentos)';
# <.ENGLISH: DOCUMENTS / SPANISH: DOCUMENTOS>

# <ENGLISH: DOCUMENTS. INSERT DATA / SPANISH: DOCUMENTOS. INSERTAR DATOS>
INSERT INTO `MIPSS_Frwdr`.`0_Dcmnts` (`Rfrnc`, `Nm`, `Dscrptn`, `Rfrnc_Dcmnts`, `Lnk_Dcmnts`, `Cndtn`, `Rmvd`, `Lckd`, `DtAdmssn`, `ChckTm`) VALUES (NULL, 'Accntng', 'English: Accounting     / Spanish: Contables'     , NULL, NULL, 1, 0, 0, '0001-01-01', '00:00:00');
INSERT INTO `MIPSS_Frwdr`.`0_Dcmnts` (`Rfrnc`, `Nm`, `Dscrptn`, `Rfrnc_Dcmnts`, `Lnk_Dcmnts`, `Cndtn`, `Rmvd`, `Lckd`, `DtAdmssn`, `ChckTm`) VALUES (NULL, 'Mrcntl' , 'English: Mercantile     / Spanish: Mercantiles'   ,    1, NULL, 1, 0, 0, '0001-01-01', '00:00:00');
INSERT INTO `MIPSS_Frwdr`.`0_Dcmnts` (`Rfrnc`, `Nm`, `Dscrptn`, `Rfrnc_Dcmnts`, `Lnk_Dcmnts`, `Cndtn`, `Rmvd`, `Lckd`, `DtAdmssn`, `ChckTm`) VALUES (NULL, 'Extrnl' , 'English: External       / Spanish: Externos'      ,    1, NULL, 1, 0, 0, '0001-01-01', '00:00:00');
INSERT INTO `MIPSS_Frwdr`.`0_Dcmnts` (`Rfrnc`, `Nm`, `Dscrptn`, `Rfrnc_Dcmnts`, `Lnk_Dcmnts`, `Cndtn`, `Rmvd`, `Lckd`, `DtAdmssn`, `ChckTm`) VALUES (NULL, 'Intrnl' , 'English: Internal       / Spanish: Internos'      ,    1, NULL, 1, 0, 0, '0001-01-01', '00:00:00');
INSERT INTO `MIPSS_Frwdr`.`0_Dcmnts` (`Rfrnc`, `Nm`, `Dscrptn`, `Rfrnc_Dcmnts`, `Lnk_Dcmnts`, `Cndtn`, `Rmvd`, `Lckd`, `DtAdmssn`, `ChckTm`) VALUES (NULL, 'Ngtbl'  , 'English: Negotiable     / Spanish: Negociables'   ,    2,    3, 1, 0, 0, '0001-01-01', '00:00:00');
INSERT INTO `MIPSS_Frwdr`.`0_Dcmnts` (`Rfrnc`, `Nm`, `Dscrptn`, `Rfrnc_Dcmnts`, `Lnk_Dcmnts`, `Cndtn`, `Rmvd`, `Lckd`, `DtAdmssn`, `ChckTm`) VALUES (NULL, 'NtNgtbl', 'English: Not Negotiable / Spanish: No Negociables',    2,    4, 1, 0, 0, '0001-01-01', '00:00:00');

# <English: Documents. Negotiable / Spanish: Documentos. Negociables>
INSERT INTO `MIPSS_Frwdr`.`0_Dcmnts` (`Rfrnc`, `Nm`, `Dscrptn`, `Rfrnc_Dcmnts`, `Lnk_Dcmnts`, `Cndtn`, `Rmvd`, `Lckd`, `DtAdmssn`, `ChckTm`) VALUES (NULL, 'BllExchng' , 'English: Bill of Exchange / Spanish: Letra de Cambio', 5,    3, 1, 0, 0, '0001-01-01', '00:00:00');
INSERT INTO `MIPSS_Frwdr`.`0_Dcmnts` (`Rfrnc`, `Nm`, `Dscrptn`, `Rfrnc_Dcmnts`, `Lnk_Dcmnts`, `Cndtn`, `Rmvd`, `Lckd`, `DtAdmssn`, `ChckTm`) VALUES (NULL, 'PrmssryNts', 'English: Promissory Notes / Spanish: Pagarés'        , 5,    4, 1, 0, 0, '0001-01-01', '00:00:00');
INSERT INTO `MIPSS_Frwdr`.`0_Dcmnts` (`Rfrnc`, `Nm`, `Dscrptn`, `Rfrnc_Dcmnts`, `Lnk_Dcmnts`, `Cndtn`, `Rmvd`, `Lckd`, `DtAdmssn`, `ChckTm`) VALUES (NULL, 'Chcks'     , 'English: Checks           / Spanish: Cheques'        , 5,    4, 1, 0, 0, '0001-01-01', '00:00:00');
INSERT INTO `MIPSS_Frwdr`.`0_Dcmnts` (`Rfrnc`, `Nm`, `Dscrptn`, `Rfrnc_Dcmnts`, `Lnk_Dcmnts`, `Cndtn`, `Rmvd`, `Lckd`, `DtAdmssn`, `ChckTm`) VALUES (NULL, 'OrdrSht'   , 'English: Order Sheet      / Spanish: Hoja de Pedidos', 5, NULL, 1, 0, 0, '0001-01-01', '00:00:00');
# <.English: Documents. Negotiable / Spanish: Documentos. Negociables>

# <English: Documents. Not Negotiable / Spanish: Documentos. No Negociables>
INSERT INTO `MIPSS_Frwdr`.`0_Dcmnts` (`Rfrnc`, `Nm`, `Dscrptn`, `Rfrnc_Dcmnts`, `Lnk_Dcmnts`, `Cndtn`, `Rmvd`, `Lckd`, `DtAdmssn`, `ChckTm`) VALUES (NULL, 'Rcpts'           , 'English: Receipts                  / Spanish: Recibos'                         , 6 , 4, 1, 0, 0, '0001-01-01', '00:00:00');
INSERT INTO `MIPSS_Frwdr`.`0_Dcmnts` (`Rfrnc`, `Nm`, `Dscrptn`, `Rfrnc_Dcmnts`, `Lnk_Dcmnts`, `Cndtn`, `Rmvd`, `Lckd`, `DtAdmssn`, `ChckTm`) VALUES (NULL, 'CshRgstrRcpts'   , 'English: Cash Register Receipts    / Spanish: Recibos de Caja'                 , 11, 4, 1, 0, 0, '0001-01-01', '00:00:00');
INSERT INTO `MIPSS_Frwdr`.`0_Dcmnts` (`Rfrnc`, `Nm`, `Dscrptn`, `Rfrnc_Dcmnts`, `Lnk_Dcmnts`, `Cndtn`, `Rmvd`, `Lckd`, `DtAdmssn`, `ChckTm`) VALUES (NULL, 'BnkCnsgnmntRcpts', 'English: Bank Consignment Receipts / Spanish: Recibos de Consignación Bancaria', 11, 4, 1, 0, 0, '0001-01-01', '00:00:00');
INSERT INTO `MIPSS_Frwdr`.`0_Dcmnts` (`Rfrnc`, `Nm`, `Dscrptn`, `Rfrnc_Dcmnts`, `Lnk_Dcmnts`, `Cndtn`, `Rmvd`, `Lckd`, `DtAdmssn`, `ChckTm`) VALUES (NULL, 'BnkCnsgnmntRcpts', 'English: Bank Consignment Receipts / Spanish: Recibos de Consignación Bancaria', 11, 4, 1, 0, 0, '0001-01-01', '00:00:00');

INSERT INTO `MIPSS_Frwdr`.`0_Dcmnts` (`Rfrnc`, `Nm`, `Dscrptn`, `Rfrnc_Dcmnts`, `Lnk_Dcmnts`, `Cndtn`, `Rmvd`, `Lckd`, `DtAdmssn`, `ChckTm`) VALUES (NULL, 'Invcs'           , 'English: Invoices         / Spanish: Facturas'         ,  6, 4, 1, 0, 0, '0001-01-01', '00:00:00');
INSERT INTO `MIPSS_Frwdr`.`0_Dcmnts` (`Rfrnc`, `Nm`, `Dscrptn`, `Rfrnc_Dcmnts`, `Lnk_Dcmnts`, `Cndtn`, `Rmvd`, `Lckd`, `DtAdmssn`, `ChckTm`) VALUES (NULL, 'PrchsInvc'       , 'English: Purchase Invoice / Spanish: Factura de Compra', 15, 4, 1, 0, 0, '0001-01-01', '00:00:00');
INSERT INTO `MIPSS_Frwdr`.`0_Dcmnts` (`Rfrnc`, `Nm`, `Dscrptn`, `Rfrnc_Dcmnts`, `Lnk_Dcmnts`, `Cndtn`, `Rmvd`, `Lckd`, `DtAdmssn`, `ChckTm`) VALUES (NULL, 'SlsInvc'         , 'English: Sales Invoice    / Spanish: Factura de Venta' , 15, 4, 1, 0, 0, '0001-01-01', '00:00:00');

INSERT INTO `MIPSS_Frwdr`.`0_Dcmnts` (`Rfrnc`, `Nm`, `Dscrptn`, `Rfrnc_Dcmnts`, `Lnk_Dcmnts`, `Cndtn`, `Rmvd`, `Lckd`, `DtAdmssn`, `ChckTm`) VALUES (NULL, 'Vchrs'           , 'English: Vouchers / Spanish: Vales', 6, 4, 1, 0, 0, '0001-01-01', '00:00:00');

INSERT INTO `MIPSS_Frwdr`.`0_Dcmnts` (`Rfrnc`, `Nm`, `Dscrptn`, `Rfrnc_Dcmnts`, `Lnk_Dcmnts`, `Cndtn`, `Rmvd`, `Lckd`, `DtAdmssn`, `ChckTm`) VALUES (NULL, 'RemissnNts'      , 'English: Remission Notes / Spanish: Nota de Remisión', 6, 4, 1, 0, 0, '0001-01-01', '00:00:00');

INSERT INTO `MIPSS_Frwdr`.`0_Dcmnts` (`Rfrnc`, `Nm`, `Dscrptn`, `Rfrnc_Dcmnts`, `Lnk_Dcmnts`, `Cndtn`, `Rmvd`, `Lckd`, `DtAdmssn`, `ChckTm`) VALUES (NULL, 'PymntNt'         , 'English: Payment Note / Spanish: Nota de Abono', 6, 4, 1, 0, 0, '0001-01-01', '00:00:00');

INSERT INTO `MIPSS_Frwdr`.`0_Dcmnts` (`Rfrnc`, `Nm`, `Dscrptn`, `Rfrnc_Dcmnts`, `Lnk_Dcmnts`, `Cndtn`, `Rmvd`, `Lckd`, `DtAdmssn`, `ChckTm`) VALUES (NULL, 'CrdtNt-ChrgNt'   , 'English: Credit Note or Charge Note / Spanish: Nota de Crédito ó Nota de Cargo', 6, 4, 1, 0, 0, '0001-01-01', '00:00:00');

INSERT INTO `MIPSS_Frwdr`.`0_Dcmnts` (`Rfrnc`, `Nm`, `Dscrptn`, `Rfrnc_Dcmnts`, `Lnk_Dcmnts`, `Cndtn`, `Rmvd`, `Lckd`, `DtAdmssn`, `ChckTm`) VALUES (NULL, 'PckngSlps'       , 'English: Packing Slips / Spanish: Albaranes'      ,  6,    4, 1, 0, 0, '0001-01-01', '00:00:00');
INSERT INTO `MIPSS_Frwdr`.`0_Dcmnts` (`Rfrnc`, `Nm`, `Dscrptn`, `Rfrnc_Dcmnts`, `Lnk_Dcmnts`, `Cndtn`, `Rmvd`, `Lckd`, `DtAdmssn`, `ChckTm`) VALUES (NULL, 'DlvryNt'         , 'English: Delivery Note / Spanish: Nota de Entrega', 22, NULL, 1, 0, 0, '0001-01-01', '00:00:00');
# <.English: Documents. Not Negotiable / Spanish: Documentos. No Negociables>

# <.ENGLISH: DOCUMENTS. INSERT DATA / SPANISH: DOCUMENTOS. INSERTAR DATOS>
# <.ENGLISH: MASTER TABLE / SPANISH: TABLA MAESTRA>

# --------- <MÓDULO: PRODUCTOS> ----------- #
# <ENGLISH: MASTER TABLE / SPANISH: TABLA MAESTRA>
# <ENGLISH: MODULE. PRODUCTS / SPANISH: MÓDULO. PRODUCTOS>
CREATE TABLE IF NOT EXISTS `MIPSS_Frwdr`.`0_Prdcts` (
    `Rfrnc`          INT    (255) NOT NULL AUTO_INCREMENT COMMENT 'Rfrnc          (English: Reference                          / Spanish: Referencia)',
    `Nm`             VARCHAR(255) NOT NULL                COMMENT 'Nmbr           (English: Name                               / Spanish: Nombre)',
    `CncptDscrptn`   VARCHAR(50)  NOT NULL                COMMENT 'CncptDscrptn   (English: Concept or Description             / Spanish: Concepto ó Descripción)',
    `Rfrnc_TypPrdct` INT    (255) NOT NULL                COMMENT 'Rfrnc_TypPrdct (English: Reference. Product Type            / Spanish: Referencia. Tipo de Producto)',
    `Cndtn`          INT    (2)   NOT NULL                COMMENT 'Cndtn          (English: Condition [0: Inactive, 1: Active] / Spanish: Estado    [0: Inactivo, 1: Activo])',
    `Rmvd`           INT    (2)   NOT NULL                COMMENT 'Rmvd           (English: Removed   [0: Inactive, 1: Active] / Spanish: Eliminado [0: Inactivo, 1: Activo])',
    `Lckd`           INT    (2)   NOT NULL                COMMENT 'Lckd           (English: Locked    [0: Inactive, 1: Active] / Spanish: Bloqueado [0: Inactivo, 1: Activo])',
    `DtAdmssn`       DATE             NULL                COMMENT 'DtAdmssn       (English: Date of Admission                  / Spanish: Fecha de Ingreso)',
    `ChckTm`         TIME             NULL                COMMENT 'ChckTm         (English: Check In Time                      / Spanish: Hora de Ingreso)', 
    PRIMARY KEY (`Rfrnc`)
) ENGINE='MyISAM' DEFAULT CHARSET='utf8' COLLATE='utf8_bin' COMMENT='0_Prdcts (English: 0 - Products / Spanish: 0 - Productos)';
# <.ENGLISH: MODULE. PRODUCTS / SPANISH: MÓDULO. PRODUCTOS>
# <.ENGLISH: MASTER TABLE / SPANISH: TABLA MAESTRA>

# <ENGLISH: MASTER TABLE / SPANISH: TABLA MAESTRA>
# <ENGLISH: MODULE. PRODUCTS OF TYPES / SPANISH: MÓDULO. TIPOS DE PRODUCTOS>
# Lnk_TypPrdct > Rfrnc (Table: 0_TypsPrdcts)
CREATE TABLE IF NOT EXISTS `MIPSS_Frwdr`.`0_TypsPrdcts` (
    `Rfrnc`          INT    (255) NOT NULL AUTO_INCREMENT COMMENT 'Rfrnc          (English: Reference                          / Spanish: Referencia)',
    `Nm`             VARCHAR(255) NOT NULL                COMMENT 'Nmbr           (English: Name                               / Spanish: Nombre)',
    `CncptDscrptn`   VARCHAR(50)  NOT NULL                COMMENT 'CncptDscrptn   (English: Concept or Description             / Spanish: Concepto ó Descripción)',
    `Lnk_TypPrdct`   INT    (255) NOT NULL                COMMENT 'Lnk_TypPrdct   (English: Link. Product Type                 / Spanish: Enlace. Tipo de Producto)',
    `Cndtn`          INT    (2)   NOT NULL                COMMENT 'Cndtn          (English: Condition [0: Inactive, 1: Active] / Spanish: Estado    [0: Inactivo, 1: Activo])',
    `Rmvd`           INT    (2)   NOT NULL                COMMENT 'Rmvd           (English: Removed   [0: Inactive, 1: Active] / Spanish: Eliminado [0: Inactivo, 1: Activo])',
    `Lckd`           INT    (2)   NOT NULL                COMMENT 'Lckd           (English: Locked    [0: Inactive, 1: Active] / Spanish: Bloqueado [0: Inactivo, 1: Activo])',
    `DtAdmssn`       DATE             NULL                COMMENT 'DtAdmssn       (English: Date of Admission                  / Spanish: Fecha de Ingreso)',
    `ChckTm`         TIME             NULL                COMMENT 'ChckTm         (English: Check In Time                      / Spanish: Hora de Ingreso)', 
    PRIMARY KEY (`Rfrnc`)
) ENGINE='MyISAM' DEFAULT CHARSET='utf8' COLLATE='utf8_bin' COMMENT='0_TypsPrdcts (English: 0 - Products Types / Spanish: 0 - Tipos de Productos)';
# <.ENGLISH: MODULE. PRODUCTS OF TYPES / SPANISH: MÓDULO. TIPOS DE PRODUCTOS>
# <.ENGLISH: MASTER TABLE / SPANISH: TABLA MAESTRA>

# <ENGLISH: MASTER TABLE / SPANISH: TABLA MAESTRA>
# <ENGLISH: MODULE. PRODUCT CODES / SPANISH: MÓDULO. CÓDIGOS DE PRODUCTOS>

# English: Rfrnc_Prsn > Rfrnc (Table: 0_Prsn); Rfrnc_Prdct > Rfrnc (Table: 0_Prdcts)
# English: <<If>> 'Rfrnc_Prsn' is 'NULL' <<Then>> it's code product customized <<Else>> it's code of provider <</End If>>

# Spanish: Rfrnc_Prsn > Rfrnc (Tabla: 0_Prsns); Rfrnc_Prdct > Rfrnc (Tabla: 0_Prdcts)
# Spanish: <<Si>> 'Rfrnc_Prsn' es 'NULL' <<Entonces>> es un código del producto personalizado <<Caso Contrario>> Es el código del proveedor <</Fin de Si>>
CREATE TABLE IF NOT EXISTS `MIPSS_Frwdr`.`0_PrdctCds` (
    `Rfrnc`       INT    (255) NOT NULL AUTO_INCREMENT COMMENT 'Rfrnc       (English: Reference                          / Spanish: Referencia)',
    `Rfrnc_Prsn`  INT    (255) NOT NULL                COMMENT 'Rfrnc_Prsn  (English: Reference. Person                  / Spanish: Referencia. Persona)',
    `Rfrnc_Prdct` INT    (255) NOT NULL                COMMENT 'Rfrnc_Prdct (English: Reference. Product                 / Spanish: Referencia. Producto)',
    `Cd`          VARCHAR(20)  NOT NULL                COMMENT 'Cd          (English: Code                               / Spanish: Código)',
    `Cndtn`       INT    (2)   NOT NULL                COMMENT 'Cndtn       (English: Condition [0: Inactive, 1: Active] / Spanish: Estado    [0: Inactivo, 1: Activo])',
    `Rmvd`        INT    (2)   NOT NULL                COMMENT 'Rmvd        (English: Removed   [0: Inactive, 1: Active] / Spanish: Eliminado [0: Inactivo, 1: Activo])',
    `Lckd`        INT    (2)   NOT NULL                COMMENT 'Lckd        (English: Locked    [0: Inactive, 1: Active] / Spanish: Bloqueado [0: Inactivo, 1: Activo])',
    `DtAdmssn`    DATE             NULL                COMMENT 'DtAdmssn    (English: Date of Admission                  / Spanish: Fecha de Ingreso)',
    `ChckTm`      TIME             NULL                COMMENT 'ChckTm      (English: Check In Time                      / Spanish: Hora de Ingreso)', 
    PRIMARY KEY (`Rfrnc`)
) ENGINE='MyISAM' DEFAULT CHARSET='utf8' COLLATE='utf8_bin' COMMENT='0_PrdctCds (English: 0 - Product Codes / Spanish: 0 - Códigos de Productos)';
# <.ENGLISH: MODULE. PRODUCTS / SPANISH: MÓDULO. PRODUCTOS>
# <.ENGLISH: MASTER TABLE / SPANISH: TABLA MAESTRA>
# --------- <.ENGLISH: MODULE. PRODUCT CODES / SPANISH: MÓDULO. CÓDIGOS DE PRODUCTOS> ----------- #

# --------- <ENGLISH: MODULE. INVOICES/ SPANISH: MÓDULO. FACTURAS> ----------- #

# <ENGLISH: MASTER TABLE / SPANISH: TABLA MAESTRA>
# <ENGLISH: BUSINESS OPERATIONS / SPANISH: OPERACIÓNES COMERCIALES>
# English: 1 - Purchase / Spanish: 1 - Compra
# English: 2 - Sale / Spanish: 2 - Venta
CREATE TABLE IF NOT EXISTS `MIPSS_Frwdr`.`0_BsnssOprtns` (
    `Rfrnc`    INT    (255) NOT NULL AUTO_INCREMENT COMMENT 'Rfrnc        (English: Reference                          / Spanish: Referencia)',
    `Nm`       VARCHAR(20)  NOT NULL                COMMENT 'Nm           (English: Name                               / Spanish: Nombre)',
    `Dscrptn`  VARCHAR(60)  NOT NULL                COMMENT 'Dscrptn      (English: Description                        / Spanish: Descripción)',    
    `Cndtn`    INT    (2)   NOT NULL                COMMENT 'Cndtn        (English: Condition [0: Inactive, 1: Active] / Spanish: Estado    [0: Inactivo, 1: Activo])',
    `Rmvd`     INT    (2)   NOT NULL                COMMENT 'Rmvd         (English: Removed   [0: Inactive, 1: Active] / Spanish: Eliminado [0: Inactivo, 1: Activo])',
    `Lckd`     INT    (2)   NOT NULL                COMMENT 'Lckd         (English: Locked    [0: Inactive, 1: Active] / Spanish: Bloqueado [0: Inactivo, 1: Activo])',
    `DtAdmssn` DATE             NULL                COMMENT 'DtAdmssn     (English: Date of Admission                  / Spanish: Fecha de Ingreso)',
    `ChckTm`   TIME             NULL                COMMENT 'ChckTm       (English: Check In Time                      / Spanish: Hora de Ingreso)', 
    PRIMARY KEY (`Rfrnc`)
) ENGINE='MyISAM' DEFAULT CHARSET='utf8' COLLATE='utf8_bin' COMMENT='0_BsnssOprtns (English: 0 - Business Operations / Spanish: 0 - Opraciones Comerciales)';
# <.ENGLISH: BUSINESS OPERATIONS / SPANISH: OPERACIÓNES COMERCIALES>
# <.ENGLISH: MASTER TABLE / SPANISH: TABLA MAESTRA>

# <ENGLISH: MASTER TABLE / SPANISH: TABLA MAESTRA>
# <ENGLISH: INVOICES / SPANISH: FACTURAS>
CREATE TABLE IF NOT EXISTS `MIPSS_Frwdr`.`0_Invcs` (
    `Rfrnc`             INT    (255) NOT NULL AUTO_INCREMENT COMMENT 'Rfrnc             (English: Reference                                                       / Spanish: Referencia)',
    `Rfrnc_Invc`        INT    (255) NOT NULL                COMMENT 'Rfrnc_Invc        (English: Reference. Invoice                                              / Spanish: Referencia. Factura)',
    `Rfrnc_BsnssOprtns` INT    (10)  NOT NULL                COMMENT 'Rfrnc_BsnssOprtns (English: Reference. Business Operations [1 - Purchase, 2 - Sale]         / Spanish: Referencia. Operaciones Comerciales [1 - Compra, 2 - Venta])',
    `Cndtn`             INT    (2)   NOT NULL                COMMENT 'Cndtn             (English: Condition                      [0: Inactive, 1: Active]         / Spanish: Estado                              [0: Inactivo, 1: Activo])',
    `Rmvd`              INT    (2)   NOT NULL                COMMENT 'Rmvd              (English: Removed                        [0: Inactive, 1: Active]         / Spanish: Eliminado                           [0: Inactivo, 1: Activo])',
    `Lckd`              INT    (2)   NOT NULL                COMMENT 'Lckd              (English: Locked                         [0: Inactive, 1: Active]         / Spanish: Bloqueado                           [0: Inactivo, 1: Activo])',
    `DtAdmssn`          DATE             NULL                COMMENT 'DtAdmssn          (English: Date of Admission                                               / Spanish: Fecha de Ingreso)',
    `ChckTm`            TIME             NULL                COMMENT 'ChckTm            (English: Check In Time                                                   / Spanish: Hora de Ingreso)', 
    PRIMARY KEY (`Rfrnc`)
) ENGINE='MyISAM' DEFAULT CHARSET='utf8' COLLATE='utf8_bin' COMMENT='0_Invcs (English: 0 - Invoices / Spanish: 0 - Facturas)';
# <.ENGLISH: INVOICES / SPANISH: FACTURAS>
# <.ENGLISH: MASTER TABLE / SPANISH: TABLA MAESTRA>

# --------- <.ENGLISH: MODULE. INVOICES/ SPANISH: MÓDULO. FACTURAS> ----------- #

# <ENGLISH: MASTER TABLE / SPANISH: TABLA MAESTRA>
# <ENGLISH: MODULE. VOIDED PURCHASE INVOICES / SPANISH: MÓDULO. FACTURAS DE COMPRAS ANULADAS>
CREATE TABLE IF NOT EXISTS `MIPSS_Frwdr`.`0_VddPrchsInvcs` (
    `Rfrnc`     INT    (255) NOT NULL AUTO_INCREMENT COMMENT 'Rfrnc        (English: Reference                          / Spanish: Referencia)',
    `CnclltnDt` DATE         NOT NULL                COMMENT 'CnclltnDt    (English: Cancellation Date                  / Spanish: Fecha de Anulación)',
    `Dscrptn`   VARCHAR(60)  NOT NULL                COMMENT 'Dscrptn      (English: Description                        / Spanish: Descripción)',  
    `Cndtn`     INT    (2)   NOT NULL                COMMENT 'Cndtn        (English: Condition [0: Inactive, 1: Active] / Spanish: Estado    [0: Inactivo, 1: Activo])',
    `Rmvd`      INT    (2)   NOT NULL                COMMENT 'Rmvd         (English: Removed   [0: Inactive, 1: Active] / Spanish: Eliminado [0: Inactivo, 1: Activo])',
    `Lckd`      INT    (2)   NOT NULL                COMMENT 'Lckd         (English: Locked    [0: Inactive, 1: Active] / Spanish: Bloqueado [0: Inactivo, 1: Activo])',
    `DtAdmssn`  DATE             NULL                COMMENT 'DtAdmssn     (English: Date of Admission                  / Spanish: Fecha de Ingreso)',
    `ChckTm`    TIME             NULL                COMMENT 'ChckTm       (English: Check In Time                      / Spanish: Hora de Ingreso)', 
    PRIMARY KEY (`Rfrnc`)
) ENGINE='MyISAM' DEFAULT CHARSET='utf8' COLLATE='utf8_bin' COMMENT='0_VddPrchsInvcs (English: 0 - Voided Purchase Invoices / Spanish: 0 - Facturas de Compras: Anuladas)';
# <.ENGLISH: MODULE. VOIDED PURCHASE INVOICES / SPANISH: MÓDULO. FACTURAS DE COMPRAS ANULADAS>
# <.ENGLISH: MASTER TABLE / SPANISH: TABLA MAESTRA>

# <ENGLISH: TRANSACTION TABLE / SPANISH: TABLA TRANSACCIONAL>
# <ENGLISH: PURCHASE INVOICES / SPANISH: FACTURAS DE COMPRAS>
CREATE TABLE IF NOT EXISTS `MIPSS_Frwdr`.`0_PrchsInvcs` (
    `Rfrnc`            INT    (255) NOT NULL AUTO_INCREMENT COMMENT 'Rfrnc            (English: Reference                          / Spanish: Referencia)',
    `Rfrnc_Usr`        INT    (255) NOT NULL                COMMENT 'Rfrnc_Usr        (English: Reference. User                    / Spanish: Referencia. Usuario)',
    `InvcNmbr`         VARCHAR(255) NOT NULL                COMMENT 'InvcNmbr         (English: Invoice Number                     / Spanish: Número de Factura)',
    `CntrlNmbr`        VARCHAR(255) NOT NULL                COMMENT 'CntrlNmbr        (English: Control Number                     / Spanish: Número de Control)',
    `Plc`              VARCHAR(15)  NOT NULL                COMMENT 'Plc              (English: Place                              / Spanish: Lugar)',
    `Dy`               CHAR   (2)   NOT NULL                COMMENT 'Dy               (English: Day                                / Spanish: Día)',
    `Mnth`             CHAR   (2)   NOT NULL                COMMENT 'Mnth             (English: Month                              / Spanish: Mes)',
    `Yr`               CHAR   (4)   NOT NULL                COMMENT 'Yr               (English: Year                               / Spanish: Año)',
    `Rfrnc_PymntCndtn` INT    (255) NOT NULL                COMMENT 'Rfrnc_PymntCndtn (English: Reference. Payment Condition       / Spanish: Referencia. Condición de Pago)',
    `Rfrnc_Prsn`       INT    (255) NOT NULL                COMMENT 'Rfrnc_Prsn       (English: Reference. Person                  / Spanish: Referencia. Persona)',
    `Cndtn`            INT    (2)   NOT NULL                COMMENT 'Cndtn            (English: Condition [0: Inactive, 1: Active] / Spanish: Estado    [0: Inactivo, 1: Activo])',
    `Rmvd`             INT    (2)   NOT NULL                COMMENT 'Rmvd             (English: Removed   [0: Inactive, 1: Active] / Spanish: Eliminado [0: Inactivo, 1: Activo])',
    `Lckd`             INT    (2)   NOT NULL                COMMENT 'Lckd             (English: Locked    [0: Inactive, 1: Active] / Spanish: Bloqueado [0: Inactivo, 1: Activo])',
    `DtAdmssn`         DATE             NULL                COMMENT 'DtAdmssn         (English: Date of Admission                  / Spanish: Fecha de Ingreso)',
    `ChckTm`           TIME             NULL                COMMENT 'ChckTm           (English: Check In Time                      / Spanish: Hora de Ingreso)', 
    PRIMARY KEY (`Rfrnc`)
) ENGINE='MyISAM' DEFAULT CHARSET='utf8' COLLATE='utf8_bin' COMMENT='0_PrchsInvcs (English: 0 - Purchase Invoices / Spanish: 0 - Facturas de Compras)';
# <.ENGLISH: PURCHASE INVOICES / SPANISH: FACTURAS DE COMPRAS>
# <.ENGLISH: TRANSACTION TABLE / SPANISH: TABLA TRANSACCIONAL>

# <ENGLISH: ORDER. PURCHASE INVOICES / SPANISH: ORDEN. FACTURA DE COMPRAS>
CREATE TABLE IF NOT EXISTS `MIPSS_Frwdr`.`0_OrdrPrchsInvcs` (
    `Rfrnc`           INT    (255) NOT NULL AUTO_INCREMENT COMMENT 'Rfrnc           (English: Reference                          / Spanish: Referencia)',
    `Rfrnc_PrchsInvc` INT    (255) NOT NULL                COMMENT 'Rfrnc_PrchsInvc (English: Reference. Purchase Invoice        / Spanish: Referencia. Factura de Compra)',
    `InvcTyp`         INT(20)      NOT NULL                COMMENT 'InvcTyp         (English: Invoice Type                       / Spanish: Tipo de Factura)',
    `PrchsOrdr`       VARCHAR(25)  NOT NULL                COMMENT 'PrchsOrdr       (English: Purchase Order                     / Spanish: Orden de Compra)',
    `Cndtn`           INT    (2)   NOT NULL                COMMENT 'Cndtn           (English: Condition [0: Inactive, 1: Active] / Spanish: Estado    [0: Inactivo, 1: Activo])',
    `Rmvd`            INT    (2)   NOT NULL                COMMENT 'Rmvd            (English: Removed   [0: Inactive, 1: Active] / Spanish: Eliminado [0: Inactivo, 1: Activo])',
    `Lckd`            INT    (2)   NOT NULL                COMMENT 'Lckd            (English: Locked    [0: Inactive, 1: Active] / Spanish: Bloqueado [0: Inactivo, 1: Activo])',
    `DtAdmssn`        DATE             NULL                COMMENT 'DtAdmssn        (English: Date of Admission                  / Spanish: Fecha de Ingreso)',
    `ChckTm`          TIME             NULL                COMMENT 'ChckTm          (English: Check In Time                      / Spanish: Hora de Ingreso)', 
    PRIMARY KEY (`Rfrnc`)
) ENGINE='MyISAM' DEFAULT CHARSET='utf8' COLLATE='utf8_bin' COMMENT='0_OrdrPrchsInvcs (English: 0 - Order. Purchase Invoices / Spanish: 0 - Orden. Facturas de Compras)';
# <.ENGLISH: ORDER. PURCHASE INVOICE / SPANISH: ORDEN. FACTURA DE COMPRAS>

# <ENGLISH: PURCHASED PRODUCTS / SPANISH: PRODUCTOS COMPRADOS>
CREATE TABLE IF NOT EXISTS `MIPSS_Frwdr`.`0_PrchsdPrdcts` (
    `Rfrnc`           INT    (255) NOT NULL AUTO_INCREMENT COMMENT 'Rfrnc           (English: Reference                          / Spanish: Referencia)',
    `Rfrnc_Prsn`      INT    (255) NOT NULL                COMMENT 'Rfrnc_Prsn      (English: Reference. Person                  / Spanish: Referencia. Persona)',
    `Rfrnc_Prdct`     INT    (255) NOT NULL                COMMENT 'Rfrnc_Prdct     (English: Reference. Product                 / Spanish: Referencia. Producto)',
    `Rfrnc_PrchsInvc` INT    (255) NOT NULL                COMMENT 'Rfrnc_PrchsInvc (English: Reference. Purchase Invoice        / Spanish: Referencia. Factura de Compra)',
    `Qntty`           BIGINT (255) NOT NULL                COMMENT 'Qntty           (English: Quantity                           / Spanish: Cantidad)',
    `UntPrc_Prvdr`    CHAR   (2)   NOT NULL                COMMENT 'UntPrc_Prvdr    (English: Unit Price. Provider               / Spanish: Precio Unitario. Proveedor)',    
    `Cndtn`           INT    (2)   NOT NULL                COMMENT 'Cndtn           (English: Condition [0: Inactive, 1: Active] / Spanish: Estado    [0: Inactivo, 1: Activo])',
    `Rmvd`            INT    (2)   NOT NULL                COMMENT 'Rmvd            (English: Removed   [0: Inactive, 1: Active] / Spanish: Eliminado [0: Inactivo, 1: Activo])',
    `Lckd`            INT    (2)   NOT NULL                COMMENT 'Lckd            (English: Locked    [0: Inactive, 1: Active] / Spanish: Bloqueado [0: Inactivo, 1: Activo])',
    `DtAdmssn`        DATE             NULL                COMMENT 'DtAdmssn        (English: Date of Admission                  / Spanish: Fecha de Ingreso)',
    `ChckTm`          TIME             NULL                COMMENT 'ChckTm          (English: Check In Time                      / Spanish: Hora de Ingreso)', 
    PRIMARY KEY (`Rfrnc`)
) ENGINE='MyISAM' DEFAULT CHARSET='utf8' COLLATE='utf8_bin' COMMENT='0_PrchsdPrdcts (English: 0 - Purchased Products / Spanish: 0 - Productos Comprados)';
# <.ENGLISH: PURCHASED PRODUCTS / SPANISH: PRODUCTOS COMPRADOS>

# <ENGLISH: PAYMENT METHOD. PURCHASE INVOICE / SPANISH: FORMA DE PAGO. FACTURA DE COMPRAS>
CREATE TABLE IF NOT EXISTS `MIPSS_Frwdr`.`0_PymntMthdPrchsInvc` (
    `Rfrnc`           INT    (255) NOT NULL AUTO_INCREMENT COMMENT 'Rfrnc         (English: Reference                          / Spanish: Referencia)',
    `Rfrnc_PrchsInvc` INT    (255) NOT NULL                COMMENT 'PrchsInvc     (English: Reference. Purchase Invoice        / Spanish: Referencia. Factura de Compra)',
    `InvcTyp`         INT    (10)  NOT NULL                COMMENT 'InvcTyp       (English: Invoice Type                       / Spanish: Tipo de Factura)',
    `Csh`             INT    (1)   NOT NULL                COMMENT 'Csh           (English: Cash                               / Spanish: Efectivo)',
    `Othrs`           INT    (1)   NOT NULL                COMMENT 'Othrs         (English: Others                             / Spanish: Otros)',
    `Othrs_Dtls`      VARCHAR(40)  NOT NULL                COMMENT 'Othrs_Dtls    (English: Others. Details                    / Spanish: Otros. Detalles)',
    `ChckNmbr`        INT    (1)   NOT NULL                COMMENT 'ChckNmbr      (English: Check Number                       / Spanish: Número de Cheque)',
    `ChckNmbr_Dtls`   VARCHAR(40)  NOT NULL                COMMENT 'ChckNmbr_Dtls (English: Check Number. Details              / Spanish: Número de Cheque. Detalles)',
    `Rfrnc_Bnks`      INT    (255) NOT NULL                COMMENT 'Rfrnc_Bnks    (English: Reference. Banks                   / Spanish: Referencia. Bancos)',
    `Cndtn`           INT    (2)   NOT NULL                COMMENT 'Cndtn         (English: Condition [0: Inactive, 1: Active] / Spanish: Estado    [0: Inactivo, 1: Activo])',
    `Rmvd`            INT    (2)   NOT NULL                COMMENT 'Rmvd          (English: Removed   [0: Inactive, 1: Active] / Spanish: Eliminado [0: Inactivo, 1: Activo])',
    `Lckd`            INT    (2)   NOT NULL                COMMENT 'Lckd          (English: Locked    [0: Inactive, 1: Active] / Spanish: Bloqueado [0: Inactivo, 1: Activo])',
    `DtAdmssn`        DATE             NULL                COMMENT 'DtAdmssn      (English: Date of Admission                  / Spanish: Fecha de Ingreso)',
    `ChckTm`          TIME             NULL                COMMENT 'ChckTm        (English: Check In Time                      / Spanish: Hora de Ingreso)', 
    PRIMARY KEY (`Rfrnc`)
) ENGINE='MyISAM' DEFAULT CHARSET='utf8' COLLATE='utf8_bin' COMMENT='0_PymntMthdPrchsInvc (English: Payment Method. Purchase Invoice / Spanish: Forma de Pago. Facturas de Compras)';
# <.ENGLISH: PAYMENT METHOD. PURCHASE INVOICE / SPANISH: FORMA DE PAGO. FACTURA DE COMPRAS>

# <ENGLISH: AMOUNTS. PURCHASE INVOICES / SPANISH: MONTOS. FACTURAS DE COMPRAS>
CREATE TABLE IF NOT EXISTS `MIPSS_Frwdr`.`0_MntsFctrsCmprs` (
    `Rfrnc`           INT    (255) NOT NULL AUTO_INCREMENT COMMENT 'Rfrnc     (English: Reference                          / Spanish: Referencia)',
    `Rfrnc_PrchsInvc` INT    (255) NOT NULL                COMMENT 'PrchsInvc (English: Reference. Purchase Invoice        / Spanish: Referencia. Factura de Compra)',
    `Sbttl`           VARCHAR(255) NOT NULL                COMMENT 'Sbttl     (English: Subtotal                           / Spanish: Subtotal)',
    `Tx`              VARCHAR(255) NOT NULL                COMMENT 'Tx        (English: Tax                                / Spanish: Impuesto)',    
    `TtlTx`           BIGINT (255) NOT NULL                COMMENT 'TtlTx     (English: Total Tax [Subtotal * (Tax / 100)] / Spanish: Total de Impuesto [Subtotal * (Impuesto / 100)])',
    `Ttl`             CHAR   (2)   NOT NULL                COMMENT 'Ttl       (English: Total                              / Spanish: Total)',
    `Cndtn`           INT    (2)   NOT NULL                COMMENT 'Cndtn     (English: Condition [0: Inactive, 1: Active] / Spanish: Estado    [0: Inactivo, 1: Activo])',
    `Rmvd`            INT    (2)   NOT NULL                COMMENT 'Rmvd      (English: Removed   [0: Inactive, 1: Active] / Spanish: Eliminado [0: Inactivo, 1: Activo])',
    `Lckd`            INT    (2)   NOT NULL                COMMENT 'Lckd      (English: Locked    [0: Inactive, 1: Active] / Spanish: Bloqueado [0: Inactivo, 1: Activo])',
    `DtAdmssn`        DATE             NULL                COMMENT 'DtAdmssn  (English: Date of Admission                  / Spanish: Fecha de Ingreso)',
    `ChckTm`          TIME             NULL                COMMENT 'ChckTm    (English: Check In Time                      / Spanish: Hora de Ingreso)', 
    PRIMARY KEY (`Rfrnc`)
) ENGINE='MyISAM' DEFAULT CHARSET='utf8' COLLATE='utf8_bin' COMMENT='0_MntsFctrsCmprs (English: 0 - Amounts. Purchase Invoices / Spanish: 0 - Montos. Facturas de Compras)';
# <.ENGLISH: AMOUNTS. PURCHASE INVOICES / SPANISH: MONTOS. FACTURAS DE COMPRAS>

# <ENGLISH: AMOUNTS. PRODUCTS ON SALE / SPANISH: MONTOS. PRODUCTOS EN VENTAS>
CREATE TABLE IF NOT EXISTS `MIPSS_Frwdr`.`0_AmntsPrdctsSl` (
    `Rfrnc`             INT    (255) NOT NULL AUTO_INCREMENT COMMENT 'Rfrnc             (English: Reference                          / Spanish: Referencia)',
    `Rfrnc_PrchsdPrdct` INT    (255) NOT NULL                COMMENT 'Rfrnc_PrchsdPrdct (English: Reference. Purchased Product       / Spanish: Referencia. Producto Comprado)',
    `Rfrnc_PrdctCd`     INT    (255) NOT NULL                COMMENT 'Rfrnc_PrdctCd     (English: Reference, Product Code            / Spanish: Referencia. Código de Producto)',
    `Qntty`             BIGINT (255) NOT NULL                COMMENT 'Qntty             (English: Quantity                           / Spanish: Cantidad)',
    `Rfrnc_Prcntg`      INT    (3)   NOT NULL                COMMENT 'Rfrnc_Prcntg      (English: Reference. Porcentage              / Spanish: Referencia. Porcentaje)',
    `Cndtn`             INT    (2)   NOT NULL                COMMENT 'Cndtn             (English: Condition [0: Inactive, 1: Active] / Spanish: Estado    [0: Inactivo, 1: Activo])',
    `Rmvd`              INT    (2)   NOT NULL                COMMENT 'Rmvd              (English: Removed   [0: Inactive, 1: Active] / Spanish: Eliminado [0: Inactivo, 1: Activo])',
    `Lckd`              INT    (2)   NOT NULL                COMMENT 'Lckd              (English: Locked    [0: Inactive, 1: Active] / Spanish: Bloqueado [0: Inactivo, 1: Activo])',
    `DtAdmssn`          DATE             NULL                COMMENT 'DtAdmssn          (English: Date of Admission                  / Spanish: Fecha de Ingreso)',
    `ChckTm`            TIME             NULL                COMMENT 'ChckTm            (English: Check In Time                      / Spanish: Hora de Ingreso)', 
    PRIMARY KEY (`Rfrnc`)
) ENGINE='MyISAM' DEFAULT CHARSET='utf8' COLLATE='utf8_bin' COMMENT='0_AmntsPrdctsSl (English: 0 - Montos. Products on Sale / Spanish: 0 - Montos. Productos en Ventas)';
# <.ENGLISH: AMOUNTS. PRODUCTS ON SALE / SPANISH: MONTOS. PRODUCTOS EN VENTAS>

# <ENGLISH: PERCENTAGE / SPANISH: PORCENTAJE>
CREATE TABLE IF NOT EXISTS `MIPSS_Frwdr`.`0_Prcntg` (
    `Rfrnc`    INT    (255) NOT NULL AUTO_INCREMENT COMMENT 'Rfrnc    (English: Reference                          / Spanish: Referencia)',
    `Nmbr`     INT    (3)   NOT NULL                COMMENT 'Nmbr     (English: Number                             / Spanish: Número)',
    `Cndtn`    INT    (2)   NOT NULL                COMMENT 'Cndtn    (English: Condition [0: Inactive, 1: Active] / Spanish: Estado    [0: Inactivo, 1: Activo])',
    `Rmvd`     INT    (2)   NOT NULL                COMMENT 'Rmvd     (English: Removed   [0: Inactive, 1: Active] / Spanish: Eliminado [0: Inactivo, 1: Activo])',
    `Lckd`     INT    (2)   NOT NULL                COMMENT 'Lckd     (English: Locked    [0: Inactive, 1: Active] / Spanish: Bloqueado [0: Inactivo, 1: Activo])',
    `DtAdmssn` DATE             NULL                COMMENT 'DtAdmssn (English: Date of Admission                  / Spanish: Fecha de Ingreso)',
    `ChckTm`   TIME             NULL                COMMENT 'ChckTm   (English: Check In Time                      / Spanish: Hora de Ingreso)', 
    PRIMARY KEY (`Rfrnc`)
) ENGINE='MyISAM' DEFAULT CHARSET='utf8' COLLATE='utf8_bin' COMMENT='0_Prcntg (English: 0 - Percentage / Spanish: 0 - Porcentaje)';
# <.ENGLISH: PERCENTAGE / SPANISH: PORCENTAJE>

# --------- <.ENGLISH: MODULE. PURCHASE INVOICES / SPANISH: MÓDULO. FACTURAS DE COMPRAS> ----------- #

# --------- <MÓDULO: ENGLISH: SALES INVOICES / SPANISH: FACTURAS DE VENTAS> ----------- #

# <ENGLISH: MASTER TABLE / SPANISH: TABLA MAESTRA>
# <ENGLISH: SALES INVOICES. CANCELED / SPANISH: FACTURAS DE VENTAS. ANULADAS>
CREATE TABLE IF NOT EXISTS `MIPSS_Frwdr`.`0_SlsInvcsCncld` (
    `Rfrnc`     INT    (255) NOT NULL AUTO_INCREMENT COMMENT 'Rfrnc        (English: Reference                          / Spanish: Referencia)',
    `CnclltnDt` DATE         NOT NULL                COMMENT 'CnclltnDt    (English: Cancellation Date                  / Spanish: Fecha de Anulación)',
    `Dscrptn`   VARCHAR(60)  NOT NULL                COMMENT 'Dscrptn      (English: Description                        / Spanish: Descripción)',  
    `Cndtn`     INT    (2)   NOT NULL                COMMENT 'Cndtn        (English: Condition [0: Inactive, 1: Active] / Spanish: Estado    [0: Inactivo, 1: Activo])',
    `Rmvd`      INT    (2)   NOT NULL                COMMENT 'Rmvd         (English: Removed   [0: Inactive, 1: Active] / Spanish: Eliminado [0: Inactivo, 1: Activo])',
    `Lckd`      INT    (2)   NOT NULL                COMMENT 'Lckd         (English: Locked    [0: Inactive, 1: Active] / Spanish: Bloqueado [0: Inactivo, 1: Activo])',
    `DtAdmssn`  DATE             NULL                COMMENT 'DtAdmssn     (English: Date of Admission                  / Spanish: Fecha de Ingreso)',
    `ChckTm`    TIME             NULL                COMMENT 'ChckTm       (English: Check In Time                      / Spanish: Hora de Ingreso)',  
    PRIMARY KEY (`Rfrnc`)
) ENGINE='MyISAM' DEFAULT CHARSET='utf8' COLLATE='utf8_bin' COMMENT='0_SlsInvcsCncld (English: 0 - Sales Invoices. Canceled / Spanish: 0 - Facturas de Ventas. Anuladas)';
# <.ENGLISH: SALES INVOICES. CANCELED / SPANISH: FACTURAS DE VENTAS. ANULADAS>
# <.ENGLISH: MASTER TABLE / SPANISH: TABLA MAESTRA>

# <ENGLISH: TRANSACTION TABLE / SPANISH: TABLA TRANSACCIONAL>
# <ENGLISH: SALES INVOICES / SPANISH: FACTURAS DE VENTAS>
CREATE TABLE IF NOT EXISTS `MIPSS_Frwdr`.`0_SlsInvcs` (
    `Rfrnc`            INT    (255) NOT NULL AUTO_INCREMENT COMMENT 'Rfrnc            (English: Reference                          / Spanish: Referencia)',
    `Rfrnc_Usr`        INT    (255) NOT NULL                COMMENT 'Rfrnc_Usr        (English: Reference. User                    / Spanish: Referencia. Usuario)',
    `InvcNmbr`         VARCHAR(255) NOT NULL                COMMENT 'InvcNmbr         (English: Invoice Number                     / Spanish: Número de Factura)',
    `CntrlNmbr`        VARCHAR(255) NOT NULL                COMMENT 'CntrlNmbr        (English: Control Number                     / Spanish: Número de Control)',
    `Plc`              VARCHAR(15)  NOT NULL                COMMENT 'Plc              (English: Place                              / Spanish: Lugar)',
    `Dy`               CHAR   (2)   NOT NULL                COMMENT 'Dy               (English: Day                                / Spanish: Día)',
    `Mnth`             CHAR   (2)   NOT NULL                COMMENT 'Mnth             (English: Month                              / Spanish: Mes)',
    `Yr`               CHAR   (4)   NOT NULL                COMMENT 'Yr               (English: Year                               / Spanish: Año)',
    `Rfrnc_PymntCndtn` INT    (255) NOT NULL                COMMENT 'Rfrnc_PymntCndtn (English: Reference. Payment Condition       / Spanish: Referencia. Condición de Pago)',
    `Rfrnc_Prsn`       INT    (255) NOT NULL                COMMENT 'Rfrnc_Prsn       (English: Reference. Person                  / Spanish: Referencia. Persona)',
    `Cndtn`            INT    (2)   NOT NULL                COMMENT 'Cndtn            (English: Condition [0: Inactive, 1: Active] / Spanish: Estado    [0: Inactivo, 1: Activo])',
    `Rmvd`             INT    (2)   NOT NULL                COMMENT 'Rmvd             (English: Removed   [0: Inactive, 1: Active] / Spanish: Eliminado [0: Inactivo, 1: Activo])',
    `Lckd`             INT    (2)   NOT NULL                COMMENT 'Lckd             (English: Locked    [0: Inactive, 1: Active] / Spanish: Bloqueado [0: Inactivo, 1: Activo])',
    `DtAdmssn`         DATE             NULL                COMMENT 'DtAdmssn         (English: Date of Admission                  / Spanish: Fecha de Ingreso)',
    `ChckTm`           TIME             NULL                COMMENT 'ChckTm           (English: Check In Time                      / Spanish: Hora de Ingreso)', 
    PRIMARY KEY (`Rfrnc`)
) ENGINE='MyISAM' DEFAULT CHARSET='utf8' COLLATE='utf8_bin' COMMENT='0_SlsInvcs (English: 0 - Sales Invoices / Spanish: 0 - Facturas de Ventas)';
# <.ENGLISH: SALES INVOICES / SPANISH: FACTURAS DE VENTAS>
# <.ENGLISH: TRANSACTION TABLE / SPANISH: TABLA TRANSACCIONAL>

# <ENGLISH: ORDER. SALES INVOICE / SPANISH: ORDEN. FACTURA DE VENTAS>
CREATE TABLE IF NOT EXISTS `MIPSS_Frwdr`.`0_OrdrSlsInvc` (
    `Rfrnc`         INT    (255) NOT NULL AUTO_INCREMENT COMMENT 'Rfrnc         (English: Reference                          / Spanish: Referencia)',
    `Rfrnc_SlsInvc` INT    (255) NOT NULL                COMMENT 'Rfrnc_SlsInvc (English: Reference. Sales Invoice           / Spanish: Referencia. Factura de Venta)',
    `InvcTyp`       INT(20)      NOT NULL                COMMENT 'InvcTyp       (English: Invoice Type                       / Spanish: Tipo de Factura)',
    `PrchsOrdr`     VARCHAR(25)  NOT NULL                COMMENT 'PrchsOrdr     (English: Purchase Order                     / Spanish: Orden de Compra)',
    `Cndtn`         INT    (2)   NOT NULL                COMMENT 'Cndtn         (English: Condition [0: Inactive, 1: Active] / Spanish: Estado    [0: Inactivo, 1: Activo])',
    `Rmvd`          INT    (2)   NOT NULL                COMMENT 'Rmvd          (English: Removed   [0: Inactive, 1: Active] / Spanish: Eliminado [0: Inactivo, 1: Activo])',
    `Lckd`          INT    (2)   NOT NULL                COMMENT 'Lckd          (English: Locked    [0: Inactive, 1: Active] / Spanish: Bloqueado [0: Inactivo, 1: Activo])',
    `DtAdmssn`      DATE             NULL                COMMENT 'DtAdmssn      (English: Date of Admission                  / Spanish: Fecha de Ingreso)',
    `ChckTm`        TIME             NULL                COMMENT 'ChckTm        (English: Check In Time                      / Spanish: Hora de Ingreso)', 
    PRIMARY KEY (`Rfrnc`)
) ENGINE='MyISAM' DEFAULT CHARSET='utf8' COLLATE='utf8_bin' COMMENT='0_OrdrSlsInvc (English: 0 - Order. Sales Invoice / Spanish: 0 - Orden. Facturas de Ventas)';
# <.ENGLISH: ORDER. SALES INVOICE / SPANISH: ORDEN. FACTURA DE VENTAS>

# <ENGLISH: SOLD PRODUCTS / SPANISH: PRODUCTOS VENDIDOS>
CREATE TABLE IF NOT EXISTS `MIPSS_Frwdr`.`0_SldPrdcts` (
    `Rfrnc`         INT    (255) NOT NULL AUTO_INCREMENT COMMENT 'Rfrnc         (English: Reference                          / Spanish: Referencia)',
    `Rfrnc_Prsn`    INT    (255) NOT NULL                COMMENT 'Rfrnc_Prsn    (English: Reference. Person                  / Spanish: Referencia. Persona)',
    `Rfrnc_PrdctSl` INT    (255) NOT NULL                COMMENT 'Rfrnc_Prdct   (English: Reference. Product for Sale        / Spanish: Referencia. Producto en Venta)',
    `Rfrnc_SlsInvc` INT    (255) NOT NULL                COMMENT 'Rfrnc_SlsInvc (English: Reference. Sales Invoice           / Spanish: Referencia. Factura de Venta)',
    `Qntty`         BIGINT (255) NOT NULL                COMMENT 'Qntty         (English: Quantity                           / Spanish: Cantidad)',
    `UntPrc_Prvdr`  CHAR   (2)   NOT NULL                COMMENT 'UntPrc_Prvdr  (English: Unit Price. Provider               / Spanish: Precio Unitario. Proveedor)',    
    `Rfrnc_Prcntg`  INT    (255) NOT NULL                COMMENT 'Rfrnc_Prcntg  (English: Reference. Porcentage              / Spanish: Referencia. Porcentaje)',
    `Cndtn`         INT    (2)   NOT NULL                COMMENT 'Cndtn         (English: Condition [0: Inactive, 1: Active] / Spanish: Estado    [0: Inactivo, 1: Activo])',
    `Rmvd`          INT    (2)   NOT NULL                COMMENT 'Rmvd          (English: Removed   [0: Inactive, 1: Active] / Spanish: Eliminado [0: Inactivo, 1: Activo])',
    `Lckd`          INT    (2)   NOT NULL                COMMENT 'Lckd          (English: Locked    [0: Inactive, 1: Active] / Spanish: Bloqueado [0: Inactivo, 1: Activo])',
    `DtAdmssn`      DATE             NULL                COMMENT 'DtAdmssn      (English: Date of Admission                  / Spanish: Fecha de Ingreso)',
    `ChckTm`        TIME             NULL                COMMENT 'ChckTm        (English: Check In Time                      / Spanish: Hora de Ingreso)', 
    PRIMARY KEY (`Rfrnc`)
) ENGINE='MyISAM' DEFAULT CHARSET='utf8' COLLATE='utf8_bin' COMMENT='0_SldPrdcts (English: 0 - Sold Products / Spanish: 0 - Productos Vendidos)';
# <.ENGLISH: SOLD PRODUCTS / SPANISH: PRODUCTOS VENDIDOS>

# <ENGLISH: PAYMENT METHOD. CUSTOMER SALES INVOICE / SPANISH: FORMA DE PAGO: FACTURA DE VENTAS DEL CLIENTE>
CREATE TABLE IF NOT EXISTS `MIPSS_Frwdr`.`0_PymntMthdCstmrSlsInvc` (
    `Rfrnc`           INT    (255) NOT NULL AUTO_INCREMENT COMMENT 'Rfrnc         (English: Reference                          / Spanish: Referencia)',
    `Rfrnc_PrchsInvc` INT    (255) NOT NULL                COMMENT 'PrchsInvc     (English: Reference. Purchase Invoice        / Spanish: Referencia. Factura de Compra)',
    `InvcTyp`         INT    (10)  NOT NULL                COMMENT 'InvcTyp       (English: Invoice Type                       / Spanish: Tipo de Factura)',
    `Csh`             INT    (1)   NOT NULL                COMMENT 'Csh           (English: Cash                               / Spanish: Efectivo)',
    `Othrs`           INT    (1)   NOT NULL                COMMENT 'Othrs         (English: Others                             / Spanish: Otros)',
    `Othrs_Dtls`      VARCHAR(40)  NOT NULL                COMMENT 'Othrs_Dtls    (English: Others. Details                    / Spanish: Otros. Detalles)',
    `ChckNmbr`        INT    (1)   NOT NULL                COMMENT 'ChckNmbr      (English: Check Number                       / Spanish: Número de Cheque)',
    `ChckNmbr_Dtls`   VARCHAR(40)  NOT NULL                COMMENT 'ChckNmbr_Dtls (English: Check Number. Details              / Spanish: Número de Cheque. Detalles)',
    `Rfrnc_Bnks`      INT    (255) NOT NULL                COMMENT 'Rfrnc_Bnks    (English: Reference. Banks                   / Spanish: Referencia. Bancos)',
    `Cndtn`           INT    (2)   NOT NULL                COMMENT 'Cndtn         (English: Condition [0: Inactive, 1: Active] / Spanish: Estado    [0: Inactivo, 1: Activo])',
    `Rmvd`            INT    (2)   NOT NULL                COMMENT 'Rmvd          (English: Removed   [0: Inactive, 1: Active] / Spanish: Eliminado [0: Inactivo, 1: Activo])',
    `Lckd`            INT    (2)   NOT NULL                COMMENT 'Lckd          (English: Locked    [0: Inactive, 1: Active] / Spanish: Bloqueado [0: Inactivo, 1: Activo])',
    `DtAdmssn`        DATE             NULL                COMMENT 'DtAdmssn      (English: Date of Admission                  / Spanish: Fecha de Ingreso)',
    `ChckTm`          TIME             NULL                COMMENT 'ChckTm        (English: Check In Time                      / Spanish: Hora de Ingreso)', 
    PRIMARY KEY (`Rfrnc`)
) ENGINE='MyISAM' DEFAULT CHARSET='utf8' COLLATE='utf8_bin' COMMENT='0_PymntMthdCstmrSlsInvc (English: 0 - Payment Method. Customer Sales Invoice / Spanish: 0 - Forma de Pago. Facturas de Ventas)';
# <.ENGLISH: PAYMENT METHOD. CUSTOMER SALES INVOICE / SPANISH: FORMA DE PAGO: FACTURA DE VENTAS DEL CLIENTE>

# <ENGLISH: AMOUNT. SALES INVOICES / SPANISH: MONTOS. FACTURAS DE VENTAS>
CREATE TABLE IF NOT EXISTS `MIPSS_Frwdr`.`0_AmntSlsInvcs` (
    `Rfrnc`         INT    (255) NOT NULL AUTO_INCREMENT COMMENT 'Rfrnc         (English: Reference                          / Spanish: Referencia)',
    `Rfrnc_SlsInvc` INT    (255) NOT NULL                COMMENT 'Rfrnc_SlsInvc (English: Reference. Sales Invoice           / Spanish: Referencia. Factura de Venta)',
    `Sbttl`         VARCHAR(255) NOT NULL                COMMENT 'Sbttl         (English: Subtotal                           / Spanish: Subtotal)',
    `Tx`            VARCHAR(255) NOT NULL                COMMENT 'Tx            (English: Tax                                / Spanish: Impuesto)',    
    `TtlTx`         BIGINT (255) NOT NULL                COMMENT 'TtlTx         (English: Total Tax [Subtotal * (Tax / 100)] / Spanish: Total de Impuesto [Subtotal * (Impuesto / 100)])',
    `Ttl`           CHAR   (2)   NOT NULL                COMMENT 'Ttl           (English: Total                              / Spanish: Total)',
    `Cndtn`         INT    (2)   NOT NULL                COMMENT 'Cndtn         (English: Condition [0: Inactive, 1: Active] / Spanish: Estado    [0: Inactivo, 1: Activo])',
    `Rmvd`          INT    (2)   NOT NULL                COMMENT 'Rmvd          (English: Removed   [0: Inactive, 1: Active] / Spanish: Eliminado [0: Inactivo, 1: Activo])',
    `Lckd`          INT    (2)   NOT NULL                COMMENT 'Lckd          (English: Locked    [0: Inactive, 1: Active] / Spanish: Bloqueado [0: Inactivo, 1: Activo])',
    `DtAdmssn`      DATE             NULL                COMMENT 'DtAdmssn      (English: Date of Admission                  / Spanish: Fecha de Ingreso)',
    `ChckTm`        TIME             NULL                COMMENT 'ChckTm        (English: Check In Time                      / Spanish: Hora de Ingreso)', 
    PRIMARY KEY (`Rfrnc`)
) ENGINE='MyISAM' DEFAULT CHARSET='utf8' COLLATE='utf8_bin' COMMENT='0_AmntSlsInvcs (English: 0 - Amount. Sales Invoices / Spanish: 0 - Montos. Facturas de Compras)';
# <.ENGLISH: AMOUNT. SALES INVOICES / SPANISH: MONTOS. FACTURAS DE VENTAS>

# --------- <.ENGLISH: MODULE. SALES INVOICES / SPANISH: MÓDULO. FACTURAS DE VENTAS> ----------- #