create table car (
  id BIGSERIAL PRIMARY KEY NOT NULL,
  make VARCHAR(100) NOT NULL,
  model VARCHAR(100) NOT NULL,
  price NUMERIC(19, 2) NOT NULL
);

create table person (
  id BIGSERIAL NOT NULL PRIMARY KEY,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  gender VARCHAR(15) NOT NULL,
  date_of_birth DATE NOT NULL,
  country_of_birth VARCHAR(50) NOT NULL,
  email VARCHAR(150) NOT NULL,
  car_id bigint references car (id),
  unique(car_id)
);

insert into car (id, make, model, price) values (1, 'Nissan', 'Murano', '10742.84');
insert into car (id, make, model, price) values (2, 'Kia', 'Sorento', '23339.18');
insert into car (id, make, model, price) values (3, 'Audi', 'S4', '34557.05');
insert into car (id, make, model, price) values (4, 'Chevrolet', 'Monza', '69046.76');

insert into person (first_name, last_name, gender, date_of_birth, country_of_birth, email) values ('Paulo', 'Giovani', 'masculino', date '1982-11-10', 'Brasil', 'paulolinsdev@gmail.com');
insert into person (first_name, last_name, gender, date_of_birth, country_of_birth, email) values ('Vanessa', 'Aguzzoli', 'feminino', date '1980-10-19', 'Brasil', 'vane@protonmail.com');
insert into person (first_name, last_name, gender, date_of_birth, country_of_birth, email) values ('Thomas', 'Silva', 'masculino', date '2017-11-22', 'Brasil', '');

