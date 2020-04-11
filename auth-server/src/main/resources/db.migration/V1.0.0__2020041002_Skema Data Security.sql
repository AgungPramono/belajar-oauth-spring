insert into s_roles (id, name)
values ('r001', 'staff');

insert into s_roles (id, name)
values ('r002', 'admin');

insert into s_users (id, username, active, id_role)
values ('u001', 'user001', true, 'r001');

insert into s_users (id, username, active, id_role)
values ('u002', 'user002', true, 'r002');

-- password : staf123
insert into s_users_passwords (id_user, password)
values ('u001', '$2a$10$aM8UbLvwsojRaIJ6b7QyXe6I30e1OKiV/iMczaR/LGQk1K4ccNdAe');

-- password : admin123
insert into s_users_passwords (id_user, password)
values ('u002', '$2a$10$J/3O96ieIRlQUaf9n6dTX.23uj5EFuiemvkKGc8VjpctXzZsdarAe');

insert into s_permissions (id, label, value)
values ('p001', 'Lihat Data Transaksi', 'VIEW_TRANSAKSI');

insert into s_permissions (id, label, value)
values ('p002', 'Edit Data Transaksi', 'EDIT_TRANSAKSI');

insert into s_roles_permissions (id_role, id_permission)
values ('r001', 'p001');

insert into s_roles_permissions (id_role, id_permission)
values ('r002', 'p001');

insert into s_roles_permissions (id_role, id_permission)
values ('r002', 'p002');
