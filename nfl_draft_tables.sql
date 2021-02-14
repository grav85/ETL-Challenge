-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/0SasJQ
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- logical
DROP TABLE IF EXISTS draft, combine;
DROP TABLE IF EXISTS player;

CREATE TABLE player (
    id serial,
    player varchar NOT NULL,
	pos varchar,
    school varchar,
	year int,
    CONSTRAINT pk_player PRIMARY KEY (
        id
     )
);


CREATE TABLE combine (
    
    "Ht" varchar,
    "Wt" float,
    "40yd" float,
    "Vertical" float,
    "Bench" float,
    "Broad Jump" float,
    "3Cone" float,
    "Shuttle" float,
	player_id int   NOT NULL
);


CREATE TABLE draft (
    
    "Rnd" float,
    "Pick_no" int,
    "Conf" varchar,
	player_id int   NOT NULL
);

ALTER TABLE combine ADD CONSTRAINT fk_combine_player_id FOREIGN KEY(player_id)
REFERENCES player (id);

ALTER TABLE draft ADD CONSTRAINT fk_draft_player_id FOREIGN KEY(player_id)
REFERENCES player (id);

