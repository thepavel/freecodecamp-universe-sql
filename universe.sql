--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    asteroid_id integer NOT NULL,
    name character varying(100) NOT NULL,
    star_id integer NOT NULL,
    mean_star_distance_au numeric,
    mean_diameter_km numeric,
    rotation_period_s integer,
    orbital_period_hrs integer
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroid_asteroid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroid_asteroid_id_seq OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroid_asteroid_id_seq OWNED BY public.asteroid.asteroid_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    morphology character varying(20),
    apparent_magnitude numeric,
    hubble_rating character varying(10),
    some_field integer,
    another_field integer
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
    name character varying(100) NOT NULL,
    orbital_speed_kms numeric,
    mean_radius_km numeric,
    tidally_locked boolean,
    planet_id integer NOT NULL,
    some_field integer,
    another_field integer
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
    name character varying(50) NOT NULL,
    mean_radius_km numeric,
    description text,
    has_satellites boolean,
    star_id integer NOT NULL,
    some_field integer,
    another_field integer
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
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50) NOT NULL,
    galaxy_id integer NOT NULL,
    harvard_class character varying(10),
    color character varying(30),
    some_field integer,
    another_field integer
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
-- Name: asteroid asteroid_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid ALTER COLUMN asteroid_id SET DEFAULT nextval('public.asteroid_asteroid_id_seq'::regclass);


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
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES (1, 'Ceres', 1, 10.6, 939.4, 32640, 40296);
INSERT INTO public.asteroid VALUES (2, 'Vesta', 1, 2.362, 525.4, 19224, 31799);
INSERT INTO public.asteroid VALUES (3, 'Pallas', 1, 2.773, 511, 28116, 40471);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'barred spiral', -5.1, 'Sb', NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Pinwheel Galaxy', 'spiral', 7.9, 'SAB(rs)cd', NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Spindle Galaxy', 'lenticular', 9.9, 'S0', NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Andromeda Galaxy', 'barred spiral', 3.44, 'SA(s)b', NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Hoags Object', 'ring', 16.2, '(RP)SA0/a', NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Triangulum Galaxy', 'spiral', 5.72, 'SA(s)cd', NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Ganymede', 10.88, 2634.1, true, 5, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'Callisto', 8.204, 2410.3, true, 5, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'Titan', 5.57, 2574.73, true, 6, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'Moon', 1.022, 1737.4, true, 3, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'Io', 17.334, 1821.6, true, 5, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'Europa', 13743.36, 1560.8, true, 5, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'Triton', 4.39, 1353.4, true, 8, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'Rhea', 8.48, 763.5, true, 6, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'Iapetus', 3.26, 734.4, true, 6, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'Dione', 10.03, 561.4, true, 6, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'Tethys', 11.35, 531.1, true, 6, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'Titania', 3.64, 788.4, true, 7, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'Oberon', 3.15, 761.4, true, 7, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'Umbriel', 4.67, 584.7, true, 7, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'Ariel', 5.51, 578.9, true, 7, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'Charon', 0.21, 606, true, 9, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'Enceladus', 12.64, 252.1, true, 6, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'Mimas', 14.28, 198.2, true, 6, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'Hyperion', 5.07, 135, false, 6, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'Miranda', 6.66, 235.8, true, 7, NULL, NULL);
INSERT INTO public.moon VALUES (21, 'Proteus', 7.623, 209, true, 8, NULL, NULL);
INSERT INTO public.moon VALUES (22, 'Nereid', 1.12, 170, true, 8, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 2439.7, 'First planet from the Sun', false, 1, NULL, NULL);
INSERT INTO public.planet VALUES (2, 'Venus', 6051.8, 'Second planet from the sun. \n Dense atmosphere with sulfuric acid', false, 1, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'Earth', 6371, 'we are here', true, 1, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'Mars', 3389.5, 'The red planet', true, 1, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'Jupiter', 69911, 'a GIANT', true, 1, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'Saturn', 58232, 'a ringed Giant', true, 1, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'Uranus', 25362, 'a cold place', true, 1, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'Neptune', 24622, 'farthest planet now', true, 1, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'Pluto', 1188.30, 'dwarf', true, 1, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'TRAPPIST-1b', 7118, 'mainly rocky exoplanet', false, 7, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'TRAPPIST-1c', 6996.82, '2nd mainly rocky exoplanet', false, 7, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'TRAPPIST-1d', 5025.97, '3rd mainly rocky exoplanet', false, 7, NULL, NULL);
INSERT INTO public.planet VALUES (13, 'TRAPPIST-1e', 5867.89, '4th mainly rocky exoplanet', false, 7, NULL, NULL);
INSERT INTO public.planet VALUES (14, 'TRAPPIST-1f', 6665.15, '5th mainly rocky exoplanet', false, 7, NULL, NULL);
INSERT INTO public.planet VALUES (15, 'TRAPPIST-1g', 7200.9, '6th mainly rocky exoplanet', false, 7, NULL, NULL);
INSERT INTO public.planet VALUES (16, 'TRAPPIST-1h', 4815.49, '7th mainly rocky exoplanet', false, 7, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 'G', 'yellow', NULL, NULL);
INSERT INTO public.star VALUES (2, 'Antares', 1, 'M', 'red', NULL, NULL);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 1, 'M', 'red', NULL, NULL);
INSERT INTO public.star VALUES (4, 'Sirius', 1, 'A', 'white', NULL, NULL);
INSERT INTO public.star VALUES (5, 'Rigel', 1, 'B', 'blue', NULL, NULL);
INSERT INTO public.star VALUES (6, 'Vega', 1, 'A', 'white', NULL, NULL);
INSERT INTO public.star VALUES (7, 'TRAPPIST-1', 1, 'M8V', 'cool red', NULL, NULL);


--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroid_asteroid_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 15, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: asteroid asteroid_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_name_key UNIQUE (name);


--
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


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
-- Name: asteroid asteroid_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


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

