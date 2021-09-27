
create table users (
    id varchar(255) primary key not null,
    first_name varchar(150) not null,
    last_name varchar(150 ) not null,
    email varchar(255) not null,
    password varchar(255) not null,
    registered timestamptz not null,
    last_login timestamptz not null,
    active integer not null,
    token varchar(255) not null,
    created_at timestamptz not null default now(),
    updated_at timestamptz not null default now()
);
