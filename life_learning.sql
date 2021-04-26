CREATE TABLE `tb_postagem` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`tema_id` INT NOT NULL,
	`usuario_id` varchar(255) NOT NULL,
	`conteudo` varchar(255) NOT NULL,
	`data` DATETIME NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `tb_usuario` (
	`nome` varchar(255) NOT NULL,
	`id` INT(255) NOT NULL AUTO_INCREMENT,
	`email` varchar(255) NOT NULL,
	`senha` varchar(255) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `tb_tema` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`titulo` varchar(255) NOT NULL,
	`sumario` varchar(255) NOT NULL,
	`tags` varchar(255) NOT NULL,
	PRIMARY KEY (`id`)
);

ALTER TABLE `tb_postagem` ADD CONSTRAINT `tb_postagem_fk0` FOREIGN KEY (`tema_id`) REFERENCES `tb_tema`(`id`);

ALTER TABLE `tb_postagem` ADD CONSTRAINT `tb_postagem_fk1` FOREIGN KEY (`usuario_id`) REFERENCES `tb_usuario`(`nome`);

