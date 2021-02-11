-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/0SasJQ
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- logical
DROP TABLE IF EXISTS draft, combine;
DROP TABLE IF EXISTS player;

CREATE TABLE player (
    id serial,
    player varchar NOT NULL,
    school varchar,
    CONSTRAINT pk_player PRIMARY KEY (
        id
     )
);


CREATE TABLE combine (
    player_id integer   NOT NULL,
    "Ht" varchar,
    "Wt" Integer,
    "40yd" float,
    "Vertical" Float,
    "Bench" Integer,
    "Broad Jump" integer,
    "3Cone" float,
    "Shuttle" float,
    year integer
);


CREATE TABLE draft (
    player_id integer   NOT NULL,
    Rnd integer,
    Pick_no float,
    Conf varchar,
    year integer
);

ALTER TABLE combine ADD CONSTRAINT fk_combine_player_id FOREIGN KEY(player_id)
REFERENCES player (id);

ALTER TABLE draft ADD CONSTRAINT fk_draft_player_id FOREIGN KEY(player_id)
REFERENCES player (id);

