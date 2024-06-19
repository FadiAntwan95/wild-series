create table user (
  id int unsigned primary key auto_increment not null,
  email varchar(255) not null unique,
  password varchar(255) not null
);

create table item (
  id int unsigned primary key auto_increment not null,
  title varchar(255) not null,
  user_id int unsigned not null,
  foreign key(user_id) references user(id)
);


CREATE TABLE category (
    id INT PRIMARY KEY,
    name VARCHAR(255)
);

CREATE TABLE program (
    id INT PRIMARY KEY,
    title VARCHAR(255),
    synopsis text not null,
    poster VARCHAR(255),
    country VARCHAR(255),
    year INT,
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES category(id)
);


