
DELETE FROM "public"."groups" WHERE "id" = 2;


DELETE FROM "public"."groups" WHERE "id" = 1;

alter table "public"."users" drop constraint "users_group_fkey";

-- Could not auto-generate a down migration.
-- Please write an appropriate down migration for the SQL below:
-- alter table "public"."users" add column "group" Integer
--  null;

DROP TABLE "public"."groups";


DELETE FROM "public"."users" WHERE "id" = 8;


DELETE FROM "public"."users" WHERE "id" = 7;

-- Could not auto-generate a down migration.
-- Please write an appropriate down migration for the SQL below:
-- SELECT setval(pg_get_serial_sequence('users', 'id'), coalesce(max(id)+1, 1), false) FROM users;


ALTER TABLE "public"."users" ALTER COLUMN "last_seen" drop default;


-- Could not auto-generate a down migration.
-- Please write an appropriate down migration for the SQL below:
-- CREATE OR REPLACE VIEW "public"."online_users" AS
--  SELECT users.id,
--     users.last_seen,
--     users.username
--    FROM users
--   WHERE (users.last_seen >= (now() - '00:00:30'::interval));


-- Could not auto-generate a down migration.
-- Please write an appropriate down migration for the SQL below:
-- INSERT INTO "public"."users"("id", "username", "created_at", "last_seen", "role", "password", "roles") VALUES (6, E'admin', E'2021-10-27T15:35:36.504379+00:00', null, E'admin', E'$2a$10$q.g.zMG.5v9SKZ6NQm/zXu.QJIHyUTuIZ4Niuf2942MzQnqJIhH8.', null);

-- Could not auto-generate a down migration.
-- Please write an appropriate down migration for the SQL below:
-- INSERT INTO "public"."users" ("id", "username", "role", "password") VALUES
-- (5, 'Jess', 'user','$2a$07$wCBCSnPUv6F/958XW92bDuH6/DIEJSHky1vUD/EHSw3JZz8OTSv06'),
-- (1, 'Dad', 'superuser', '$2a$10$h3y3H1imUoqAPqYFU6vkDOTQPNhkEnvlS1y41vSQe5UlZsMlgFLk'),
-- (4, 'Lucy', 'user', '$2a$07$wCBCSnPUv6F/958XW92bDuH6/DIEJSHky1vUD/EHSw3JZz8OTSv06'),
-- (3, 'Molly', 'user', '$2a$07$wCBCSnPUv6F/958XW92bDuH6/DIEJSHky1vUD/EHSw3JZz8OTSv06'),
-- (2, 'Mum', 'superuser', '$2a$07$wCBCSnPUv6F/958XW92bDuH6/DIEJSHky1vUD/EHSw3JZz8OTSv06');
