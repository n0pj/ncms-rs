-- Your SQL goes here
CREATE TABLE IF NOT EXISTS `database`.`post_score_type` (
  `id` VARCHAR(45) NOT NULL,
  `created_at` VARCHAR(45) NOT NULL,
  `updated_at` VARCHAR(45) NOT NULL,
  `type_uuid` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC),
  INDEX `fk_post_score_type_type1_idx` (`type_uuid` ASC),
  CONSTRAINT `fk_post_score_type_type1`
    FOREIGN KEY (`type_uuid`)
    REFERENCES `database`.`type` (`uuid`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
