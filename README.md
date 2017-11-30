This is an example project I created for learning go: A REST API for a blog.

# Directories

## api

This is for the HTTP related stuff: server, routes, handlers and such.

## models

This stores the data models, has interfaces for database access layers for the models.

## store

Actual database implementation. Uses sqlx to cast database results into structs.


# Database

I am using MySQL as DBMS since I am already familiar with it. You can find an example database dump on `resources/db.sql`.