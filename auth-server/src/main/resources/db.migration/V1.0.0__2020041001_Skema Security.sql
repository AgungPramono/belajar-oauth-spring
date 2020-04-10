create tables s_roles(
    id varchar(36),
    name varchar(100) not null,
    primary key(id),
    unique (name)
);

create tables s_users(
    id varchar(36),
    username varchar(36) not null,
    active boolean not null,
    id_role varchar(36) not null,
    primary key(id),
    unique (username),
    foreign key (id_role) references s_roles(id)
);

create tables s_users_passwords(
    id_users varchar(36) not null,
    password varchar(255) not null,
    primary key (id_users),
    foreign key(id_users) references s_users(id)
);

create tables s_permissions (
    id varchar(36) not null,
    label varchar (100) not null,
    value varchar(100) not null,
    primary key(id),
    unique (value)
);

create tables s_roles_permissions(
    id_role varchar(36) not null,
    id_permission varchar(36) not null,
    primary key(id_role,id_permission),
    foreign key(id_role) references s_roles(id),
    foreign key(id_permission) references s_permissions(id)
);