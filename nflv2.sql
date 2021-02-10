-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/0SasJQ
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- logical

CREATE TABLE "player" (
    "id" integer   NOT NULL,
    "Player" varchar   NOT NULL,
    "Pos" varchar   NOT NULL,
    "School" varchar   NOT NULL,
    CONSTRAINT "pk_player" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "combine" (
    "player_id" integer   NOT NULL,
    "ht" varchar   NOT NULL,
    "wt" Integer   NOT NULL,
    "40yd" float   NOT NULL,
    "vertical" Float   NOT NULL,
    "bench" Integer   NOT NULL,
    "broad_jump" integer   NOT NULL,
    "3cone" float   NOT NULL,
    "shuttle" float   NOT NULL,
    "year" integer   NOT NULL
);

CREATE TABLE "draft" (
    "player_id" integer   NOT NULL,
    "rnd" integer   NOT NULL,
    "pick_no" float   NOT NULL,
    "conf" varchar   NOT NULL,
    "year" integer   NOT NULL
);

ALTER TABLE "combine" ADD CONSTRAINT "fk_combine_player_id" FOREIGN KEY("player_id")
REFERENCES "player" ("id");

ALTER TABLE "draft" ADD CONSTRAINT "fk_draft_player_id" FOREIGN KEY("player_id")
REFERENCES "player" ("id");

