CREATE TABLE public.usuario (
    id int8 PRIMARY KEY,
	status bool DEFAULT true,
	"name" varchar(255) NULL,
	email varchar(255) NOT NULL,
	"password" varchar(255) NOT NULL
);

insert into usuario(status, id, name, email, password)
values (true, 1, 'Samuel Fernandes', 'samuel@gmail.com', '$2a$10$kc4uzagwUx9dWVQKnmDqNeXvaVdoiI39dOk9IVCfNE/S40FBVGpSm');


CREATE TABLE public."role" (
	id int8 PRIMARY KEY,
	"name" varchar(255) NULL
);

insert into role(id, name)
values (1, 'ADMIN');

insert into role(id, name)
values (2, 'USER');


CREATE TABLE public.usuario_roles (
	roles_id int8 NOT NULL,
	usuario_id int8 NOT NULL,
	CONSTRAINT fkr5p0u8r15jjo6u7xr1928hsld FOREIGN KEY (roles_id) REFERENCES public."role"(id),
	CONSTRAINT fkvfid90smx2pshpvqc3r88xqt FOREIGN KEY (usuario_id) REFERENCES public.usuario(id)
);

insert into usuario_roles(roles_id, usuario_id)
values (1, 1);

