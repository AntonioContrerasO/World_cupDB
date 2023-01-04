--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(30) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name text NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (164, 2018, 'Final', 559, 560, 4, 2);
INSERT INTO public.games VALUES (165, 2018, 'Third Place', 561, 562, 2, 0);
INSERT INTO public.games VALUES (166, 2018, 'Semi-Final', 560, 562, 2, 1);
INSERT INTO public.games VALUES (167, 2018, 'Semi-Final', 559, 561, 1, 0);
INSERT INTO public.games VALUES (168, 2018, 'Quarter-Final', 560, 563, 3, 2);
INSERT INTO public.games VALUES (169, 2018, 'Quarter-Final', 562, 564, 2, 0);
INSERT INTO public.games VALUES (170, 2018, 'Quarter-Final', 561, 565, 2, 1);
INSERT INTO public.games VALUES (171, 2018, 'Quarter-Final', 559, 566, 2, 0);
INSERT INTO public.games VALUES (172, 2018, 'Eighth-Final', 562, 567, 2, 1);
INSERT INTO public.games VALUES (173, 2018, 'Eighth-Final', 564, 568, 1, 0);
INSERT INTO public.games VALUES (174, 2018, 'Eighth-Final', 561, 569, 3, 2);
INSERT INTO public.games VALUES (175, 2018, 'Eighth-Final', 565, 570, 2, 0);
INSERT INTO public.games VALUES (176, 2018, 'Eighth-Final', 560, 571, 2, 1);
INSERT INTO public.games VALUES (177, 2018, 'Eighth-Final', 563, 572, 2, 1);
INSERT INTO public.games VALUES (178, 2018, 'Eighth-Final', 566, 573, 2, 1);
INSERT INTO public.games VALUES (179, 2018, 'Eighth-Final', 559, 574, 4, 3);
INSERT INTO public.games VALUES (180, 2014, 'Final', 575, 574, 1, 0);
INSERT INTO public.games VALUES (181, 2014, 'Third Place', 576, 565, 3, 0);
INSERT INTO public.games VALUES (182, 2014, 'Semi-Final', 574, 576, 1, 0);
INSERT INTO public.games VALUES (183, 2014, 'Semi-Final', 575, 565, 7, 1);
INSERT INTO public.games VALUES (184, 2014, 'Quarter-Final', 576, 577, 1, 0);
INSERT INTO public.games VALUES (185, 2014, 'Quarter-Final', 574, 561, 1, 0);
INSERT INTO public.games VALUES (186, 2014, 'Quarter-Final', 565, 567, 2, 1);
INSERT INTO public.games VALUES (187, 2014, 'Quarter-Final', 575, 559, 1, 0);
INSERT INTO public.games VALUES (188, 2014, 'Eighth-Final', 565, 578, 2, 1);
INSERT INTO public.games VALUES (189, 2014, 'Eighth-Final', 567, 566, 2, 0);
INSERT INTO public.games VALUES (190, 2014, 'Eighth-Final', 559, 579, 2, 0);
INSERT INTO public.games VALUES (191, 2014, 'Eighth-Final', 575, 580, 2, 1);
INSERT INTO public.games VALUES (192, 2014, 'Eighth-Final', 576, 570, 2, 1);
INSERT INTO public.games VALUES (193, 2014, 'Eighth-Final', 577, 581, 2, 1);
INSERT INTO public.games VALUES (194, 2014, 'Eighth-Final', 574, 568, 1, 0);
INSERT INTO public.games VALUES (195, 2014, 'Eighth-Final', 561, 582, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (559, 'France');
INSERT INTO public.teams VALUES (560, 'Croatia');
INSERT INTO public.teams VALUES (561, 'Belgium');
INSERT INTO public.teams VALUES (562, 'England');
INSERT INTO public.teams VALUES (563, 'Russia');
INSERT INTO public.teams VALUES (564, 'Sweden');
INSERT INTO public.teams VALUES (565, 'Brazil');
INSERT INTO public.teams VALUES (566, 'Uruguay');
INSERT INTO public.teams VALUES (567, 'Colombia');
INSERT INTO public.teams VALUES (568, 'Switzerland');
INSERT INTO public.teams VALUES (569, 'Japan');
INSERT INTO public.teams VALUES (570, 'Mexico');
INSERT INTO public.teams VALUES (571, 'Denmark');
INSERT INTO public.teams VALUES (572, 'Spain');
INSERT INTO public.teams VALUES (573, 'Portugal');
INSERT INTO public.teams VALUES (574, 'Argentina');
INSERT INTO public.teams VALUES (575, 'Germany');
INSERT INTO public.teams VALUES (576, 'Netherlands');
INSERT INTO public.teams VALUES (577, 'Costa Rica');
INSERT INTO public.teams VALUES (578, 'Chile');
INSERT INTO public.teams VALUES (579, 'Nigeria');
INSERT INTO public.teams VALUES (580, 'Algeria');
INSERT INTO public.teams VALUES (581, 'Greece');
INSERT INTO public.teams VALUES (582, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 195, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 582, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--
