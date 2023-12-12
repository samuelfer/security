insert into usuario(status, id, name, email, password)
values (true, 1, 'Samuel Fernandes', 'samuel@gmail.com', '$2a$10$kc4uzagwUx9dWVQKnmDqNeXvaVdoiI39dOk9IVCfNE/S40FBVGpSm');

insert into role(id, name)
values (1, 'ADMIN');

insert into usuario_roles(roles_id, usuario_id)
values (1, 1);
