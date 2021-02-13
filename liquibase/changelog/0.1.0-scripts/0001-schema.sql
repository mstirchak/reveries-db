CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

DROP TABLE IF EXISTS "public"."user";
CREATE TABLE "public"."user" (
  "id" uuid DEFAULT uuid_generate_v4 (),
  "username" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "password" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "isActive" bool NOT NULL DEFAULT true
);
ALTER TABLE "public"."user" OWNER TO "postgres";

ALTER TABLE "public"."user" ADD CONSTRAINT user_pkey PRIMARY KEY (id);

INSERT INTO "public"."user" ("username", "password", "isActive") VALUES ('admin', 'admin', 't');