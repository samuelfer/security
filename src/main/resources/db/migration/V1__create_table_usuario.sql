CREATE TABLE public.usuario (
    id int8 PRIMARY KEY,
	status bool DEFAULT true,
	"name" varchar(255) NULL,
	email varchar(255) NOT NULL,
	"password" varchar(255) NOT NULL
);

CREATE TABLE public."role" (
	id int8 PRIMARY KEY,
	"name" varchar(255) NULL
);


CREATE TABLE public.usuario_roles (
	roles_id int8 NOT NULL,
	usuario_id int8 NOT NULL,
	CONSTRAINT fkr5p0u8r15jjo6u7xr1928hsld FOREIGN KEY (roles_id) REFERENCES public."role"(id),
	CONSTRAINT fkvfid90smx2pshpvqc3r88xqt FOREIGN KEY (usuario_id) REFERENCES public.usuario(id)
);

