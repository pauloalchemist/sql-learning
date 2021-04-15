drop table users;

create table if not exists users (
  id uuid default uuid_generate_v4() not null primary key,
  f_name varchar(150) not null,
  l_name varchar(150) not null,
  email varchar(255) not null
);

insert into users (f_name, l_name, email ) values ('abestado', 'capetão', 'capetao@capetao.br');
