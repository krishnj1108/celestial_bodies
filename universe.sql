--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text,
    miles_from_earth bigint,
    num_stars bigint
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20) NOT NULL,
    planet_id integer,
    description text,
    color character varying(10)
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    age_in_millions_of_years integer,
    diameter_in_km integer,
    has_life boolean,
    is_spherical boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: species; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.species (
    species_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text,
    avg_lifespan numeric(4,1)
);


ALTER TABLE public.species OWNER TO freecodecamp;

--
-- Name: species_species_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.species_species_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.species_species_id_seq OWNER TO freecodecamp;

--
-- Name: species_species_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.species_species_id_seq OWNED BY public.species.species_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    avg_temp_fah integer,
    galaxy_id integer,
    num_planets integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: species species_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.species ALTER COLUMN species_id SET DEFAULT nextval('public.species_species_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'A faint, milky band of light', 150000000000000, 250000000000);
INSERT INTO public.galaxy VALUES (3, 'Triangulum Galaxy', 'A loosely wound spiral with a bright core', NULL, 35000000000);
INSERT INTO public.galaxy VALUES (2, 'Andromeda Galaxy', 'A large spiral with a bright, yellowish central bulge', NULL, 1000000000000);
INSERT INTO public.galaxy VALUES (5, 'Sagittarius Dwarf', 'A small galaxy with a diffuse shape and scattered stars', 470000000000000, 20000000000);
INSERT INTO public.galaxy VALUES (4, 'LMC', 'A cluster of bright blue regions and pink star-forming areas', 950000000000000, 15000000000);
INSERT INTO public.galaxy VALUES (6, 'IC 1101', 'A gigantic, smooth, golden-white elliptical with a bright central core', NULL, 100000000000000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 1, 'Dusty, rocky, heavily cratered', 'Gray');
INSERT INTO public.moon VALUES (2, 'Europa', 2, 'Smooth water-ice crust, crisscrossed by long fractures and ridges', 'Pale cream');
INSERT INTO public.moon VALUES (3, 'Io', 2, 'Rugged volcanic plains, mountains, and deposits of sulfur', 'Yellow');
INSERT INTO public.moon VALUES (4, 'Verdanis', 3, 'Mossy, uneven terrain with thick vegetation', 'Emerald');
INSERT INTO public.moon VALUES (5, 'Pelagia', 3, 'Jagged ice cliffs and smooth frozen ocean basins', 'Blue');
INSERT INTO public.moon VALUES (6, 'Glaciera', 4, 'Thick ice, snowdrifts, and sharp frozen ridges', 'Pale blue');
INSERT INTO public.moon VALUES (7, 'Nivox', 4, 'Brittle ice fractured by deep fissures', 'Charcoal');
INSERT INTO public.moon VALUES (8, 'Amethyst', 5, 'Rocky, rough, covered in craters', 'Lavender');
INSERT INTO public.moon VALUES (9, 'Silvara', 5, 'Smooth mineral plains with scattered rocky ridges', 'Pale gray');
INSERT INTO public.moon VALUES (10, 'Ember', 6, 'Jagged volcanic rock with glowing fissures', 'Black');
INSERT INTO public.moon VALUES (11, 'Dunaris', 6, 'Fine dusty regolith and wind-sculpted ridges', 'Ochre');
INSERT INTO public.moon VALUES (12, 'Borealis', 7, 'Rough ice sheets with towering frozen ridges', 'Pale blue');
INSERT INTO public.moon VALUES (13, 'Umbra', 7, 'Dark, glassy ice broken by deep fractures', 'Navy blue');
INSERT INTO public.moon VALUES (14, 'Krag', 8, 'Coarse basalt, steep cliffs, and deep craters', 'Dark gray');
INSERT INTO public.moon VALUES (15, 'Sulpha', 8, 'Brittle, fractured mineral crust with volcanic deposits', 'Brown');
INSERT INTO public.moon VALUES (16, 'Sylvara', 9, 'Soft mossy terrain, dense forests, and rockyy highlands', 'Emerald');
INSERT INTO public.moon VALUES (17, 'Thalune', 9, 'Smooth ocean basins, icy shores, and scattered cliffs', 'Turquoise');
INSERT INTO public.moon VALUES (18, 'Scoria', 10, 'Porous volcanic rock and jagged lava fields', 'Charcoal');
INSERT INTO public.moon VALUES (19, 'Pexa', 10, 'Powdery dust, loose rocks, and impact craters', 'Mute Brown');
INSERT INTO public.moon VALUES (20, 'Aurex', 11, 'Dense clouds above a possible rocky or icy interior', 'Gold');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 4540, 12742, true, true, 1);
INSERT INTO public.planet VALUES (2, 'Jupiter', 2800, 10500, false, true, 1);
INSERT INTO public.planet VALUES (3, 'Aetherion', 3200, 14200, true, true, 2);
INSERT INTO public.planet VALUES (4, 'Cryon', 5100, 8900, true, true, 2);
INSERT INTO public.planet VALUES (5, 'Vespera Prime', 4100, 13100, true, true, 3);
INSERT INTO public.planet VALUES (6, 'Solvar', 1900, 7600, false, true, 3);
INSERT INTO public.planet VALUES (7, 'Nyxara', 6000, 11300, true, true, 4);
INSERT INTO public.planet VALUES (8, 'Dravok', 3700, 6900, false, true, 4);
INSERT INTO public.planet VALUES (9, 'Eryndor', 2600, 15000, true, true, 5);
INSERT INTO public.planet VALUES (10, 'Pyralis', 800, 9200, false, true, 5);
INSERT INTO public.planet VALUES (11, 'Thalassor', 7200, 140000, false, true, 6);
INSERT INTO public.planet VALUES (12, 'Orinthia', 9000, 16800, true, true, 6);


--
-- Data for Name: species; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.species VALUES (1, 'Human', 'Bipedal mammals with diverse skin, hair, and eye colors', 110.0);
INSERT INTO public.species VALUES (2, 'Anzellan', 'Tiny, intelligent humanoids with large eyes and brown skin', 230.0);
INSERT INTO public.species VALUES (3, 'Vulcan', 'Humanoids with pointed ears and copper-based green blood', 200.0);
INSERT INTO public.species VALUES (4, 'Engineer', 'Pale humanoids with hairless heads', 500.0);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 10000, 1, 8);
INSERT INTO public.star VALUES (2, 'Triangula', 9000, 3, 4);
INSERT INTO public.star VALUES (3, 'Andromeda-1', 12000, 2, 6);
INSERT INTO public.star VALUES (4, 'Sagitarrius-1', 7500, 5, 3);
INSERT INTO public.star VALUES (5, 'Magellanic-1', 18000, 4, 5);
INSERT INTO public.star VALUES (6, 'IC-1101-1', 15000, 6, 9);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: species_species_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.species_species_id_seq', 4, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_description_key UNIQUE (description);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_description_key UNIQUE (description);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: species species_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.species
    ADD CONSTRAINT species_name_key UNIQUE (name);


--
-- Name: species species_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.species
    ADD CONSTRAINT species_pkey PRIMARY KEY (species_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

