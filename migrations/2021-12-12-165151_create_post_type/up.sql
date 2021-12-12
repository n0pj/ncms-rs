-- Your SQL goes here
CREATE TABLE IF NOT EXISTS `database`.`post_type` (
  `uuid` VARCHAR(45) NOT NULL,
  `created_at` VARCHAR(45) NOT NULL,
  `updated_at` VARCHAR(45) NOT NULL,
  `post_uuid` VARCHAR(45) NOT NULL,
  `type_uuid` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`uuid`),
  UNIQUE INDEX `id_UNIQUE` (`uuid` ASC),
  INDEX `fk_post_type_post1_idx` (`post_uuid` ASC),
  INDEX `fk_post_type_type1_idx` (`type_uuid` ASC),
  CONSTRAINT `fk_post_type_post1`
    FOREIGN KEY (`post_uuid`)
    REFERENCES `database`.`post` (`uuid`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_post_type_type1`
    FOREIGN KEY (`type_uuid`)
    REFERENCES `database`.`type` (`uuid`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
