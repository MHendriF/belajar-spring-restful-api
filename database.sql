CREATE DATABASE belajar_spring_restful_api;

USE belajar_spring_restful_api;

## Users table
CREATE TABLE users
(
    username VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    name VARCHAR(255) NOT NULL,
    token VARCHAR(255) NOT NULL,
    token_expires_at DATETIME NOT NULL,
    PRIMARY KEY (username),
    UNIQUE (token)
) ENGINE=InnoDB;

SELECT *
FROM users;

DESC users;

## Contacts table
CREATE TABLE contacts(
    id VARCHAR(255) NOT NULL,
    username VARCHAR(255) NOT NULL,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255),
    phone VARCHAR(255),
    email VARCHAR(255),
    PRIMARY KEY (id),
    FOREIGN KEY fk_users_contacts (username) REFERENCES users(username)
) ENGINE=InnoDB;


SELECT *
FROM contacts;


DESC contacts;

## Address table
CREATE TABLE addresses(
    id VARCHAR(255) NOT NULL,
    contact_id VARCHAR(255) NOT NULL,
    street VARCHAR(255),
    city VARCHAR(255),
    province VARCHAR(255),
    country VARCHAR(255) NOT NULL,
    postal_code VARCHAR(10),
    PRIMARY KEY (id),
    FOREIGN KEY fk_contacts_addresses (contact_id) REFERENCES contacts (id)
) ENGINE=InnoDB;

SELECT *
FROM addresses;

DESC addresses;

## Delete table
DELETE FROM addresses;

DELETE FROM contacts;

DELETE FROM users;