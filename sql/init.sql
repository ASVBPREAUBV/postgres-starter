
/* creates Schema to be able to give access rights to tables*/
create schema api;

/* creates a table*/
create table api.todos (
  id serial primary key,
  done boolean not null default false,
  task text not null
);

/*inserts sample in db*/
insert into api.todos (task) values
  ('finish tutorial 0'), ('pat self on back');

/*creates the anonymous role to access the schema (for postgrest)*/
create role web_anon nologin;

/*give the role access to schema and table*/
grant usage on schema api to web_anon;

grant all on api.todos to web_anon;

/*
also possible to grant single operations:
grant SELECT on api.todos to web_anon;
grant UPDATE on api.todos to web_anon;
grant INSERT on api.todos to web_anon;
grant DELETE on api.todos to web_anon;
*/


