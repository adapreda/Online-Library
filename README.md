# Digital Library

## Database for managing an online ebook store

---

## General Description

The **"Digital Library"** project consists of the design and implementation of a relational database intended to manage the activity of an online ebook store. The database is developed in **Oracle Database 21c**, using **SQL** and **PL/SQL** extensions, while following the conceptual, logical, and physical modeling principles studied in the *Database Management Systems* course.

The implementation covers both the data structure and the business rules, validated through constraints, triggers, and stored subprograms.

The implementation was developed using **Oracle Database 21c Enterprise Edition Release 21.0.0.0.0 – Production**, on **Windows 11**, without the use of a virtual machine.

---

## Database Purpose

The main purpose of the database is to enable:

- efficient management of ebooks available in a digital library;
- management of authors, publishers, and literary categories;
- tracking users and the orders placed by them;
- applying and monitoring discounts;
- maintaining the history of orders and reviews;
- automatic validation of integrity rules and functional requirements.

The database provides complete support for the operation of a platform for selling and distributing electronic books.

---

## Entity-Relationship Diagram

The entity-relationship diagram describes the logical structure of the database, highlighting the main entities, their attributes, and the relationships between them.

### Main Entities

- AUTORI  
- EDITURI  
- CATEGORII  
- EBOOKURI  
- UTILIZATORI  
- COMENZI  
- DETALII_PRODUS  
- RECENZII  
- DISCOUNTURI  

<img width="928" height="701" alt="ER Diagram" src="https://github.com/user-attachments/assets/4405ff47-4eb7-4a8a-88db-66d76e20bd1c" />

---

## Conceptual Diagram

The conceptual diagram details the structure of each entity, highlighting the attributes, primary keys, foreign keys, and the relationships between tables.

<img width="971" height="771" alt="Conceptual Diagram" src="https://github.com/user-attachments/assets/ee908015-d754-4616-8da3-a86dd7b98802" />

---

## Database Implementation

The database implementation includes:

- table definitions with primary and foreign keys;
- **NOT NULL**, **UNIQUE**, and **CHECK** constraints;
- use of **SEQUENCE** objects for automatic identifier generation;
- enforcement of referential integrity rules.

---

## Business Rules

The business rules are implemented through:

- **CHECK** constraints (e.g. valid values for rating, price, number of pages);
- **DML triggers** at both statement and row level;
- **DDL triggers** to prevent the deletion of critical objects.

### Examples of Implemented Rules

- a user can leave a review only for ebooks they have purchased;
- orders cannot be modified or deleted;
- ordered ebooks cannot be deleted;
- expired discounts cannot be applied;
- dates cannot be set in the future.

---

## Procedures, Functions, and PL/SQL

The project includes:

- stored procedures using:
  - associative arrays;
  - nested tables;
  - VARRAY;
- functions using complex queries involving at least 3–5 tables;
- use of simple and parameterized cursors;
- handling of standard and user-defined exceptions.

---

## PL/SQL Package for Reviews

A dedicated PL/SQL package is implemented for review management and includes:

- complex data types (**RECORD**, **TABLE**);
- functions for calculating average ratings;
- procedures for adding and deleting reviews.

This package provides a complete workflow for managing reviews within the application.

---
