CREATE TABLE IF NOT EXISTS DM_DEVICE_TYPE
(
     ID   INT auto_increment NOT NULL,
     NAME VARCHAR(300) NULL DEFAULT NULL,
     PRIMARY KEY (ID)
);

CREATE TABLE IF NOT EXISTS DM_DEVICE
(
     ID                    INT auto_increment NOT NULL,
     DESCRIPTION           TEXT NULL DEFAULT NULL,
     NAME                  VARCHAR(100) NULL DEFAULT NULL,
     DATE_OF_ENROLLMENT    BIGINT NULL DEFAULT NULL,
     DATE_OF_LAST_UPDATE   BIGINT NULL DEFAULT NULL,
     OWNERSHIP             VARCHAR(45) NULL DEFAULT NULL,
     STATUS                VARCHAR(15) NULL DEFAULT NULL,
     DEVICE_TYPE_ID        INT(11) NULL DEFAULT NULL,
     DEVICE_IDENTIFICATION VARCHAR(300) NULL DEFAULT NULL,
     OWNER                 VARCHAR(45) NULL DEFAULT NULL,
     TENANT_ID INTEGER DEFAULT 0,
     PRIMARY KEY (ID),
     CONSTRAINT fk_DM_DEVICE_DM_DEVICE_TYPE2 FOREIGN KEY (DEVICE_TYPE_ID )
     REFERENCES DM_DEVICE_TYPE (ID ) ON DELETE NO ACTION ON UPDATE NO ACTION
);