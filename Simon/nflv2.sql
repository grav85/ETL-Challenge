-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/0SasJQ
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- logical
DROP TABLE IF EXISTS player;
DROP TABLE IF EXISTS combine; 
DROP TABLE IF EXISTS draft;

CREATE TABLE player (
    id serial,
    Player varchar NOT NULL,
	Pos varchar,
    School varchar,
    CONSTRAINT pk_player PRIMARY KEY (
        id
     )
);

SELECT * FROM player;

CREATE TABLE combine (
    player_id integer   NOT NULL,
    Ht varchar,
    Wt Integer,
    Forty_Yard float,
    Vertical float,
    Bench Integer,
    Broad_Jump integer,
    Three_Cone float,
    Shuttle float,
    "Year" integer
);


CREATE TABLE draft (
    player_id integer   NOT NULL,
    Round integer,
    Pick_No float,
    Conf varchar,
    "Year" integer
);

ALTER TABLE combine ADD CONSTRAINT fk_combine_player_id FOREIGN KEY(player_id)
REFERENCES player (id);

ALTER TABLE draft ADD CONSTRAINT fk_draft_player_id FOREIGN KEY(player_id)
REFERENCES player (id);

