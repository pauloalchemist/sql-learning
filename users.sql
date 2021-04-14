create table if not exists users (
  id uuid not null primary key,
  f_name varchar(150) not null,
  l_name varchar(150) not null,
  email varchar(255) not null
);

insert into users (id, f_name, l_name, email ) values (uuid_generate_v4(), 'abestado', 'capetão', 'capetao@capetao.br');
