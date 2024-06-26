--
-- PostgreSQL database dump
--

-- Dumped from database version 16.3
-- Dumped by pg_dump version 16.3

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

--
-- Name: results; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA results;


ALTER SCHEMA results OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: results; Type: TABLE; Schema: results; Owner: postgres
--

CREATE TABLE results.results (
    id integer NOT NULL,
    job character varying(120) NOT NULL,
    location character varying(120) NOT NULL,
    confidence character varying(120) NOT NULL,
    total_salary character varying(120) NOT NULL,
    base_salary character varying(120) NOT NULL,
    additional_salary character varying(120) NOT NULL,
    avg_salary character varying(120) NOT NULL,
    date_added character varying(120) NOT NULL,
    datetime character varying(120) NOT NULL,
    trial450 character(1)
);


ALTER TABLE results.results OWNER TO postgres;

--
-- Name: results_id_seq; Type: SEQUENCE; Schema: results; Owner: postgres
--

CREATE SEQUENCE results.results_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE results.results_id_seq OWNER TO postgres;

--
-- Name: results_id_seq; Type: SEQUENCE OWNED BY; Schema: results; Owner: postgres
--

ALTER SEQUENCE results.results_id_seq OWNED BY results.results.id;


--
-- Name: salary_employers; Type: TABLE; Schema: results; Owner: postgres
--

CREATE TABLE results.salary_employers (
    id integer NOT NULL,
    job character varying(120) NOT NULL,
    location character varying(120) NOT NULL,
    company character varying(120) NOT NULL,
    salary character varying(120) NOT NULL,
    datetime character varying(120) NOT NULL,
    trial424 character(1)
);


ALTER TABLE results.salary_employers OWNER TO postgres;

--
-- Name: salary_employers_id_seq; Type: SEQUENCE; Schema: results; Owner: postgres
--

CREATE SEQUENCE results.salary_employers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE results.salary_employers_id_seq OWNER TO postgres;

--
-- Name: salary_employers_id_seq; Type: SEQUENCE OWNED BY; Schema: results; Owner: postgres
--

ALTER SEQUENCE results.salary_employers_id_seq OWNED BY results.salary_employers.id;


--
-- Name: results id; Type: DEFAULT; Schema: results; Owner: postgres
--

ALTER TABLE ONLY results.results ALTER COLUMN id SET DEFAULT nextval('results.results_id_seq'::regclass);


--
-- Name: salary_employers id; Type: DEFAULT; Schema: results; Owner: postgres
--

ALTER TABLE ONLY results.salary_employers ALTER COLUMN id SET DEFAULT nextval('results.salary_employers_id_seq'::regclass);


--
-- Data for Name: results; Type: TABLE DATA; Schema: results; Owner: postgres
--

COPY results.results (id, job, location, confidence, total_salary, base_salary, additional_salary, avg_salary, date_added, datetime, trial450) FROM stdin;
1	Project Manager	United States	Affidabile	Fascia retributiva di base75.516┬áUSD┬á-┬á129.720┬áUSD/anno	None	None	None	Aggiornato il 2 mag 2024	04/05/2024 13:22:39	T
2	Project Manager	China	Affidabilit├á molto alta	Fascia retributiva di base14.697┬áCN┬Ñ┬á-┬á29.253┬áCN┬Ñ/mese	None	None	None	Aggiornato il 2 mag 2024	04/05/2024 13:22:59	T
3	Project Manager	Germany	Affidabilit├á molto alta	Fascia retributiva di base34.450┬áÔé¼┬á-┬á50.000┬áÔé¼/anno	None	None	None	Aggiornato il 2 mag 2024	04/05/2024 13:23:19	T
4	Project Manager	Japan	Affidabilit├á molto alta	Fascia retributiva di base6┬áMio┬áJPY┬á-┬á10┬áMio┬áJPY/anno	None	None	None	Aggiornato il 28 apr 2024	04/05/2024 13:23:38	T
5	Project Manager	India	Affidabile	Fascia retributiva di base71.608┬áUSD┬á-┬á113.546┬áUSD/anno	None	None	None	Aggiornato il 1 mag 2024	04/05/2024 13:23:58	T
6	Project Manager	United Kingdom	Affidabilit├á molto alta	Fascia retributiva di base40.000┬á┬ú┬á-┬á60.000┬á┬ú/anno	None	None	None	Aggiornato il 2 mag 2024	04/05/2024 13:24:20	T
7	Data analyst	United States	Affidabile	Fascia retributiva di base59.682┬áUSD┬á-┬á98.383┬áUSD/anno	None	None	None	Aggiornato il 2 mag 2024	04/05/2024 13:30:33	T
8	Data analyst	China	Affidabilit├á molto alta	Fascia retributiva di base7673┬áCN┬Ñ┬á-┬á17.885┬áCN┬Ñ/mese	None	None	None	Aggiornato il 2 mag 2024	04/05/2024 13:30:53	T
9	Data analyst	Germany	Affidabilit├á molto alta	Fascia retributiva di base50.000┬áÔé¼┬á-┬á63.017┬áÔé¼/anno	None	None	None	Aggiornato il 2 mag 2024	04/05/2024 13:31:11	T
10	Data analyst	Japan	Affidabilit├á molto alta	Fascia retributiva di base5┬áMio┬áJPY┬á-┬á8┬áMio┬áJPY/anno	None	None	None	Aggiornato il 28 apr 2024	04/05/2024 13:31:30	T
11	Data analyst	United Kingdom	Affidabilit├á molto alta	Fascia retributiva di base30.000┬á┬ú┬á-┬á45.250┬á┬ú/anno	None	None	None	Aggiornato il 2 mag 2024	04/05/2024 13:32:08	T
12	Data analyst	France	Affidabilit├á molto alta	Fascia retributiva di base40.000┬áÔé¼┬á-┬á50.000┬áÔé¼/anno	None	None	None	Aggiornato il 2 mag 2024	04/05/2024 13:32:28	T
13	Data analyst	Brazil	Affidabilit├á molto alta	Fascia retributiva di base4748┬áBRL┬á-┬á8000┬áBRL/mese	None	None	None	Aggiornato il 2 mag 2024	04/05/2024 13:32:47	T
14	Data analyst	Italy	Affidabilit├á molto alta	Fascia retributiva di base26.700┬áÔé¼┬á-┬á35.000┬áÔé¼/anno	None	None	None	Aggiornato il 2 mag 2024	04/05/2024 13:33:06	T
15	Mechanical Engineer	United States	Affidabile	Fascia retributiva di base80.287┬áUSD┬á-┬á127.088┬áUSD/anno	None	None	None	Aggiornato il 2 mag 2024	04/05/2024 13:33:26	T
16	Mechanical Engineer	China	Affidabilit├á molto alta	Fascia retributiva di base8354┬áCN┬Ñ┬á-┬á18.000┬áCN┬Ñ/mese	None	None	None	Aggiornato il 21 apr 2024	04/05/2024 13:33:46	T
17	Mechanical Engineer	Japan	Affidabilit├á molto alta	Fascia retributiva di base4┬áMio┬áJPY┬á-┬á6┬áMio┬áJPY/anno	None	None	None	Aggiornato il 14 apr 2024	04/05/2024 13:34:24	T
18	Mechanical Engineer	India	Affidabile	Fascia retributiva di base76.754┬áUSD┬á-┬á110.041┬áUSD/anno	None	None	None	Aggiornato il 30 apr 2024	04/05/2024 13:34:45	T
19	Mechanical Engineer	United Kingdom	Affidabilit├á molto alta	Fascia retributiva di base35.000┬áGBP┬á-┬á47.730┬áGBP/anno	None	None	None	Aggiornato il 2 mag 2024	04/05/2024 13:35:07	T
20	Mechanical Engineer	France	Affidabilit├á molto alta	Fascia retributiva di base36.000┬áÔé¼┬á-┬á47.548┬áÔé¼/anno	None	None	None	Aggiornato il 2 mag 2024	04/05/2024 13:35:30	T
21	Mechanical Engineer	Brazil	Affidabilit├á molto alta	Fascia retributiva di base6775┬áBRL┬á-┬á12.440┬áBRL/mese	None	None	None	Aggiornato il 12 apr 2024	04/05/2024 13:35:50	T
22	Mechanical Engineer	Italy	Affidabilit├á molto alta	Fascia retributiva di base28.000┬áÔé¼┬á-┬á39.382┬áÔé¼/anno	None	None	None	Aggiornato il 1 mag 2024	04/05/2024 13:36:09	T
23	Mechanical Engineer	China	Affidabilit├á molto alta	Fascia retributiva di base8354┬áCN┬Ñ┬á-┬á18.000┬áCN┬Ñ/mese	None	None	None	Aggiornato il 21 apr 2024	04/05/2024 13:36:46	T
24	Mechanical Engineer	Germany	Affidabilit├á molto alta	Fascia retributiva di base50.000┬áÔé¼┬á-┬á70.000┬áÔé¼/anno	None	None	None	Aggiornato il 1 mag 2024	04/05/2024 13:37:07	T
25	Mechanical Engineer	Japan	Affidabilit├á molto alta	Fascia retributiva di base4┬áMio┬áJPY┬á-┬á6┬áMio┬áJPY/anno	None	None	None	Aggiornato il 14 apr 2024	04/05/2024 13:37:26	T
26	Mechanical Engineer	India	Affidabile	Fascia retributiva di base76.754┬áUSD┬á-┬á110.041┬áUSD/anno	None	None	None	Aggiornato il 30 apr 2024	04/05/2024 13:37:47	T
27	Mechanical Engineer	United Kingdom	Affidabilit├á molto alta	Fascia retributiva di base35.000┬áGBP┬á-┬á47.730┬áGBP/anno	None	None	None	Aggiornato il 2 mag 2024	04/05/2024 13:38:10	T
28	Mechanical Engineer	France	Affidabilit├á molto alta	Fascia retributiva di base36.000┬áÔé¼┬á-┬á47.548┬áÔé¼/anno	None	None	None	Aggiornato il 2 mag 2024	04/05/2024 13:38:29	T
29	Mechanical Engineer	Italy	Affidabilit├á molto alta	Fascia retributiva di base28.000┬áÔé¼┬á-┬á39.382┬áÔé¼/anno	None	None	None	Aggiornato il 1 mag 2024	04/05/2024 13:39:07	T
30	Technician	United States	Affidabile	Fascia retributiva di base45.250┬áUSD┬á-┬á78.841┬áUSD/anno	None	None	None	Aggiornato il 2 mag 2024	04/05/2024 13:39:27	T
31	Technician	China	Affidabilit├á molto alta	Fascia retributiva di base70.000┬áCN┬Ñ┬á-┬á274.886┬áCN┬Ñ/anno	None	None	None	Aggiornato il 19 apr 2024	04/05/2024 13:39:46	T
32	Technician	Germany	Affidabilit├á molto alta	Fascia retributiva di base36.500┬áÔé¼┬á-┬á54.000┬áÔé¼/anno	None	None	None	Aggiornato il 30 apr 2024	04/05/2024 13:40:06	T
33	Technician	Japan	Affidabilit├á molto alta	Fascia retributiva di base3┬áMio┬áJPY┬á-┬á6┬áMio┬áJPY/anno	None	None	None	Aggiornato il 24 apr 2024	04/05/2024 13:40:27	T
34	Technician	India	Affidabile	Fascia retributiva di base44.927┬áUSD┬á-┬á72.122┬áUSD/anno	None	None	None	Aggiornato il 28 mar 2024	04/05/2024 13:40:48	T
35	Technician	France	Affidabilit├á molto alta	Fascia retributiva di base27.000┬áÔé¼┬á-┬á35.998┬áÔé¼/anno	None	None	None	Aggiornato il 2 mag 2024	04/05/2024 13:41:27	T
36	Technician	Brazil	Affidabilit├á molto alta	Fascia retributiva di base2500┬áBRL┬á-┬á5067┬áBRL/mese	None	None	None	Aggiornato il 1 mag 2024	04/05/2024 13:41:49	T
37	Technician	Italy	Affidabilit├á molto alta	Fascia retributiva di base25.000┬áÔé¼┬á-┬á38.002┬áÔé¼/anno	None	None	None	Aggiornato il 30 apr 2024	04/05/2024 13:42:09	T
38	Sales Manager	United States	Affidabile	Fascia retributiva di base66.023┬áUSD┬á-┬á120.978┬áUSD/anno	None	None	None	Aggiornato il 2 mag 2024	04/05/2024 13:42:29	T
39	Sales Manager	China	Affidabilit├á molto alta	Fascia retributiva di base8000┬áCN┬Ñ┬á-┬á20.000┬áCN┬Ñ/mese	None	None	None	Aggiornato il 2 mag 2024	04/05/2024 13:42:50	T
40	Sales Manager	Germany	Affidabilit├á molto alta	Fascia retributiva di base48.000┬áÔé¼┬á-┬á80.500┬áÔé¼/anno	None	None	None	Aggiornato il 1 mag 2024	04/05/2024 13:43:10	T
41	Sales Manager	India	Affidabile	Fascia retributiva di base59.522┬áUSD┬á-┬á106.580┬áUSD/anno	None	None	None	Aggiornato il 10 apr 2024	04/05/2024 13:43:49	T
42	Sales Manager	United Kingdom	Affidabilit├á molto alta	Fascia retributiva di base35.000┬á┬ú┬á-┬á62.500┬á┬ú/anno	None	None	None	Aggiornato il 2 mag 2024	04/05/2024 13:44:10	T
43	Sales Manager	France	Affidabilit├á molto alta	Fascia retributiva di base42.852┬áÔé¼┬á-┬á73.000┬áÔé¼/anno	None	None	None	Aggiornato il 2 mag 2024	04/05/2024 13:44:29	T
44	Sales Manager	Brazil	Affidabilit├á molto alta	Fascia retributiva di base9425┬áBRL┬á-┬á20.000┬áBRL/mese	None	None	None	Aggiornato il 2 mag 2024	04/05/2024 13:44:50	T
45	Sales Manager	Italy	Affidabilit├á molto alta	Fascia retributiva di base38.000┬áÔé¼┬á-┬á64.033┬áÔé¼/anno	None	None	None	Aggiornato il 2 mag 2024	04/05/2024 13:45:10	T
46	Assistant	United States	Affidabile	Fascia retributiva di base44.893┬áUSD┬á-┬á71.151┬áUSD/anno	None	None	None	Aggiornato il 2 mag 2024	04/05/2024 13:45:31	T
47	Assistant	Germany	Affidabilit├á molto alta	Fascia retributiva di base49.180┬áÔé¼┬á-┬á60.000┬áÔé¼/anno	None	None	None	Aggiornato il 2 mag 2024	04/05/2024 13:46:09	T
48	Assistant	Japan	Affidabilit├á molto alta	Fascia retributiva di base5┬áMio┬áJPY┬á-┬á8┬áMio┬áJPY/anno	None	None	None	Aggiornato il 1 mag 2024	04/05/2024 13:46:29	T
49	Assistant	India	Affidabile	Fascia retributiva di base38.734┬áUSD┬á-┬á67.145┬áUSD/anno	None	None	None	Aggiornato il 10 feb 2024	04/05/2024 13:46:50	T
50	Assistant	United Kingdom	Affidabilit├á molto alta	Fascia retributiva di base26.000┬á┬ú┬á-┬á47.000┬á┬ú/anno	None	None	None	Aggiornato il 2 mag 2024	04/05/2024 13:47:09	T
51	Assistant	France	Affidabilit├á molto alta	Fascia retributiva di base1487┬áÔé¼┬á-┬á2195┬áÔé¼/mese	None	None	None	Aggiornato il 30 apr 2024	04/05/2024 13:47:29	T
52	Assistant	Brazil	Affidabilit├á molto alta	Fascia retributiva di base2045┬áBRL┬á-┬á5260┬áBRL/mese	None	None	None	Aggiornato il 1 mag 2024	04/05/2024 13:47:48	T
53	Optometrist	United States	Affidabile	Fascia retributiva di base106.176┬áUSD┬á-┬á162.034┬áUSD/anno	None	None	None	Aggiornato il 2 mag 2024	04/05/2024 13:48:24	T
54	Optometrist	Germany	Affidabilit├á alta	Fascia retributiva di base50.000┬áÔé¼┬á-┬á56.500┬áÔé¼/anno	None	None	None	Aggiornato il 7 mar 2024	04/05/2024 13:49:02	T
55	Optometrist	Japan	Affidabilit├á bassa	Fascia retributiva di base76.992┬áJPY┬á-┬á83.433┬áJPY/mese	None	None	None	Aggiornato il 12 apr 2021	04/05/2024 13:49:21	T
56	Optometrist	India	Affidabile	Fascia retributiva di base108.358┬áUSD┬á-┬á162.348┬áUSD/anno	None	None	None	Aggiornato il 10 feb 2024	04/05/2024 13:49:41	T
57	Optometrist	United Kingdom	Affidabilit├á molto alta	Fascia retributiva di base40.000┬á┬ú┬á-┬á55.000┬á┬ú/anno	None	None	None	Aggiornato il 2 mag 2024	04/05/2024 13:50:00	T
58	Optometrist	Brazil	Affidabilit├á molto alta	Fascia retributiva di base5000┬áBRL┬á-┬á9545┬áBRL/mese	None	None	None	Aggiornato il 4 apr 2024	04/05/2024 13:50:37	T
59	Optometrist	Italy	Affidabilit├á alta	Fascia retributiva di base1200┬áÔé¼┬á-┬á1951┬áÔé¼/mese	None	None	None	Aggiornato il 26 mar 2024	04/05/2024 13:50:58	T
60	Customer Engineer	United States	Affidabile	Fascia retributiva di base74.120┬áUSD┬á-┬á118.038┬áUSD/anno	None	None	None	Aggiornato il 30 apr 2024	04/05/2024 13:51:17	T
61	Customer Engineer	China	Affidabilit├á bassa	Fascia retributiva di base9200┬áCN┬Ñ┬á-┬á23.875┬áCN┬Ñ/mese	None	None	None	Aggiornato il 17 gen 2024	04/05/2024 13:51:37	T
62	Customer Engineer	Germany	Affidabilit├á molto alta	Fascia retributiva di base55.000┬áÔé¼┬á-┬á80.000┬áÔé¼/anno	None	None	None	Aggiornato il 29 apr 2024	04/05/2024 13:51:57	T
63	Customer Engineer	Japan	Affidabilit├á molto alta	Fascia retributiva di base5┬áMio┬áJPY┬á-┬á14┬áMio┬áJPY/anno	None	None	None	Aggiornato il 22 apr 2024	04/05/2024 13:52:16	T
64	Customer Engineer	United Kingdom	Affidabilit├á molto alta	Fascia retributiva di base23.875┬á┬ú┬á-┬á50.010┬á┬ú/anno	None	None	None	Aggiornato il 2 mag 2024	04/05/2024 13:52:55	T
65	Customer Engineer	France	Affidabilit├á molto alta	Fascia retributiva di base56.500┬áÔé¼┬á-┬á92.500┬áÔé¼/anno	None	None	None	Aggiornato il 16 apr 2024	04/05/2024 13:53:14	T
66	Customer Engineer	Brazil	Affidabilit├á molto alta	Fascia retributiva di base4000┬áBRL┬á-┬á15.000┬áBRL/mese	None	None	None	Aggiornato il 4 apr 2024	04/05/2024 13:53:34	T
67	Customer Engineer	Italy	Affidabilit├á molto alta	Fascia retributiva di base41.000┬áÔé¼┬á-┬á48.250┬áÔé¼/anno	None	None	None	Aggiornato il 20 mar 2024	04/05/2024 13:53:53	T
68	Marketing Associate	United States	Affidabile	Fascia retributiva di base47.368┬áUSD┬á-┬á83.600┬áUSD/anno	None	None	None	Aggiornato il 15 apr 2024	04/05/2024 13:54:13	T
69	Marketing Associate	China	Affidabilit├á molto alta	Fascia retributiva di base8000┬áCN┬Ñ┬á-┬á16.000┬áCN┬Ñ/mese	None	None	None	Aggiornato il 3 mar 2024	04/05/2024 13:54:32	T
70	Marketing Associate	Japan	Affidabilit├á molto alta	Fascia retributiva di base5┬áMio┬áJPY┬á-┬á6┬áMio┬áJPY/anno	None	None	None	Aggiornato il 29 mar 2024	04/05/2024 13:55:09	T
71	Marketing Associate	India	Affidabile	Fascia retributiva di base40.178┬áUSD┬á-┬á70.232┬áUSD/anno	None	None	None	Aggiornato il 10 feb 2024	04/05/2024 13:55:28	T
72	Marketing Associate	United Kingdom	Affidabilit├á molto alta	Fascia retributiva di base25.000┬á┬ú┬á-┬á36.000┬á┬ú/anno	None	None	None	Aggiornato il 1 mag 2024	04/05/2024 13:55:48	T
73	Marketing Associate	France	Affidabilit├á molto alta	Fascia retributiva di base32.000┬áÔé¼┬á-┬á37.625┬áÔé¼/anno	None	None	None	Aggiornato il 21 apr 2024	04/05/2024 13:56:07	T
74	Marketing Associate	Brazil	Affidabilit├á molto alta	Fascia retributiva di base2920┬áBRL┬á-┬á6625┬áBRL/mese	None	None	None	Aggiornato il 14 apr 2024	04/05/2024 13:56:26	T
75	Marketing Associate	Italy	Affidabilit├á molto alta	Fascia retributiva di base32.900┬áÔé¼┬á-┬á36.188┬áÔé¼/anno	None	None	None	Aggiornato il 8 apr 2024	04/05/2024 13:56:46	T
76	Software Developer	China	Affidabilit├á molto alta	Fascia retributiva di base230.516┬áCN┬Ñ┬á-┬á462.500┬áCN┬Ñ/anno	None	None	None	Aggiornato il 1 mag 2024	04/05/2024 13:57:22	T
77	Software Developer	Germany	Affidabilit├á molto alta	Fascia retributiva di base55.000┬áEUR┬á-┬á75.000┬áEUR/anno	None	None	None	Aggiornato il 2 mag 2024	04/05/2024 13:57:42	T
78	Software Developer	Japan	Affidabilit├á molto alta	Fascia retributiva di base5┬áMio┬áJPY┬á-┬á9┬áMio┬áJPY/anno	None	None	None	Aggiornato il 2 mag 2024	04/05/2024 13:58:03	T
79	Software Developer	India	Affidabile	Fascia retributiva di base78.486┬áUSD┬á-┬á122.627┬áUSD/anno	None	None	None	Aggiornato il 2 mag 2024	04/05/2024 13:58:23	T
80	Software Developer	United Kingdom	Affidabilit├á molto alta	Fascia retributiva di base40.000┬á┬ú┬á-┬á68.000┬á┬ú/anno	None	None	None	Aggiornato il 2 mag 2024	04/05/2024 13:58:42	T
81	Software Developer	France	Affidabilit├á molto alta	Fascia retributiva di base40.000┬áÔé¼┬á-┬á54.000┬áÔé¼/anno	None	None	None	Aggiornato il 2 mag 2024	04/05/2024 13:59:03	T
82	Software Developer	Italy	Affidabilit├á molto alta	Fascia retributiva di base26.850┬áÔé¼┬á-┬á36.000┬áÔé¼/anno	None	None	None	Aggiornato il 2 mag 2024	04/05/2024 13:59:40	T
83	IT Manager	United States	Affidabile	Fascia retributiva di base92.620┬áUSD┬á-┬á154.959┬áUSD/anno	None	None	None	Aggiornato il 2 mag 2024	04/05/2024 14:00:00	T
84	IT Manager	China	Affidabilit├á molto alta	Fascia retributiva di base300.000┬áCN┬Ñ┬á-┬á515.000┬áCN┬Ñ/anno	None	None	None	Aggiornato il 28 apr 2024	04/05/2024 14:00:19	T
85	IT Manager	Germany	Affidabilit├á molto alta	Fascia retributiva di base64.794┬áÔé¼┬á-┬á100.000┬áÔé¼/anno	None	None	None	Aggiornato il 2 mag 2024	04/05/2024 14:00:38	T
86	IT Manager	Japan	Affidabilit├á molto alta	Fascia retributiva di base8┬áMio┬áJPY┬á-┬á12┬áMio┬áJPY/anno	None	None	None	Aggiornato il 23 mar 2024	04/05/2024 14:01:00	T
87	IT Manager	India	Affidabile	Fascia retributiva di base90.748┬áUSD┬á-┬á143.841┬áUSD/anno	None	None	None	Aggiornato il 10 feb 2024	04/05/2024 14:01:20	T
88	IT Manager	France	Affidabilit├á molto alta	Fascia retributiva di base52.127┬áEUR┬á-┬á80.000┬áEUR/anno	None	None	None	Aggiornato il 2 mag 2024	04/05/2024 14:01:56	T
89	IT Manager	Brazil	Affidabilit├á molto alta	Fascia retributiva di base13.000┬áBRL┬á-┬á25.479┬áBRL/mese	None	None	None	Aggiornato il 2 mag 2024	04/05/2024 14:02:16	T
90	IT Manager	Italy	Affidabilit├á molto alta	Fascia retributiva di base40.000┬áÔé¼┬á-┬á60.000┬áÔé¼/anno	None	None	None	Aggiornato il 1 mag 2024	04/05/2024 14:02:35	T
91	Data Scientist	United States	Affidabile	Fascia retributiva di base92.540┬áUSD┬á-┬á158.601┬áUSD/anno	None	None	None	Aggiornato il 2 mag 2024	04/05/2024 14:02:54	T
92	Data Scientist	China	Affidabilit├á molto alta	Fascia retributiva di base250.000┬áCN┬Ñ┬á-┬á450.000┬áCN┬Ñ/anno	None	None	None	Aggiornato il 26 apr 2024	04/05/2024 14:03:15	T
93	Data Scientist	Germany	Affidabilit├á molto alta	Fascia retributiva di base58.891┬áÔé¼┬á-┬á76.000┬áÔé¼/anno	None	None	None	Aggiornato il 2 mag 2024	04/05/2024 14:03:35	T
94	Data Scientist	India	Affidabile	Fascia retributiva di base87.854┬áUSD┬á-┬á138.111┬áUSD/anno	None	None	None	Aggiornato il 28 mar 2024	04/05/2024 14:04:11	T
95	Data Scientist	United Kingdom	Affidabilit├á molto alta	Fascia retributiva di base40.875┬á┬ú┬á-┬á65.000┬á┬ú/anno	None	None	None	Aggiornato il 2 mag 2024	04/05/2024 14:04:31	T
96	Data Scientist	France	Affidabilit├á molto alta	Fascia retributiva di base43.000┬áÔé¼┬á-┬á54.250┬áÔé¼/anno	None	None	None	Aggiornato il 2 mag 2024	04/05/2024 14:04:50	T
97	Data Scientist	Brazil	Affidabilit├á molto alta	Fascia retributiva di base6051┬áBRL┬á-┬á12.000┬áBRL/mese	None	None	None	Aggiornato il 2 mag 2024	04/05/2024 14:05:09	T
98	Data Scientist	Italy	Affidabilit├á molto alta	Fascia retributiva di base29.000┬áÔé¼┬á-┬á40.000┬áÔé¼/anno	None	None	None	Aggiornato il 2 mag 2024	04/05/2024 14:05:29	T
99	Actuary	United States	Affidabile	Fascia retributiva di base103.241┬áUSD┬á-┬á175.918┬áUSD/anno	None	None	None	Aggiornato il 1 mag 2024	04/05/2024 14:05:48	T
100	Actuary	Germany	Affidabilit├á molto alta	Fascia retributiva di base59.750┬áÔé¼┬á-┬á80.000┬áÔé¼/anno	None	None	None	Aggiornato il 19 apr 2024	04/05/2024 14:06:25	T
101	Actuary	Japan	Affidabilit├á bassa	Fascia retributiva di base300.000┬áJPY┬á-┬á410.000┬áJPY/mese	None	None	None	Aggiornato il 3 apr 2024	04/05/2024 14:06:44	T
102	Actuary	India	Affidabile	Fascia retributiva di base90.067┬áUSD┬á-┬á155.450┬áUSD/anno	None	None	None	Aggiornato il 10 feb 2024	04/05/2024 14:07:03	T
103	Actuary	United Kingdom	Affidabilit├á molto alta	Fascia retributiva di base61.000┬á┬ú┬á-┬á92.305┬á┬ú/anno	None	None	None	Aggiornato il 2 mag 2024	04/05/2024 14:07:22	T
104	Actuary	France	Affidabilit├á molto alta	Fascia retributiva di base45.000┬áÔé¼┬á-┬á64.090┬áÔé¼/anno	None	None	None	Aggiornato il 30 apr 2024	04/05/2024 14:07:41	T
105	Actuary	Brazil	Affidabilit├á bassa	Fascia retributiva di base80.000┬áBRL┬á-┬á86.000┬áBRL/anno	None	None	None	Aggiornato il 15 giu 2023	04/05/2024 14:08:00	T
106	Statistician	United States	Affidabile	Fascia retributiva di base69.817┬áUSD┬á-┬á130.325┬áUSD/anno	None	None	None	Aggiornato il 29 apr 2024	04/05/2024 14:08:36	T
107	Statistician	China	Affidabilit├á bassa	Fascia retributiva di base4750┬áCN┬Ñ┬á-┬á26.075┬áCN┬Ñ/mese	None	None	None	Aggiornato il 2 apr 2024	04/05/2024 14:08:55	T
108	Statistician	Germany	Affidabilit├á molto alta	Fascia retributiva di base51.750┬áÔé¼┬á-┬á70.000┬áÔé¼/anno	None	None	None	Aggiornato il 12 apr 2024	04/05/2024 14:09:14	T
109	Statistician	Japan	Affidabilit├á bassa	Fascia retributiva di base1451┬áJPY┬á-┬á1548┬áJPY/ora	None	None	None	Aggiornato il 23 set 2022	04/05/2024 14:09:33	T
110	Statistician	India	Affidabile	Fascia retributiva di base65.016┬áUSD┬á-┬á116.994┬áUSD/anno	None	None	None	Aggiornato il 10 feb 2024	04/05/2024 14:09:52	T
111	Statistician	United Kingdom	Affidabilit├á molto alta	Fascia retributiva di base31.000┬á┬ú┬á-┬á45.000┬á┬ú/anno	None	None	None	Aggiornato il 2 mag 2024	04/05/2024 14:10:11	T
112	Statistician	Brazil	Affidabilit├á alta	Fascia retributiva di base5375┬áBRL┬á-┬á7278┬áBRL/mese	None	None	None	Aggiornato il 27 ott 2023	04/05/2024 14:10:47	T
113	Statistician	Italy	Affidabilit├á molto alta	Fascia retributiva di base30.485┬áÔé¼┬á-┬á42.500┬áÔé¼/anno	None	None	None	Aggiornato il 21 apr 2024	04/05/2024 14:11:06	T
114	Management Analyst	United States	Affidabile	Fascia retributiva di base79.073┬áUSD┬á-┬á121.343┬áUSD/anno	None	None	None	Aggiornato il 2 mag 2024	04/05/2024 14:11:25	T
115	Management Analyst	Germany	Affidabilit├á bassa	Fascia retributiva di base51.407┬áÔé¼┬á-┬á52.000┬áÔé¼/anno	None	None	None	Aggiornato il 22 apr 2024	04/05/2024 14:12:03	T
116	Management Analyst	Japan	Affidabilit├á bassa	Fascia retributiva di base7┬áMio┬áJPY┬á-┬á7┬áMio┬áJPY/anno	None	None	None	Aggiornato il 3 apr 2024	04/05/2024 14:12:22	T
117	Management Analyst	United Kingdom	Affidabilit├á molto alta	Fascia retributiva di base27.521┬á┬ú┬á-┬á42.500┬á┬ú/anno	None	None	None	Aggiornato il 1 mag 2024	04/05/2024 14:13:00	T
118	Management Analyst	France	Affidabilit├á bassa	Fascia retributiva di base22.000┬áÔé¼┬á-┬á40.000┬áÔé¼/anno	None	None	None	Aggiornato il 1 mag 2024	04/05/2024 14:13:18	T
119	Management Analyst	Brazil	Affidabilit├á bassa	Fascia retributiva di base4000┬áBRL┬á-┬á5000┬áBRL/mese	None	None	None	Aggiornato il 22 apr 2024	04/05/2024 14:13:38	T
120	Management Analyst	Italy	Affidabilit├á molto alta	Fascia retributiva di base25.000┬áÔé¼┬á-┬á28.201┬áÔé¼/anno	None	None	None	Aggiornato il 18 apr 2024	04/05/2024 14:13:56	T
121	Lawyer	United States	Affidabile	Fascia retributiva di base88.296┬áUSD┬á-┬á164.818┬áUSD/anno	None	None	None	Aggiornato il 2 mag 2024	04/05/2024 14:14:17	T
122	Lawyer	China	Affidabilit├á molto alta	Fascia retributiva di base9808┬áCN┬Ñ┬á-┬á30.500┬áCN┬Ñ/mese	None	None	None	Aggiornato il 23 apr 2024	04/05/2024 14:14:36	T
123	Lawyer	Japan	Affidabilit├á molto alta	Fascia retributiva di base5┬áMio┬áJPY┬á-┬á18┬áMio┬áJPY/anno	None	None	None	Aggiornato il 8 mar 2024	04/05/2024 14:15:13	T
124	Lawyer	India	Affidabile	Fascia retributiva di base92.082┬áUSD┬á-┬á165.773┬áUSD/anno	None	None	None	Aggiornato il 10 feb 2024	04/05/2024 14:15:32	T
125	Lawyer	United Kingdom	Affidabilit├á molto alta	Fascia retributiva di base49.617┬á┬ú┬á-┬á90.000┬á┬ú/anno	None	None	None	Aggiornato il 2 mag 2024	04/05/2024 14:15:53	T
126	Lawyer	France	Affidabilit├á molto alta	Fascia retributiva di base46.166┬áÔé¼┬á-┬á100.000┬áÔé¼/anno	None	None	None	Aggiornato il 30 apr 2024	04/05/2024 14:16:11	T
127	Lawyer	Brazil	Affidabilit├á molto alta	Fascia retributiva di base3000┬áBRL┬á-┬á7000┬áBRL/mese	None	None	None	Aggiornato il 2 mag 2024	04/05/2024 14:16:30	T
128	Lawyer	Italy	Affidabilit├á molto alta	Fascia retributiva di base35.000┬áÔé¼┬á-┬á55.000┬áÔé¼/anno	None	None	None	Aggiornato il 29 apr 2024	04/05/2024 14:16:50	T
129	Web Developer	China	Affidabilit├á molto alta	Fascia retributiva di base10.000┬áCN┬Ñ┬á-┬á20.000┬áCN┬Ñ/mese	None	None	None	Aggiornato il 19 apr 2024	04/05/2024 14:17:27	T
130	Web Developer	Germany	Affidabilit├á molto alta	Fascia retributiva di base41.950┬áÔé¼┬á-┬á60.000┬áÔé¼/anno	None	None	None	Aggiornato il 1 mag 2024	04/05/2024 14:17:46	T
131	Web Developer	Japan	Affidabilit├á molto alta	Fascia retributiva di base4┬áMio┬áJPY┬á-┬á7┬áMio┬áJPY/anno	None	None	None	Aggiornato il 21 apr 2024	04/05/2024 14:18:06	T
132	Web Developer	India	Affidabile	Fascia retributiva di base56.025┬áUSD┬á-┬á96.150┬áUSD/anno	None	None	None	Aggiornato il 10 feb 2024	04/05/2024 14:18:26	T
133	Web Developer	United Kingdom	Affidabilit├á molto alta	Fascia retributiva di base31.792┬áGBP┬á-┬á49.617┬áGBP/anno	None	None	None	Aggiornato il 2 mag 2024	04/05/2024 14:18:46	T
134	Web Developer	France	Affidabilit├á molto alta	Fascia retributiva di base33.939┬áÔé¼┬á-┬á45.000┬áÔé¼/anno	None	None	None	Aggiornato il 29 apr 2024	04/05/2024 14:19:05	T
135	Web Developer	Italy	Affidabilit├á molto alta	Fascia retributiva di base24.000┬áÔé¼┬á-┬á32.073┬áÔé¼/anno	None	None	None	Aggiornato il 2 mag 2024	04/05/2024 14:19:41	T
136	Analyst		Affidabilit├á molto alta	Fascia retributiva di base25.000┬áÔé¼┬á-┬á30.000┬áÔé¼/anno	None	None	None	Aggiornato il 3 mag 2024	05/05/2024 15:39:22	T
137	Analyst	Poland	Affidabilit├á molto alta	Fascia retributiva di base6000┬áPLN┬á-┬á9322┬áPLN/mese	None	None	None	Aggiornato il 3 mag 2024	05/05/2024 15:39:22	T
140	Project Manager	Poland	Affidabilit├á molto alta	Fascia retributiva di base9313┬áPLN┬á-┬á18.000┬áPLN/mese	None	None	None	Aggiornato il 3 mag 2024	05/05/2024 16:55:28	T
141	Analyst	Argentina	Affidabilit├á molto alta	Fascia retributiva di base640.599┬áARS┬á-┬á1┬áMio┬áARS/mese	None	None	None	Aggiornato il 8 mag 2024	10/05/2024 14:33:27	T
142	Programmer	South Korea	Affidabilit├á molto alta	Fascia retributiva di base37┬áMio┬áKRW┬á-┬á80┬áMio┬áKRW/anno	None	None	None	Aggiornato il 6 mag 2024	10/05/2024 15:09:36	T
143	Ing	India	Affidabile	Fascia retributiva di base48.681┬áUSD┬á-┬á90.871┬áUSD/anno	None	None	None	Aggiornato il 10 feb 2024	18/05/2024 18:09:48	T
\.


--
-- Data for Name: salary_employers; Type: TABLE DATA; Schema: results; Owner: postgres
--

COPY results.salary_employers (id, job, location, company, salary, datetime, trial424) FROM stdin;
1	Project Manager	United States	Infosys	118.568┬áUSD┬á/anno	04/05/2024 13:22:39	T
2	Project Manager	United States	Wipro	103.967┬áUSD┬á/anno	04/05/2024 13:22:39	T
3	Project Manager	United States	Epic	101.619┬áUSD┬á/anno	04/05/2024 13:22:39	T
4	Project Manager	United States	Google	299.372┬áUSD┬á/anno	04/05/2024 13:22:39	T
5	Project Manager	United States	Cisco	240.086┬áUSD┬á/anno	04/05/2024 13:22:39	T
6	Project Manager	United States	IBM	138.583┬áUSD┬á/anno	04/05/2024 13:22:39	T
7	Project Manager	United States	Cisco	137.936┬áUSD┬á/anno	04/05/2024 13:22:39	T
8	Project Manager	United States	Cognizant Technology Solutions	113.236┬áUSD┬á/anno	04/05/2024 13:22:39	T
9	Project Manager	United States	Microsoft	230.138┬áUSD┬á/anno	04/05/2024 13:22:39	T
10	Project Manager	United States	Atos-Syntel	108.787┬áUSD┬á/anno	04/05/2024 13:22:39	T
11	Project Manager	United States	Meta	332.580┬áUSD┬á/anno	04/05/2024 13:22:39	T
12	Project Manager	United States	Amazon	213.217┬áUSD┬á/anno	04/05/2024 13:22:39	T
13	Project Manager	United States	CGI	139.767┬áUSD┬á/anno	04/05/2024 13:22:39	T
14	Project Manager	United States	NVIDIA	258.452┬áUSD┬á/anno	04/05/2024 13:22:39	T
15	Project Manager	United States	Google	146.812┬áUSD┬á/anno	04/05/2024 13:22:39	T
16	Project Manager	United States	Qualcomm	205.150┬áUSD┬á/anno	04/05/2024 13:22:39	T
17	Project Manager	United States	Amazon	132.205┬áUSD┬á/anno	04/05/2024 13:22:39	T
18	Project Manager	United States	SelfEmployed.com	103.236┬áUSD┬á/anno	04/05/2024 13:22:39	T
19	Project Manager	United States	EXL Service	134.769┬áUSD┬á/anno	04/05/2024 13:22:39	T
20	Project Manager	United States	AT&T	119.482┬áUSD┬á/anno	04/05/2024 13:22:39	T
21	Project Manager	China	Tencent	391.012┬áCN┬Ñ┬á/anno	04/05/2024 13:22:59	T
22	Project Manager	China	Nokia	256.950┬áCN┬Ñ┬á/anno	04/05/2024 13:22:59	T
23	Project Manager	China	IBM	268.444┬áCN┬Ñ┬á/anno	04/05/2024 13:23:00	T
24	Project Manager	China	Huawei Technologies	318.876┬áCN┬Ñ┬á/anno	04/05/2024 13:23:00	T
25	Project Manager	China	Ericsson-Worldwide	471.200┬áCN┬Ñ┬á/anno	04/05/2024 13:23:00	T
26	Project Manager	China	iSoftStone	228.188┬áCN┬Ñ┬á/anno	04/05/2024 13:23:00	T
27	Project Manager	China	ByteDance	31.240┬áCN┬Ñ┬á/mese	04/05/2024 13:23:00	T
28	Project Manager	China	Siemens	285.318┬áCN┬Ñ┬á/anno	04/05/2024 13:23:00	T
29	Project Manager	China	Xiaomi	25.484┬áCN┬Ñ┬á/mese	04/05/2024 13:23:00	T
30	Project Manager	China	Lenovo	267.924┬áCN┬Ñ┬á/anno	04/05/2024 13:23:00	T
31	Project Manager	China	EF Education First	26.385┬áCN┬Ñ┬á/mese	04/05/2024 13:23:00	T
32	Project Manager	China	China Mobile	188.422┬áCN┬Ñ┬á/anno	04/05/2024 13:23:00	T
33	Project Manager	China	Foxconn	23.799┬áCN┬Ñ┬á/mese	04/05/2024 13:23:00	T
34	Project Manager	China	GE	22.819┬áCN┬Ñ┬á/mese	04/05/2024 13:23:00	T
35	Project Manager	China	Accenture	378.333┬áCN┬Ñ┬á/anno	04/05/2024 13:23:00	T
36	Project Manager	China	BYD	244.723┬áCN┬Ñ┬á/anno	04/05/2024 13:23:00	T
37	Project Manager	China	Merck KGaA	15.067┬áCN┬Ñ┬á/mese	04/05/2024 13:23:00	T
38	Project Manager	China	TransPerfect	8.579┬áCN┬Ñ┬á/mese	04/05/2024 13:23:00	T
39	Project Manager	China	CSOFT International	9.360┬áCN┬Ñ┬á/mese	04/05/2024 13:23:00	T
40	Project Manager	China	Alibaba Group	455.583┬áCN┬Ñ┬á/anno	04/05/2024 13:23:00	T
41	Project Manager	Germany	Accenture	49.863┬áÔé¼┬á/anno	04/05/2024 13:23:19	T
42	Project Manager	Germany	Engineering	47.559┬áÔé¼┬á/anno	04/05/2024 13:23:19	T
43	Project Manager	Germany	Reply	38.639┬áÔé¼┬á/anno	04/05/2024 13:23:19	T
44	Project Manager	Germany	Intesa Sanpaolo	40.502┬áÔé¼┬á/anno	04/05/2024 13:23:19	T
45	Project Manager	Germany	Leonardo	43.671┬áÔé¼┬á/anno	04/05/2024 13:23:19	T
46	Project Manager	Germany	Vodafone	41.210┬áÔé¼┬á/anno	04/05/2024 13:23:19	T
47	Project Manager	Germany	UniCredit Group	45.982┬áÔé¼┬á/anno	04/05/2024 13:23:19	T
48	Project Manager	Germany	YOOX NET-A-PORTER GROUP	36.754┬áÔé¼┬á/anno	04/05/2024 13:23:19	T
49	Project Manager	Germany	Enel	43.872┬áÔé¼┬á/anno	04/05/2024 13:23:19	T
50	Project Manager	Germany	Eni Spa	46.962┬áÔé¼┬á/anno	04/05/2024 13:23:19	T
51	Project Manager	Germany	ALTEN	34.305┬áÔé¼┬á/anno	04/05/2024 13:23:19	T
52	Project Manager	Germany	AlmavivA	41.579┬áÔé¼┬á/anno	04/05/2024 13:23:19	T
53	Project Manager	Germany	Danieli Group	38.997┬áÔé¼┬á/anno	04/05/2024 13:23:19	T
54	Project Manager	Germany	Saipem	57.601┬áÔé¼┬á/anno	04/05/2024 13:23:19	T
55	Project Manager	Germany	NTT DATA	47.816┬áÔé¼┬á/anno	04/05/2024 13:23:19	T
56	Project Manager	Germany	Capgemini	49.478┬áÔé¼┬á/anno	04/05/2024 13:23:19	T
57	Project Manager	Germany	Sielte	27.635┬áÔé¼┬á/anno	04/05/2024 13:23:19	T
58	Project Manager	Germany	Stellantis	38.826┬áÔé¼┬á/anno	04/05/2024 13:23:19	T
59	Project Manager	Germany	BIP	40.149┬áÔé¼┬á/anno	04/05/2024 13:23:19	T
60	Project Manager	Germany	ABB	44.708┬áÔé¼┬á/anno	04/05/2024 13:23:20	T
61	Project Manager	Japan	Rakuten	7.307.461┬áJPY┬á/anno	04/05/2024 13:23:38	T
62	Project Manager	Japan	Rakuten	6.238.637┬áJPY┬á/anno	04/05/2024 13:23:38	T
63	Project Manager	Japan	Mitsubishi Fuso Truck & Bus	5.826.207┬áJPY┬á/anno	04/05/2024 13:23:38	T
64	Project Manager	Japan	Cognizant Technology Solutions	9.103.141┬áJPY┬á/anno	04/05/2024 13:23:38	T
65	Project Manager	Japan	TransPerfect	4.270.271┬áJPY┬á/anno	04/05/2024 13:23:38	T
66	Project Manager	Japan	Accenture	12.801.167┬áJPY┬á/anno	04/05/2024 13:23:38	T
67	Project Manager	Japan	Mitsubishi	10.738.000┬áJPY┬á/anno	04/05/2024 13:23:38	T
68	Project Manager	Japan	Mitsui & Co.	16.487.888┬áJPY┬á/anno	04/05/2024 13:23:38	T
69	Project Manager	Japan	Nokia	8.542.073┬áJPY┬á/anno	04/05/2024 13:23:38	T
70	Project Manager	Japan	Amazon	10.282.857┬áJPY┬á/anno	04/05/2024 13:23:38	T
71	Project Manager	Japan	Tata Consultancy Services	5.562.873┬áJPY┬á/anno	04/05/2024 13:23:38	T
72	Project Manager	Japan	Robert Bosch	6.595.676┬áJPY┬á/anno	04/05/2024 13:23:38	T
73	Project Manager	Japan	IBM	8.953.768┬áJPY┬á/anno	04/05/2024 13:23:38	T
74	Project Manager	Japan	Sony	10.150.327┬áJPY┬á/anno	04/05/2024 13:23:39	T
75	Project Manager	Japan	NTT DATA	7.000.040┬áJPY┬á/anno	04/05/2024 13:23:39	T
76	Project Manager	Japan	SBI Holdings	7.300.000┬áJPY┬á/anno	04/05/2024 13:23:39	T
77	Project Manager	Japan	Continental	7.644.327┬áJPY┬á/anno	04/05/2024 13:23:39	T
78	Project Manager	Japan	Deloitte	10.722.096┬áJPY┬á/anno	04/05/2024 13:23:39	T
79	Project Manager	Japan	LINE	7.218.642┬áJPY┬á/anno	04/05/2024 13:23:39	T
80	Project Manager	Japan	Yahoo Japan	7.391.765┬áJPY┬á/anno	04/05/2024 13:23:39	T
81	Project Manager	India	Infosys	109.719┬áUSD┬á/anno	04/05/2024 13:23:58	T
82	Project Manager	India	Indiana University Health	83.472┬áUSD┬á/anno	04/05/2024 13:23:58	T
83	Project Manager	India	UKG	120.146┬áUSD┬á/anno	04/05/2024 13:23:58	T
84	Project Manager	India	BCForward	102.727┬áUSD┬á/anno	04/05/2024 13:23:58	T
85	Project Manager	India	Labcorp	87.443┬áUSD┬á/anno	04/05/2024 13:23:58	T
86	Project Manager	India	Walker Information	90.453┬áUSD┬á/anno	04/05/2024 13:23:59	T
87	Project Manager	India	Salesforce	168.210┬áUSD┬á/anno	04/05/2024 13:23:59	T
88	Project Manager	India	Eli Lilly and Company	144.823┬áUSD┬á/anno	04/05/2024 13:23:59	T
89	Project Manager	India	Angi	118.217┬áUSD┬á/anno	04/05/2024 13:23:59	T
90	Project Manager	India	Cognizant Technology Solutions	106.960┬áUSD┬á/anno	04/05/2024 13:23:59	T
91	Project Manager	India	Rolls-Royce	107.489┬áUSD┬á/anno	04/05/2024 13:23:59	T
92	Project Manager	India	Wipro	94.042┬áUSD┬á/anno	04/05/2024 13:23:59	T
93	Project Manager	India	Roche	130.585┬áUSD┬á/anno	04/05/2024 13:23:59	T
94	Project Manager	India	American Structurepoint	100.756┬áUSD┬á/anno	04/05/2024 13:23:59	T
95	Project Manager	India	State of Indiana	80.353┬áUSD┬á/anno	04/05/2024 13:23:59	T
96	Project Manager	India	Roche	139.038┬áUSD┬á/anno	04/05/2024 13:23:59	T
97	Project Manager	India	Cummins	142.208┬áUSD┬á/anno	04/05/2024 13:23:59	T
98	Project Manager	India	Shiel Sexton	101.293┬áUSD┬á/anno	04/05/2024 13:23:59	T
99	Project Manager	India	Genesys	115.800┬áUSD┬á/anno	04/05/2024 13:23:59	T
100	Project Manager	India	Markey's	98.525┬áUSD┬á/anno	04/05/2024 13:23:59	T
101	Project Manager	United Kingdom	NHS	47.004┬á┬ú┬á/anno	04/05/2024 13:24:20	T
102	Project Manager	United Kingdom	Network Rail	51.733┬á┬ú┬á/anno	04/05/2024 13:24:20	T
103	Project Manager	United Kingdom	BT Group	49.443┬á┬ú┬á/anno	04/05/2024 13:24:20	T
104	Project Manager	United Kingdom	Barclays	70.390┬á┬ú┬á/anno	04/05/2024 13:24:20	T
105	Project Manager	United Kingdom	Turner and Townsend	44.025┬á┬ú┬á/anno	04/05/2024 13:24:20	T
106	Project Manager	United Kingdom	UK Ministry of Defence	42.004┬á┬ú┬á/anno	04/05/2024 13:24:20	T
107	Project Manager	United Kingdom	Mace	55.398┬á┬ú┬á/anno	04/05/2024 13:24:20	T
108	Project Manager	United Kingdom	Lloyds Banking Group	60.076┬á┬ú┬á/anno	04/05/2024 13:24:20	T
109	Project Manager	United Kingdom	Capita	47.349┬á┬ú┬á/anno	04/05/2024 13:24:20	T
110	Project Manager	United Kingdom	HSBC	69.056┬á┬ú┬á/anno	04/05/2024 13:24:20	T
111	Project Manager	United Kingdom	IBM	53.914┬á┬ú┬á/anno	04/05/2024 13:24:20	T
112	Project Manager	United Kingdom	BAE Systems	48.691┬á┬ú┬á/anno	04/05/2024 13:24:20	T
113	Project Manager	United Kingdom	NHS England	46.017┬á┬ú┬á/anno	04/05/2024 13:24:20	T
114	Project Manager	United Kingdom	Mott MacDonald	108.168┬á┬ú┬á/anno	04/05/2024 13:24:20	T
115	Project Manager	United Kingdom	Tesco	48.674┬á┬ú┬á/anno	04/05/2024 13:24:20	T
116	Project Manager	United Kingdom	NatWest Group	76.486┬á┬ú┬á/anno	04/05/2024 13:24:20	T
117	Project Manager	United Kingdom	DXC Technology	39.738┬á┬ú┬á/anno	04/05/2024 13:24:20	T
118	Project Manager	United Kingdom	Babcock International Group	48.279┬á┬ú┬á/anno	04/05/2024 13:24:20	T
119	Project Manager	United Kingdom	Accenture	62.794┬á┬ú┬á/anno	04/05/2024 13:24:20	T
120	Project Manager	United Kingdom	Vodafone	55.410┬á┬ú┬á/anno	04/05/2024 13:24:20	T
121	Data analyst	United States	Qualcomm	119.431┬áUSD┬á/anno	04/05/2024 13:30:33	T
122	Data analyst	United States	Cisco	141.386┬áUSD┬á/anno	04/05/2024 13:30:33	T
123	Data analyst	United States	Uber	143.078┬áUSD┬á/anno	04/05/2024 13:30:33	T
124	Data analyst	United States	ServiceNow	112.975┬áUSD┬á/anno	04/05/2024 13:30:33	T
125	Data analyst	United States	SCIO Health Analytics	84.788┬áUSD┬á/anno	04/05/2024 13:30:33	T
126	Data analyst	United States	Synopsys	161.088┬áUSD┬á/anno	04/05/2024 13:30:33	T
127	Data analyst	United States	Meta	186.026┬áUSD┬á/anno	04/05/2024 13:30:33	T
128	Data analyst	United States	Google	159.801┬áUSD┬á/anno	04/05/2024 13:30:33	T
129	Data analyst	United States	Centene	66.236┬áUSD┬á/anno	04/05/2024 13:30:33	T
130	Data analyst	United States	Amazon	124.210┬áUSD┬á/anno	04/05/2024 13:30:33	T
131	Data analyst	United States	Populus Group	45┬áUSD┬á/ora	04/05/2024 13:30:33	T
132	Data analyst	United States	Internet Brands	86.836┬áUSD┬á/anno	04/05/2024 13:30:33	T
133	Data analyst	United States	GumGum	94.815┬áUSD┬á/anno	04/05/2024 13:30:33	T
134	Data analyst	United States	Boxy Charm	73.627┬áUSD┬á/anno	04/05/2024 13:30:33	T
135	Data analyst	United States	ICONMA	46┬áUSD┬á/ora	04/05/2024 13:30:33	T
136	Data analyst	United States	HP Inc.	109.175┬áUSD┬á/anno	04/05/2024 13:30:33	T
137	Data analyst	United States	Alpha Net	104.093┬áUSD┬á/anno	04/05/2024 13:30:33	T
138	Data analyst	United States	CCS Global Tech	38┬áUSD┬á/ora	04/05/2024 13:30:33	T
139	Data analyst	United States	Robinhood	127.032┬áUSD┬á/anno	04/05/2024 13:30:33	T
140	Data analyst	United States	Progressive Insurance	95.767┬áUSD┬á/anno	04/05/2024 13:30:33	T
141	Data analyst	China	Didi Chuxing	21.143┬áCN┬Ñ┬á/mese	04/05/2024 13:30:53	T
142	Data analyst	China	Tencent	Circa┬á29.856┬áCN┬Ñ -43.136┬áCN┬Ñ	04/05/2024 13:30:53	T
143	Data analyst	China	ByteDance	Circa┬á240.846┬áCN┬Ñ -509.276┬áCN┬Ñ	04/05/2024 13:30:53	T
144	Data analyst	China	Apple	Circa┬á191.356┬áCN┬Ñ -343.655┬áCN┬Ñ	04/05/2024 13:30:53	T
145	Data analyst	China	Xiaomi	Circa┬á5631┬áCN┬Ñ -17.441┬áCN┬Ñ	04/05/2024 13:30:53	T
146	Data analyst	China	eBay	Circa┬á3787┬áCN┬Ñ -27.788┬áCN┬Ñ	04/05/2024 13:30:53	T
147	Data analyst	China	ByteDance	Circa┬á2722┬áCN┬Ñ -3184┬áCN┬Ñ	04/05/2024 13:30:53	T
148	Data analyst	China	Alibaba Group	Circa┬á56.734┬áCN┬Ñ -66.193┬áCN┬Ñ	04/05/2024 13:30:53	T
149	Data analyst	China	Intel Corporation	Circa┬á12.151┬áCN┬Ñ -14.241┬áCN┬Ñ	04/05/2024 13:30:53	T
150	Data analyst	China	Bank of China	Circa┬á7265┬áCN┬Ñ -8384┬áCN┬Ñ	04/05/2024 13:30:53	T
151	Data analyst	China	Industrial and Commercial Bank of China	Circa┬á14.728┬áCN┬Ñ -17.254┬áCN┬Ñ	04/05/2024 13:30:53	T
152	Data analyst	China	Tsinghua University	Circa┬á5641┬áCN┬Ñ -6640┬áCN┬Ñ	04/05/2024 13:30:53	T
153	Data analyst	China	JD.com	Circa┬á30.857┬áCN┬Ñ -35.743┬áCN┬Ñ	04/05/2024 13:30:53	T
154	Data analyst	China	JD.com	Circa┬á9941┬áCN┬Ñ -11.501┬áCN┬Ñ	04/05/2024 13:30:53	T
155	Data analyst	China	CITIC Securities	Circa┬á108.035┬áCN┬Ñ -126.572┬áCN┬Ñ	04/05/2024 13:30:53	T
156	Data analyst	China	Trip.com Group	Circa┬á18.314┬áCN┬Ñ -21.839┬áCN┬Ñ	04/05/2024 13:30:53	T
157	Data analyst	China	TikTok	Circa┬á12.607┬áCN┬Ñ -14.981┬áCN┬Ñ	04/05/2024 13:30:53	T
158	Data analyst	China	Ping An Insurance	Circa┬á229.338┬áCN┬Ñ -272.372┬áCN┬Ñ	04/05/2024 13:30:53	T
159	Data analyst	China	Shopee	Circa┬á3010┬áCN┬Ñ -3562┬áCN┬Ñ	04/05/2024 13:30:53	T
160	Data analyst	China	Shopee	Circa┬á16.192┬áCN┬Ñ -19.181┬áCN┬Ñ	04/05/2024 13:30:53	T
161	Data analyst	Germany	Zalando	57.501┬áÔé¼┬á/anno	04/05/2024 13:31:11	T
162	Data analyst	Germany	Veeva Systems	62.829┬áÔé¼┬á/anno	04/05/2024 13:31:11	T
163	Data analyst	Germany	Rosen	42.754┬áÔé¼┬á/anno	04/05/2024 13:31:11	T
164	Data analyst	Germany	TIER	54.270┬áÔé¼┬á/anno	04/05/2024 13:31:12	T
165	Data analyst	Germany	ImmoScout24	62.542┬áÔé¼┬á/anno	04/05/2024 13:31:12	T
166	Data analyst	Germany	FREENOW	61.139┬áÔé¼┬á/anno	04/05/2024 13:31:12	T
167	Data analyst	Germany	Infineon Technologies	Circa┬á72.615┬áÔé¼ -88.623┬áÔé¼	04/05/2024 13:31:12	T
168	Data analyst	Germany	Wolt	Circa┬á52.384┬áÔé¼ -65.478┬áÔé¼	04/05/2024 13:31:12	T
169	Data analyst	Germany	Essity	Circa┬á61.091┬áÔé¼ -72.422┬áÔé¼	04/05/2024 13:31:12	T
170	Data analyst	Germany	Siemens	Circa┬á822┬áÔé¼ -1034┬áÔé¼	04/05/2024 13:31:12	T
171	Data analyst	Germany	Flaconi	Circa┬á47.626┬áÔé¼ -60.352┬áÔé¼	04/05/2024 13:31:12	T
172	Data analyst	Germany	The Stepstone Group	Circa┬á59.355┬áÔé¼ -85.556┬áÔé¼	04/05/2024 13:31:12	T
173	Data analyst	Germany	HeyJobs	Circa┬á52.365┬áÔé¼ -57.064┬áÔé¼	04/05/2024 13:31:12	T
174	Data analyst	Germany	Air Up	Circa┬á58.054┬áÔé¼ -68.060┬áÔé¼	04/05/2024 13:31:12	T
175	Data analyst	Germany	Statista	Circa┬á43.191┬áÔé¼ -52.037┬áÔé¼	04/05/2024 13:31:12	T
176	Data analyst	Germany	Robert Bosch	Circa┬á56.951┬áÔé¼ -78.572┬áÔé¼	04/05/2024 13:31:12	T
177	Data analyst	Germany	Amazon	Circa┬á59.967┬áÔé¼ -75.823┬áÔé¼	04/05/2024 13:31:12	T
178	Data analyst	Germany	Klarna	Circa┬á59.811┬áÔé¼ -78.676┬áÔé¼	04/05/2024 13:31:12	T
179	Data analyst	Germany	Tata Consultancy Services	Circa┬á48.495┬áÔé¼ -71.476┬áÔé¼	04/05/2024 13:31:12	T
180	Data analyst	Germany	Deloitte	Circa┬á48.109┬áÔé¼ -52.354┬áÔé¼	04/05/2024 13:31:12	T
181	Data analyst	Japan	Thermo Fisher Scientific	Circa┬á5┬áMio┬áJPY -6┬áMio┬áJPY	04/05/2024 13:31:30	T
182	Data analyst	Japan	Rakuten	Circa┬á8┬áMio┬áJPY -9┬áMio┬áJPY	04/05/2024 13:31:30	T
183	Data analyst	Japan	Amazon	Circa┬á12┬áMio┬áJPY -14┬áMio┬áJPY	04/05/2024 13:31:30	T
184	Data analyst	Japan	Bloomberg	Circa┬á7┬áMio┬áJPY -9┬áMio┬áJPY	04/05/2024 13:31:30	T
185	Data analyst	Japan	Japan Airlines	Circa┬á6┬áMio┬áJPY -8┬áMio┬áJPY	04/05/2024 13:31:30	T
186	Data analyst	Japan	The Coca-Cola Company	Circa┬á8┬áMio┬áJPY -9┬áMio┬áJPY	04/05/2024 13:31:30	T
187	Data analyst	Japan	Weathernews	Circa┬á5┬áMio┬áJPY -6┬áMio┬áJPY	04/05/2024 13:31:30	T
188	Data analyst	Japan	Pfizer	Circa┬á13┬áMio┬áJPY -15┬áMio┬áJPY	04/05/2024 13:31:30	T
189	Data analyst	Japan	Coincheck	Circa┬á92.941┬áJPY -108.820┬áJPY	04/05/2024 13:31:30	T
190	Data analyst	Japan	Daimler Truck Financial Services	Circa┬á6┬áMio┬áJPY -7┬áMio┬áJPY	04/05/2024 13:31:31	T
191	Data analyst	Japan	GeoTechnologies (Japan)	Circa┬á3┬áMio┬áJPY -4┬áMio┬áJPY	04/05/2024 13:31:31	T
192	Data analyst	Japan	Rakuten	7.126.978┬áJPY┬á/anno	04/05/2024 13:31:31	T
193	Data analyst	Japan	IBM	7.862.934┬áJPY┬á/anno	04/05/2024 13:31:31	T
194	Data analyst	Japan	Rakuten	8.072.142┬áJPY┬á/anno	04/05/2024 13:31:31	T
195	Data analyst	Japan	Accenture	6.917.011┬áJPY┬á/anno	04/05/2024 13:31:31	T
196	Data analyst	Japan	Yahoo Japan	6.217.954┬áJPY┬á/anno	04/05/2024 13:31:31	T
197	Data analyst	Japan	BrainPad	6.423.737┬áJPY┬á/anno	04/05/2024 13:31:31	T
198	Data analyst	Japan	SoftBank	5.460.004┬áJPY┬á/anno	04/05/2024 13:31:31	T
199	Data analyst	Japan	Yahoo Japan	5.595.429┬áJPY┬á/anno	04/05/2024 13:31:31	T
200	Data analyst	Japan	Boston Consulting Group	11.019.161┬áJPY┬á/anno	04/05/2024 13:31:31	T
201	Data analyst	United Kingdom	Bloomberg	64.176┬á┬ú┬á/anno	04/05/2024 13:32:08	T
202	Data analyst	United Kingdom	NHS	35.105┬á┬ú┬á/anno	04/05/2024 13:32:08	T
203	Data analyst	United Kingdom	Capita	31.994┬á┬ú┬á/anno	04/05/2024 13:32:08	T
204	Data analyst	United Kingdom	Barclays	46.431┬á┬ú┬á/anno	04/05/2024 13:32:08	T
205	Data analyst	United Kingdom	HM Revenue and Customs	36.644┬á┬ú┬á/anno	04/05/2024 13:32:08	T
206	Data analyst	United Kingdom	THG	32.899┬á┬ú┬á/anno	04/05/2024 13:32:08	T
207	Data analyst	United Kingdom	Deloitte	43.135┬á┬ú┬á/anno	04/05/2024 13:32:08	T
208	Data analyst	United Kingdom	PwC	43.983┬á┬ú┬á/anno	04/05/2024 13:32:08	T
209	Data analyst	United Kingdom	NatWest Group	42.133┬á┬ú┬á/anno	04/05/2024 13:32:08	T
210	Data analyst	United Kingdom	OVO	44.108┬á┬ú┬á/anno	04/05/2024 13:32:08	T
211	Data analyst	United Kingdom	KPMG	32.939┬á┬ú┬á/anno	04/05/2024 13:32:08	T
212	Data analyst	United Kingdom	Octopus Energy	33.340┬á┬ú┬á/anno	04/05/2024 13:32:08	T
213	Data analyst	United Kingdom	Digital Futures	27.750┬á┬ú┬á/anno	04/05/2024 13:32:08	T
214	Data analyst	United Kingdom	Civil Service United Kingdom	39.987┬á┬ú┬á/anno	04/05/2024 13:32:08	T
215	Data analyst	United Kingdom	SelfEmployed.com	48.250┬á┬ú┬á/anno	04/05/2024 13:32:08	T
216	Data analyst	United Kingdom	Experian	30.794┬á┬ú┬á/anno	04/05/2024 13:32:08	T
217	Data analyst	United Kingdom	Ministry of Justice UK	42.075┬á┬ú┬á/anno	04/05/2024 13:32:08	T
218	Data analyst	United Kingdom	SainsburyÔÇÖs	36.364┬á┬ú┬á/anno	04/05/2024 13:32:08	T
219	Data analyst	United Kingdom	ITV	47.119┬á┬ú┬á/anno	04/05/2024 13:32:08	T
220	Data analyst	United Kingdom	Google	96.498┬á┬ú┬á/anno	04/05/2024 13:32:08	T
221	Data analyst	France	MYDRAL	44.085┬áÔé¼┬á/anno	04/05/2024 13:32:28	T
222	Data analyst	France	CGI	44.540┬áÔé¼┬á/anno	04/05/2024 13:32:28	T
223	Data analyst	France	Capgemini	42.700┬áÔé¼┬á/anno	04/05/2024 13:32:28	T
224	Data analyst	France	Orange	37.250┬áÔé¼┬á/anno	04/05/2024 13:32:28	T
225	Data analyst	France	BNP Paribas	47.075┬áÔé¼┬á/anno	04/05/2024 13:32:28	T
226	Data analyst	France	AKKODIS	39.375┬áÔé¼┬á/anno	04/05/2024 13:32:28	T
227	Data analyst	France	ALTEN	2.956┬áÔé¼┬á/mese	04/05/2024 13:32:28	T
228	Data analyst	France	TotalEnergies	3.247┬áÔé¼┬á/mese	04/05/2024 13:32:28	T
229	Data analyst	France	NTT DATA	39.333┬áÔé¼┬á/anno	04/05/2024 13:32:28	T
230	Data analyst	France	Airbus	45.830┬áÔé¼┬á/anno	04/05/2024 13:32:28	T
231	Data analyst	France	Carrefour	49.972┬áÔé¼┬á/anno	04/05/2024 13:32:28	T
232	Data analyst	France	SNCF	20┬áÔé¼┬á/ora	04/05/2024 13:32:28	T
233	Data analyst	France	Foxintelligence	41.622┬áÔé¼┬á/anno	04/05/2024 13:32:28	T
234	Data analyst	France	JEMS Group	43.700┬áÔé¼┬á/anno	04/05/2024 13:32:28	T
235	Data analyst	France	Ubisoft	44.333┬áÔé¼┬á/anno	04/05/2024 13:32:28	T
236	Data analyst	France	Cr├®dit Agricole	1.800┬áÔé¼┬á/mese	04/05/2024 13:32:28	T
237	Data analyst	France	Groupe BPCE	45.975┬áÔé¼┬á/anno	04/05/2024 13:32:28	T
238	Data analyst	France	EDF	1.315┬áÔé¼┬á/mese	04/05/2024 13:32:28	T
239	Data analyst	France	L'Or├®al	52.200┬áÔé¼┬á/anno	04/05/2024 13:32:28	T
240	Data analyst	France	L'Or├®al	2.328┬áÔé¼┬á/mese	04/05/2024 13:32:28	T
241	Data analyst	Brazil	Anheuser-Busch InBev	8.653┬áBRL┬á/mese	04/05/2024 13:32:47	T
242	Data analyst	Brazil	iFood	10.039┬áBRL┬á/mese	04/05/2024 13:32:47	T
243	Data analyst	Brazil	Hotmart	9.791┬áBRL┬á/mese	04/05/2024 13:32:47	T
244	Data analyst	Brazil	BTG Pactual	10.870┬áBRL┬á/mese	04/05/2024 13:32:47	T
245	Data analyst	Brazil	Deloitte	Circa┬á5847┬áBRL -6311┬áBRL	04/05/2024 13:32:47	T
246	Data analyst	Brazil	GFT Technologies	Circa┬á3291┬áBRL -9875┬áBRL	04/05/2024 13:32:47	T
247	Data analyst	Brazil	BEES	Circa┬á9095┬áBRL -11.266┬áBRL	04/05/2024 13:32:47	T
248	Data analyst	Brazil	Ita├║ Unibanco (Ita├║ BBA e Rede)	Circa┬á4294┬áBRL -17.584┬áBRL	04/05/2024 13:32:47	T
249	Data analyst	Brazil	Accenture	Circa┬á4267┬áBRL -6690┬áBRL	04/05/2024 13:32:47	T
250	Data analyst	Brazil	Seedz	Circa┬á5692┬áBRL -7104┬áBRL	04/05/2024 13:32:47	T
251	Data analyst	Brazil	Fhinck Business Solutions	Circa┬á4451┬áBRL -8307┬áBRL	04/05/2024 13:32:47	T
252	Data analyst	Brazil	Nestl├®	Circa┬á3873┬áBRL -6068┬áBRL	04/05/2024 13:32:47	T
253	Data analyst	Brazil	Sinch	Circa┬á6849┬áBRL -8309┬áBRL	04/05/2024 13:32:47	T
254	Data analyst	Brazil	Compass Uol	Circa┬á2456┬áBRL -6718┬áBRL	04/05/2024 13:32:47	T
255	Data analyst	Brazil	Zenvia	Circa┬á6888┬áBRL -8251┬áBRL	04/05/2024 13:32:47	T
256	Data analyst	Brazil	QuintoAndar	Circa┬á8004┬áBRL -9427┬áBRL	04/05/2024 13:32:47	T
257	Data analyst	Brazil	Pagar.me	Circa┬á5686┬áBRL -6759┬áBRL	04/05/2024 13:32:47	T
258	Data analyst	Brazil	Instituto das Cidades Inteligentes	Circa┬á2173┬áBRL -2558┬áBRL	04/05/2024 13:32:47	T
259	Data analyst	Brazil	Intelipost	Circa┬á9184┬áBRL -10.864┬áBRL	04/05/2024 13:32:47	T
260	Data analyst	Brazil	Frubana	Circa┬á5617┬áBRL -6632┬áBRL	04/05/2024 13:32:47	T
261	Data analyst	Italy	Deloitte	27.938┬áÔé¼┬á/anno	04/05/2024 13:33:06	T
262	Data analyst	Italy	Accenture	29.575┬áÔé¼┬á/anno	04/05/2024 13:33:06	T
263	Data analyst	Italy	EY	34.445┬áÔé¼┬á/anno	04/05/2024 13:33:06	T
264	Data analyst	Italy	SDG Group	26.821┬áÔé¼┬á/anno	04/05/2024 13:33:06	T
265	Data analyst	Italy	BitBang	Circa┬á21.274┬áÔé¼ -25.795┬áÔé¼	04/05/2024 13:33:06	T
266	Data analyst	Italy	Hyntelo	Circa┬á26.912┬áÔé¼ -28.842┬áÔé¼	04/05/2024 13:33:06	T
267	Data analyst	Italy	Enel	Circa┬á33.200┬áÔé¼ -45.994┬áÔé¼	04/05/2024 13:33:06	T
268	Data analyst	Italy	Nexi Group	Circa┬á39.313┬áÔé¼ -43.794┬áÔé¼	04/05/2024 13:33:06	T
269	Data analyst	Italy	KPMG	Circa┬á28.056┬áÔé¼ -31.064┬áÔé¼	04/05/2024 13:33:06	T
270	Data analyst	Italy	Google	Circa┬á39.852┬áÔé¼ -45.109┬áÔé¼	04/05/2024 13:33:06	T
271	Data analyst	Italy	Eni Spa	Circa┬á1904┬áÔé¼ -2624┬áÔé¼	04/05/2024 13:33:06	T
272	Data analyst	Italy	Regesta	Circa┬á25.575┬áÔé¼ -29.496┬áÔé¼	04/05/2024 13:33:06	T
273	Data analyst	Italy	Esselunga	Circa┬á32.372┬áÔé¼ -38.103┬áÔé¼	04/05/2024 13:33:06	T
274	Data analyst	Italy	Teoresi Group	Circa┬á28.841┬áÔé¼ -34.039┬áÔé¼	04/05/2024 13:33:06	T
275	Data analyst	Italy	ALD Automotive	Circa┬á26.726┬áÔé¼ -31.179┬áÔé¼	04/05/2024 13:33:06	T
276	Data analyst	Italy	Sysdata	Circa┬á1288┬áÔé¼ -1503┬áÔé¼	04/05/2024 13:33:07	T
277	Data analyst	Italy	TELEBIT	Circa┬á22.881┬áÔé¼ -26.635┬áÔé¼	04/05/2024 13:33:07	T
278	Data analyst	Italy	Soft Strategy	Circa┬á24.841┬áÔé¼ -29.004┬áÔé¼	04/05/2024 13:33:07	T
279	Data analyst	Italy	Azienda Agricola Marco Rossi	Circa┬á18.623┬áÔé¼ -21.616┬áÔé¼	04/05/2024 13:33:07	T
280	Data analyst	Italy	Unical Aviation	Circa┬á826┬áÔé¼ -975┬áÔé¼	04/05/2024 13:33:07	T
281	Mechanical Engineer	United States	Apple	192.102┬áUSD┬á/anno	04/05/2024 13:33:26	T
282	Mechanical Engineer	United States	Applied Materials	151.844┬áUSD┬á/anno	04/05/2024 13:33:26	T
283	Mechanical Engineer	United States	Northrop Grumman	107.208┬áUSD┬á/anno	04/05/2024 13:33:26	T
284	Mechanical Engineer	United States	SLB	92.767┬áUSD┬á/anno	04/05/2024 13:33:26	T
285	Mechanical Engineer	United States	NVIDIA	177.090┬áUSD┬á/anno	04/05/2024 13:33:26	T
286	Mechanical Engineer	United States	Lockheed Martin	109.801┬áUSD┬á/anno	04/05/2024 13:33:26	T
287	Mechanical Engineer	United States	Cyient	82.106┬áUSD┬á/anno	04/05/2024 13:33:26	T
288	Mechanical Engineer	United States	Boeing	110.413┬áUSD┬á/anno	04/05/2024 13:33:26	T
289	Mechanical Engineer	United States	Canoo	134.654┬áUSD┬á/anno	04/05/2024 13:33:26	T
290	Mechanical Engineer	United States	RTX	107.921┬áUSD┬á/anno	04/05/2024 13:33:26	T
291	Mechanical Engineer	United States	Tesla	129.009┬áUSD┬á/anno	04/05/2024 13:33:26	T
292	Mechanical Engineer	United States	Quest Global	84.685┬áUSD┬á/anno	04/05/2024 13:33:26	T
293	Mechanical Engineer	United States	Engineering Technology Associates	99.101┬áUSD┬á/anno	04/05/2024 13:33:26	T
294	Mechanical Engineer	United States	L3Harris	96.665┬áUSD┬á/anno	04/05/2024 13:33:26	T
295	Mechanical Engineer	United States	GE	112.543┬áUSD┬á/anno	04/05/2024 13:33:26	T
296	Mechanical Engineer	United States	Jacobs	97.261┬áUSD┬á/anno	04/05/2024 13:33:26	T
297	Mechanical Engineer	United States	Onward Technologies	92.591┬áUSD┬á/anno	04/05/2024 13:33:26	T
298	Mechanical Engineer	United States	HCLTech	74.733┬áUSD┬á/anno	04/05/2024 13:33:26	T
299	Mechanical Engineer	United States	L&T Technology Services	94.124┬áUSD┬á/anno	04/05/2024 13:33:26	T
300	Mechanical Engineer	United States	US Navy	95.427┬áUSD┬á/anno	04/05/2024 13:33:26	T
301	Mechanical Engineer	China	Microsoft	632.703┬áCN┬Ñ┬á/anno	04/05/2024 13:33:46	T
302	Mechanical Engineer	China	ABB	185.667┬áCN┬Ñ┬á/anno	04/05/2024 13:33:46	T
303	Mechanical Engineer	China	Huawei Technologies	Circa┬á21.732┬áCN┬Ñ -25.876┬áCN┬Ñ	04/05/2024 13:33:46	T
304	Mechanical Engineer	China	Schneider Electric	Circa┬á7982┬áCN┬Ñ -17.748┬áCN┬Ñ	04/05/2024 13:33:46	T
305	Mechanical Engineer	China	GE HealthCare	Circa┬á10.830┬áCN┬Ñ -17.205┬áCN┬Ñ	04/05/2024 13:33:46	T
306	Mechanical Engineer	China	Bosch	Circa┬á1434┬áCN┬Ñ -3733┬áCN┬Ñ	04/05/2024 13:33:46	T
307	Mechanical Engineer	China	Emerson	Circa┬á9504┬áCN┬Ñ -10.477┬áCN┬Ñ	04/05/2024 13:33:46	T
308	Mechanical Engineer	China	Air China	Circa┬á18.312┬áCN┬Ñ -24.149┬áCN┬Ñ	04/05/2024 13:33:46	T
309	Mechanical Engineer	China	Shanghai Electric	Circa┬á12.112┬áCN┬Ñ -16.449┬áCN┬Ñ	04/05/2024 13:33:46	T
310	Mechanical Engineer	China	LEAD	Circa┬á267.263┬áCN┬Ñ -26┬áMio┬áCN┬Ñ	04/05/2024 13:33:46	T
311	Mechanical Engineer	China	Saifei	Circa┬á5716┬áCN┬Ñ -6184┬áCN┬Ñ	04/05/2024 13:33:46	T
312	Mechanical Engineer	China	Desay SV Automotive	Circa┬á5717┬áCN┬Ñ -7120┬áCN┬Ñ	04/05/2024 13:33:46	T
313	Mechanical Engineer	China	China State Shipbuilding	Circa┬á6401┬áCN┬Ñ -13.354┬áCN┬Ñ	04/05/2024 13:33:46	T
314	Mechanical Engineer	China	Huawei Technologies	Circa┬á17.994┬áCN┬Ñ -21.170┬áCN┬Ñ	04/05/2024 13:33:46	T
315	Mechanical Engineer	China	Intel Corporation	Circa┬á9575┬áCN┬Ñ -11.207┬áCN┬Ñ	04/05/2024 13:33:46	T
316	Mechanical Engineer	China	Nokia	Circa┬á201.857┬áCN┬Ñ -237.365┬áCN┬Ñ	04/05/2024 13:33:46	T
317	Mechanical Engineer	China	Apple	Circa┬á278.743┬áCN┬Ñ -326.345┬áCN┬Ñ	04/05/2024 13:33:46	T
318	Mechanical Engineer	China	Dell Technologies	Circa┬á108.774┬áCN┬Ñ -132.003┬áCN┬Ñ	04/05/2024 13:33:46	T
319	Mechanical Engineer	China	Tsinghua University	Circa┬á56.024┬áCN┬Ñ -64.771┬áCN┬Ñ	04/05/2024 13:33:46	T
320	Mechanical Engineer	China	Siemens	Circa┬á92.432┬áCN┬Ñ -108.434┬áCN┬Ñ	04/05/2024 13:33:46	T
321	Mechanical Engineer	Japan	Honda	7.076.218┬áJPY┬á/anno	04/05/2024 13:34:24	T
322	Mechanical Engineer	Japan	Mitsubishi	395.000┬áJPY┬á/mese	04/05/2024 13:34:24	T
323	Mechanical Engineer	Japan	Nissan	5.563.957┬áJPY┬á/anno	04/05/2024 13:34:24	T
324	Mechanical Engineer	Japan	ASM	5.235.429┬áJPY┬á/anno	04/05/2024 13:34:24	T
325	Mechanical Engineer	Japan	WHILL	5.333.333┬áJPY┬á/anno	04/05/2024 13:34:24	T
326	Mechanical Engineer	Japan	Hitachi	Circa┬á5┬áMio┬áJPY -8┬áMio┬áJPY	04/05/2024 13:34:24	T
327	Mechanical Engineer	Japan	Toyota Motor Corporation	Circa┬á409.046┬áJPY -596.762┬áJPY	04/05/2024 13:34:24	T
328	Mechanical Engineer	Japan	Valeo	Circa┬á237.319┬áJPY -604.182┬áJPY	04/05/2024 13:34:24	T
329	Mechanical Engineer	Japan	Chiyoda Corporation	Circa┬á455.682┬áJPY -699.014┬áJPY	04/05/2024 13:34:24	T
330	Mechanical Engineer	Japan	Konica Minolta	Circa┬á289.530┬áJPY -399.334┬áJPY	04/05/2024 13:34:24	T
331	Mechanical Engineer	Japan	Sony Mobile Communications	Circa┬á6┬áMio┬áJPY -8┬áMio┬áJPY	04/05/2024 13:34:24	T
332	Mechanical Engineer	Japan	NSK	Circa┬á332.592┬áJPY -436.210┬áJPY	04/05/2024 13:34:24	T
333	Mechanical Engineer	Japan	Caterpillar	Circa┬á7┬áMio┬áJPY -8┬áMio┬áJPY	04/05/2024 13:34:24	T
334	Mechanical Engineer	Japan	Yamada Dobby	Circa┬á315.702┬áJPY -1┬áMio┬áJPY	04/05/2024 13:34:24	T
335	Mechanical Engineer	Japan	Shiotani Glass	Circa┬á254.845┬áJPY -486.369┬áJPY	04/05/2024 13:34:24	T
336	Mechanical Engineer	Japan	University of Tokyo	Circa┬á5┬áMio┬áJPY -6┬áMio┬áJPY	04/05/2024 13:34:24	T
337	Mechanical Engineer	Japan	Sony	Circa┬á6┬áMio┬áJPY -7┬áMio┬áJPY	04/05/2024 13:34:24	T
338	Mechanical Engineer	Japan	Toshiba	Circa┬á257.407┬áJPY -305.226┬áJPY	04/05/2024 13:34:24	T
339	Mechanical Engineer	Japan	Apple	Circa┬á8┬áMio┬áJPY -9┬áMio┬áJPY	04/05/2024 13:34:24	T
340	Mechanical Engineer	Japan	Robert Bosch	Circa┬á5┬áMio┬áJPY -6┬áMio┬áJPY	04/05/2024 13:34:24	T
341	Mechanical Engineer	India	Rolls-Royce	93.418┬áUSD┬á/anno	04/05/2024 13:34:45	T
342	Mechanical Engineer	India	Cummins	101.864┬áUSD┬á/anno	04/05/2024 13:34:45	T
343	Mechanical Engineer	India	Mussett Nicholas + Associates	82.421┬áUSD┬á/anno	04/05/2024 13:34:45	T
344	Mechanical Engineer	India	Allison Transmission	90.620┬áUSD┬á/anno	04/05/2024 13:34:45	T
345	Mechanical Engineer	India	Eli Lilly and Company	105.374┬áUSD┬á/anno	04/05/2024 13:34:45	T
346	Mechanical Engineer	India	Carrier	90.013┬áUSD┬á/anno	04/05/2024 13:34:45	T
347	Mechanical Engineer	India	Quest Global	79.819┬áUSD┬á/anno	04/05/2024 13:34:45	T
348	Mechanical Engineer	India	dormakaba	89.592┬áUSD┬á/anno	04/05/2024 13:34:45	T
1668	IT Manager	Germany	Tesla	62.667┬áÔé¼┬á/anno	04/05/2024 14:00:38	T
349	Mechanical Engineer	India	Allegion	93.838┬áUSD┬á/anno	04/05/2024 13:34:45	T
350	Mechanical Engineer	India	Montronix	92.687┬áUSD┬á/anno	04/05/2024 13:34:45	T
351	Mechanical Engineer	India	BSA LifeStructures	81.019┬áUSD┬á/anno	04/05/2024 13:34:45	T
352	Mechanical Engineer	India	Purdue University	78.097┬áUSD┬á/anno	04/05/2024 13:34:45	T
353	Mechanical Engineer	India	Beckman Coulter Diagnostics	90.299┬áUSD┬á/anno	04/05/2024 13:34:45	T
354	Mechanical Engineer	India	VOXX International	78.996┬áUSD┬á/anno	04/05/2024 13:34:45	T
355	Mechanical Engineer	India	Citizens Energy Group	97.482┬áUSD┬á/anno	04/05/2024 13:34:45	T
356	Mechanical Engineer	India	Naval Surface Warfare Center	103.555┬áUSD┬á/anno	04/05/2024 13:34:45	T
357	Mechanical Engineer	India	Heapy Engineering	78.817┬áUSD┬á/anno	04/05/2024 13:34:45	T
358	Mechanical Engineer	India	Specialty Coating Systems	85.049┬áUSD┬á/anno	04/05/2024 13:34:45	T
359	Mechanical Engineer	India	Caterpillar	103.861┬áUSD┬á/anno	04/05/2024 13:34:45	T
360	Mechanical Engineer	India	Performance Services Inc.	77.235┬áUSD┬á/anno	04/05/2024 13:34:45	T
361	Mechanical Engineer	United Kingdom	Atkins	37.517┬á┬ú┬á/anno	04/05/2024 13:35:07	T
362	Mechanical Engineer	United Kingdom	Arup	34.353┬á┬ú┬á/anno	04/05/2024 13:35:07	T
363	Mechanical Engineer	United Kingdom	Rolls-Royce	42.328┬á┬ú┬á/anno	04/05/2024 13:35:07	T
364	Mechanical Engineer	United Kingdom	Babcock International Group	 xx.xxx┬á┬ú┬á/anno	04/05/2024 13:35:07	T
365	Mechanical Engineer	United Kingdom	Royal Air Force	 xx.xxx┬á┬ú┬á/anno	04/05/2024 13:35:07	T
366	Mechanical Engineer	United Kingdom	BAE Systems	 xx.xxx┬á┬ú┬á/anno	04/05/2024 13:35:07	T
367	Mechanical Engineer	United Kingdom	Dyson	 xx.xxx┬á┬ú┬á/anno	04/05/2024 13:35:07	T
368	Mechanical Engineer	United Kingdom	Hoare Lea	 xx.xxx┬á┬ú┬á/anno	04/05/2024 13:35:07	T
369	Mechanical Engineer	United Kingdom	Jaguar Land Rover	 xx.xxx┬á┬ú┬á/anno	04/05/2024 13:35:07	T
370	Mechanical Engineer	United Kingdom	Jacobs	 xx.xxx┬á┬ú┬á/anno	04/05/2024 13:35:07	T
371	Mechanical Engineer	United Kingdom	AWE	 xx.xxx┬á┬ú┬á/anno	04/05/2024 13:35:07	T
372	Mechanical Engineer	United Kingdom	Mott MacDonald	 xx.xxx┬á┬ú┬á/anno	04/05/2024 13:35:07	T
373	Mechanical Engineer	United Kingdom	The British Army	 xx.xxx┬á┬ú┬á/anno	04/05/2024 13:35:07	T
374	Mechanical Engineer	United Kingdom	AECOM	 xx.xxx┬á┬ú┬á/anno	04/05/2024 13:35:07	T
375	Mechanical Engineer	United Kingdom	ALTEN	 xx.xxx┬á┬ú┬á/anno	04/05/2024 13:35:07	T
376	Mechanical Engineer	United Kingdom	Cavendish Nuclear	 xx.xxx┬á┬ú┬á/anno	04/05/2024 13:35:07	T
377	Mechanical Engineer	United Kingdom	bp	 xxx.xxx┬á┬ú┬á/anno	04/05/2024 13:35:07	T
378	Mechanical Engineer	United Kingdom	Royal Navy	 xx.xxx┬á┬ú┬á/anno	04/05/2024 13:35:07	T
379	Mechanical Engineer	United Kingdom	DCA Design	 xx.xxx┬á┬ú┬á/anno	04/05/2024 13:35:07	T
380	Mechanical Engineer	United Kingdom	EDF	 xx.xxx┬á┬ú┬á/anno	04/05/2024 13:35:07	T
381	Mechanical Engineer	France	Safran	44.243┬áÔé¼┬á/anno	04/05/2024 13:35:30	T
382	Mechanical Engineer	France	SLB	54.766┬áÔé¼┬á/anno	04/05/2024 13:35:30	T
383	Mechanical Engineer	France	ALTEN	36.000┬áÔé¼┬á/anno	04/05/2024 13:35:30	T
384	Mechanical Engineer	France	ALSTOM	42.362┬áÔé¼┬á/anno	04/05/2024 13:35:30	T
385	Mechanical Engineer	France	Capgemini Engineering	2.520┬áÔé¼┬á/mese	04/05/2024 13:35:30	T
386	Mechanical Engineer	France	AKKA Technologies	36.375┬áÔé¼┬á/anno	04/05/2024 13:35:30	T
387	Mechanical Engineer	France	Valeo	21.766┬áÔé¼┬á/anno	04/05/2024 13:35:30	T
388	Mechanical Engineer	France	Expleo Group	37.383┬áÔé¼┬á/anno	04/05/2024 13:35:30	T
389	Mechanical Engineer	France	Segula Technologies Group	41.183┬áÔé¼┬á/anno	04/05/2024 13:35:30	T
390	Mechanical Engineer	France	Robert Bosch	40.333┬áÔé¼┬á/anno	04/05/2024 13:35:30	T
391	Mechanical Engineer	France	ITER	61.267┬áÔé¼┬á/anno	04/05/2024 13:35:30	T
392	Mechanical Engineer	France	Capgemini	Circa┬á33.737┬áÔé¼ -51.305┬áÔé¼	04/05/2024 13:35:30	T
393	Mechanical Engineer	France	TotalEnergies	Circa┬á47.907┬áÔé¼ -52.594┬áÔé¼	04/05/2024 13:35:30	T
394	Mechanical Engineer	France	Airbus	Circa┬á36.333┬áÔé¼ -44.481┬áÔé¼	04/05/2024 13:35:30	T
395	Mechanical Engineer	France	Stellantis	Circa┬á34.859┬áÔé¼ -41.331┬áÔé¼	04/05/2024 13:35:30	T
396	Mechanical Engineer	France	Orano	Circa┬á39.248┬áÔé¼ -42.432┬áÔé¼	04/05/2024 13:35:30	T
397	Mechanical Engineer	France	GE HealthCare	Circa┬á35.254┬áÔé¼ -43.347┬áÔé¼	04/05/2024 13:35:30	T
398	Mechanical Engineer	France	Kickmaker	Circa┬á43.173┬áÔé¼ -48.710┬áÔé¼	04/05/2024 13:35:30	T
399	Mechanical Engineer	France	eCential Robotics	Circa┬á2191┬áÔé¼ -3182┬áÔé¼	04/05/2024 13:35:30	T
400	Mechanical Engineer	France	ALTEN	Circa┬á37.541┬áÔé¼ -42.618┬áÔé¼	04/05/2024 13:35:30	T
401	Mechanical Engineer	Brazil	Embraer	13.820┬áBRL┬á/mese	04/05/2024 13:35:50	T
402	Mechanical Engineer	Brazil	Petrobras	15.387┬áBRL┬á/mese	04/05/2024 13:35:50	T
403	Mechanical Engineer	Brazil	General Motors (GM)	10.567┬áBRL┬á/mese	04/05/2024 13:35:50	T
404	Mechanical Engineer	Brazil	Stellantis	14.138┬áBRL┬á/mese	04/05/2024 13:35:50	T
405	Mechanical Engineer	Brazil	Volvo Group	13.833┬áBRL┬á/mese	04/05/2024 13:35:50	T
406	Mechanical Engineer	Brazil	GE	Circa┬á5192┬áBRL -11.795┬áBRL	04/05/2024 13:35:50	T
407	Mechanical Engineer	Brazil	Renault Group	Circa┬á5302┬áBRL -8565┬áBRL	04/05/2024 13:35:50	T
408	Mechanical Engineer	Brazil	TechnipFMC	Circa┬á11.413┬áBRL -13.215┬áBRL	04/05/2024 13:35:50	T
409	Mechanical Engineer	Brazil	AGCO	Circa┬á11.099┬áBRL -12.560┬áBRL	04/05/2024 13:35:50	T
410	Mechanical Engineer	Brazil	Baker Hughes	Circa┬á14.538┬áBRL -16.587┬áBRL	04/05/2024 13:35:50	T
411	Mechanical Engineer	Brazil	Aker Solutions	Circa┬á8068┬áBRL -8809┬áBRL	04/05/2024 13:35:50	T
412	Mechanical Engineer	Brazil	ALSTOM	Circa┬á5258┬áBRL -9905┬áBRL	04/05/2024 13:35:50	T
413	Mechanical Engineer	Brazil	SLB	Circa┬á1607┬áBRL -16.751┬áBRL	04/05/2024 13:35:50	T
414	Mechanical Engineer	Brazil	MSX International	Circa┬á8067┬áBRL -8907┬áBRL	04/05/2024 13:35:50	T
415	Mechanical Engineer	Brazil	Voith	Circa┬á15.348┬áBRL -19.051┬áBRL	04/05/2024 13:35:50	T
416	Mechanical Engineer	Brazil	SBM Offshore	Circa┬á17.386┬áBRL -22.409┬áBRL	04/05/2024 13:35:50	T
417	Mechanical Engineer	Brazil	NOV	Circa┬á13.437┬áBRL -19.413┬áBRL	04/05/2024 13:35:50	T
418	Mechanical Engineer	Brazil	Amazul	Circa┬á6767┬áBRL -9838┬áBRL	04/05/2024 13:35:50	T
419	Mechanical Engineer	Brazil	Brasfond Group	Circa┬á8715┬áBRL -9622┬áBRL	04/05/2024 13:35:50	T
420	Mechanical Engineer	Brazil	Centro Brasileiro de Engenharia e Sistemas	Circa┬á8129┬áBRL -8811┬áBRL	04/05/2024 13:35:50	T
421	Mechanical Engineer	Italy	ALTEN	39.365┬áÔé¼┬á/anno	04/05/2024 13:36:09	T
422	Mechanical Engineer	Italy	Ferrari	37.410┬áÔé¼┬á/anno	04/05/2024 13:36:09	T
423	Mechanical Engineer	Italy	Baker Hughes	41.190┬áÔé¼┬á/anno	04/05/2024 13:36:09	T
424	Mechanical Engineer	Italy	Leonardo	33.795┬áÔé¼┬á/anno	04/05/2024 13:36:09	T
425	Mechanical Engineer	Italy	Politecnico di Torino	1.302┬áÔé¼┬á/mese	04/05/2024 13:36:09	T
426	Mechanical Engineer	Italy	Saipem	46.557┬áÔé¼┬á/anno	04/05/2024 13:36:09	T
427	Mechanical Engineer	Italy	Avio Aero	37.750┬áÔé¼┬á/anno	04/05/2024 13:36:09	T
428	Mechanical Engineer	Italy	Sidel	12.188┬áÔé¼┬á/anno	04/05/2024 13:36:09	T
429	Mechanical Engineer	Italy	Politecnico di Milano	21.833┬áÔé¼┬á/anno	04/05/2024 13:36:09	T
430	Mechanical Engineer	Italy	Enel	33.321┬áÔé¼┬á/anno	04/05/2024 13:36:09	T
431	Mechanical Engineer	Italy	Stellantis	32.000┬áÔé¼┬á/anno	04/05/2024 13:36:09	T
432	Mechanical Engineer	Italy	Pirelli	33.500┬áÔé¼┬á/anno	04/05/2024 13:36:09	T
433	Mechanical Engineer	Italy	Brembo	38.333┬áÔé¼┬á/anno	04/05/2024 13:36:09	T
434	Mechanical Engineer	Italy	Electrolux	36.450┬áÔé¼┬á/anno	04/05/2024 13:36:09	T
435	Mechanical Engineer	Italy	Ansaldo Energia	35.625┬áÔé¼┬á/anno	04/05/2024 13:36:09	T
436	Mechanical Engineer	Italy	Nokia	34.325┬áÔé¼┬á/anno	04/05/2024 13:36:09	T
437	Mechanical Engineer	Italy	BIESSE	30.667┬áÔé¼┬á/anno	04/05/2024 13:36:09	T
438	Mechanical Engineer	Italy	TMC	109.972┬áÔé¼┬á/anno	04/05/2024 13:36:09	T
439	Mechanical Engineer	Italy	Exyte Group	44.667┬áÔé¼┬á/anno	04/05/2024 13:36:09	T
440	Mechanical Engineer	Italy	Nessuna	Circa┬á1183┬áÔé¼ -1719┬áÔé¼	04/05/2024 13:36:09	T
441	Mechanical Engineer	China	Microsoft	632.703┬áCN┬Ñ┬á/anno	04/05/2024 13:36:46	T
442	Mechanical Engineer	China	ABB	185.667┬áCN┬Ñ┬á/anno	04/05/2024 13:36:46	T
443	Mechanical Engineer	China	Huawei Technologies	Circa┬á21.732┬áCN┬Ñ -25.876┬áCN┬Ñ	04/05/2024 13:36:46	T
444	Mechanical Engineer	China	Schneider Electric	Circa┬á7982┬áCN┬Ñ -17.748┬áCN┬Ñ	04/05/2024 13:36:46	T
445	Mechanical Engineer	China	GE HealthCare	Circa┬á10.830┬áCN┬Ñ -17.205┬áCN┬Ñ	04/05/2024 13:36:46	T
446	Mechanical Engineer	China	Bosch	Circa┬á1434┬áCN┬Ñ -3733┬áCN┬Ñ	04/05/2024 13:36:46	T
447	Mechanical Engineer	China	Emerson	Circa┬á9504┬áCN┬Ñ -10.477┬áCN┬Ñ	04/05/2024 13:36:46	T
448	Mechanical Engineer	China	Air China	Circa┬á18.312┬áCN┬Ñ -24.149┬áCN┬Ñ	04/05/2024 13:36:46	T
449	Mechanical Engineer	China	Shanghai Electric	Circa┬á12.112┬áCN┬Ñ -16.449┬áCN┬Ñ	04/05/2024 13:36:46	T
450	Mechanical Engineer	China	LEAD	Circa┬á267.263┬áCN┬Ñ -26┬áMio┬áCN┬Ñ	04/05/2024 13:36:46	T
451	Mechanical Engineer	China	Saifei	Circa┬á5716┬áCN┬Ñ -6184┬áCN┬Ñ	04/05/2024 13:36:46	T
452	Mechanical Engineer	China	Desay SV Automotive	Circa┬á5717┬áCN┬Ñ -7120┬áCN┬Ñ	04/05/2024 13:36:46	T
453	Mechanical Engineer	China	China State Shipbuilding	Circa┬á6401┬áCN┬Ñ -13.354┬áCN┬Ñ	04/05/2024 13:36:46	T
454	Mechanical Engineer	China	Huawei Technologies	Circa┬á17.994┬áCN┬Ñ -21.170┬áCN┬Ñ	04/05/2024 13:36:46	T
455	Mechanical Engineer	China	Intel Corporation	Circa┬á9575┬áCN┬Ñ -11.207┬áCN┬Ñ	04/05/2024 13:36:46	T
456	Mechanical Engineer	China	Nokia	Circa┬á201.857┬áCN┬Ñ -237.365┬áCN┬Ñ	04/05/2024 13:36:46	T
457	Mechanical Engineer	China	Apple	Circa┬á278.743┬áCN┬Ñ -326.345┬áCN┬Ñ	04/05/2024 13:36:46	T
458	Mechanical Engineer	China	Dell Technologies	Circa┬á108.774┬áCN┬Ñ -132.003┬áCN┬Ñ	04/05/2024 13:36:46	T
459	Mechanical Engineer	China	Tsinghua University	Circa┬á56.024┬áCN┬Ñ -64.771┬áCN┬Ñ	04/05/2024 13:36:46	T
460	Mechanical Engineer	China	Siemens	Circa┬á92.432┬áCN┬Ñ -108.434┬áCN┬Ñ	04/05/2024 13:36:46	T
461	Mechanical Engineer	Germany	BMW Group	61.972┬áÔé¼┬á/anno	04/05/2024 13:37:07	T
462	Mechanical Engineer	Germany	Mercedes-Benz Group	500.867┬áÔé¼┬á/anno	04/05/2024 13:37:07	T
463	Mechanical Engineer	Germany	Volkswagen Group	5.777┬áÔé¼┬á/mese	04/05/2024 13:37:07	T
464	Mechanical Engineer	Germany	Siemens	71.429┬áÔé¼┬á/anno	04/05/2024 13:37:07	T
465	Mechanical Engineer	Germany	Robert Bosch	69.292┬áÔé¼┬á/anno	04/05/2024 13:37:07	T
466	Mechanical Engineer	Germany	BMW Group	26.988┬áÔé¼┬á/anno	04/05/2024 13:37:07	T
467	Mechanical Engineer	Germany	Tesla	80.871┬áÔé¼┬á/anno	04/05/2024 13:37:07	T
468	Mechanical Engineer	Germany	Airbus	60.117┬áÔé¼┬á/anno	04/05/2024 13:37:07	T
469	Mechanical Engineer	Germany	Bertrandt	71.458┬áÔé¼┬á/anno	04/05/2024 13:37:07	T
470	Mechanical Engineer	Germany	Mercedes-Benz International	70.001┬áÔé¼┬á/anno	04/05/2024 13:37:07	T
471	Mechanical Engineer	Germany	Baker Hughes	63.181┬áÔé¼┬á/anno	04/05/2024 13:37:07	T
472	Mechanical Engineer	Germany	Ford Motor Company	7.271┬áÔé¼┬á/mese	04/05/2024 13:37:07	T
473	Mechanical Engineer	Germany	Arup	59.652┬áÔé¼┬á/anno	04/05/2024 13:37:07	T
474	Mechanical Engineer	Germany	Franka Emika	62.294┬áÔé¼┬á/anno	04/05/2024 13:37:07	T
475	Mechanical Engineer	Germany	Robert Bosch	977┬áÔé¼┬á/mese	04/05/2024 13:37:07	T
476	Mechanical Engineer	Germany	Airbus	750┬áÔé¼┬á/mese	04/05/2024 13:37:07	T
477	Mechanical Engineer	Germany	RWTH Aachen University	13┬áÔé¼┬á/ora	04/05/2024 13:37:07	T
478	Mechanical Engineer	Germany	Audi	26┬áÔé¼┬á/ora	04/05/2024 13:37:07	T
479	Mechanical Engineer	Germany	ALTEN	51.962┬áÔé¼┬á/anno	04/05/2024 13:37:07	T
480	Mechanical Engineer	Germany	Valeo	66.000┬áÔé¼┬á/anno	04/05/2024 13:37:07	T
481	Mechanical Engineer	Japan	Honda	7.076.218┬áJPY┬á/anno	04/05/2024 13:37:26	T
482	Mechanical Engineer	Japan	Mitsubishi	395.000┬áJPY┬á/mese	04/05/2024 13:37:26	T
483	Mechanical Engineer	Japan	Nissan	5.563.957┬áJPY┬á/anno	04/05/2024 13:37:26	T
484	Mechanical Engineer	Japan	ASM	5.235.429┬áJPY┬á/anno	04/05/2024 13:37:26	T
485	Mechanical Engineer	Japan	WHILL	5.333.333┬áJPY┬á/anno	04/05/2024 13:37:26	T
486	Mechanical Engineer	Japan	Hitachi	Circa┬á5┬áMio┬áJPY -8┬áMio┬áJPY	04/05/2024 13:37:26	T
487	Mechanical Engineer	Japan	Toyota Motor Corporation	Circa┬á409.046┬áJPY -596.762┬áJPY	04/05/2024 13:37:26	T
488	Mechanical Engineer	Japan	Valeo	Circa┬á237.319┬áJPY -604.182┬áJPY	04/05/2024 13:37:26	T
489	Mechanical Engineer	Japan	Chiyoda Corporation	Circa┬á455.682┬áJPY -699.014┬áJPY	04/05/2024 13:37:26	T
490	Mechanical Engineer	Japan	Konica Minolta	Circa┬á289.530┬áJPY -399.334┬áJPY	04/05/2024 13:37:26	T
491	Mechanical Engineer	Japan	Sony Mobile Communications	Circa┬á6┬áMio┬áJPY -8┬áMio┬áJPY	04/05/2024 13:37:26	T
492	Mechanical Engineer	Japan	NSK	Circa┬á332.592┬áJPY -436.210┬áJPY	04/05/2024 13:37:26	T
493	Mechanical Engineer	Japan	Caterpillar	Circa┬á7┬áMio┬áJPY -8┬áMio┬áJPY	04/05/2024 13:37:26	T
494	Mechanical Engineer	Japan	Yamada Dobby	Circa┬á315.702┬áJPY -1┬áMio┬áJPY	04/05/2024 13:37:26	T
495	Mechanical Engineer	Japan	Shiotani Glass	Circa┬á254.845┬áJPY -486.369┬áJPY	04/05/2024 13:37:27	T
496	Mechanical Engineer	Japan	University of Tokyo	Circa┬á5┬áMio┬áJPY -6┬áMio┬áJPY	04/05/2024 13:37:27	T
497	Mechanical Engineer	Japan	Sony	Circa┬á6┬áMio┬áJPY -7┬áMio┬áJPY	04/05/2024 13:37:27	T
498	Mechanical Engineer	Japan	Toshiba	Circa┬á257.407┬áJPY -305.226┬áJPY	04/05/2024 13:37:27	T
499	Mechanical Engineer	Japan	Apple	Circa┬á8┬áMio┬áJPY -9┬áMio┬áJPY	04/05/2024 13:37:27	T
500	Mechanical Engineer	Japan	Robert Bosch	Circa┬á5┬áMio┬áJPY -6┬áMio┬áJPY	04/05/2024 13:37:27	T
501	Mechanical Engineer	India	Rolls-Royce	93.418┬áUSD┬á/anno	04/05/2024 13:37:47	T
502	Mechanical Engineer	India	Cummins	101.864┬áUSD┬á/anno	04/05/2024 13:37:47	T
503	Mechanical Engineer	India	Mussett Nicholas + Associates	82.421┬áUSD┬á/anno	04/05/2024 13:37:47	T
504	Mechanical Engineer	India	Allison Transmission	90.620┬áUSD┬á/anno	04/05/2024 13:37:47	T
505	Mechanical Engineer	India	Eli Lilly and Company	105.374┬áUSD┬á/anno	04/05/2024 13:37:47	T
506	Mechanical Engineer	India	Carrier	90.013┬áUSD┬á/anno	04/05/2024 13:37:47	T
507	Mechanical Engineer	India	Quest Global	79.819┬áUSD┬á/anno	04/05/2024 13:37:47	T
508	Mechanical Engineer	India	dormakaba	89.592┬áUSD┬á/anno	04/05/2024 13:37:47	T
509	Mechanical Engineer	India	Allegion	93.838┬áUSD┬á/anno	04/05/2024 13:37:47	T
510	Mechanical Engineer	India	Montronix	92.687┬áUSD┬á/anno	04/05/2024 13:37:47	T
511	Mechanical Engineer	India	BSA LifeStructures	81.019┬áUSD┬á/anno	04/05/2024 13:37:47	T
512	Mechanical Engineer	India	Purdue University	78.097┬áUSD┬á/anno	04/05/2024 13:37:47	T
513	Mechanical Engineer	India	Beckman Coulter Diagnostics	90.299┬áUSD┬á/anno	04/05/2024 13:37:47	T
514	Mechanical Engineer	India	VOXX International	78.996┬áUSD┬á/anno	04/05/2024 13:37:47	T
515	Mechanical Engineer	India	Citizens Energy Group	97.482┬áUSD┬á/anno	04/05/2024 13:37:47	T
516	Mechanical Engineer	India	Naval Surface Warfare Center	103.555┬áUSD┬á/anno	04/05/2024 13:37:47	T
517	Mechanical Engineer	India	Heapy Engineering	78.817┬áUSD┬á/anno	04/05/2024 13:37:47	T
518	Mechanical Engineer	India	Specialty Coating Systems	85.049┬áUSD┬á/anno	04/05/2024 13:37:47	T
519	Mechanical Engineer	India	Caterpillar	103.861┬áUSD┬á/anno	04/05/2024 13:37:47	T
520	Mechanical Engineer	India	Performance Services Inc.	77.235┬áUSD┬á/anno	04/05/2024 13:37:47	T
521	Mechanical Engineer	United Kingdom	Atkins	37.517┬á┬ú┬á/anno	04/05/2024 13:38:10	T
522	Mechanical Engineer	United Kingdom	Arup	34.353┬á┬ú┬á/anno	04/05/2024 13:38:10	T
523	Mechanical Engineer	United Kingdom	Rolls-Royce	42.328┬á┬ú┬á/anno	04/05/2024 13:38:10	T
524	Mechanical Engineer	United Kingdom	Babcock International Group	 xx.xxx┬á┬ú┬á/anno	04/05/2024 13:38:10	T
525	Mechanical Engineer	United Kingdom	Royal Air Force	 xx.xxx┬á┬ú┬á/anno	04/05/2024 13:38:10	T
526	Mechanical Engineer	United Kingdom	BAE Systems	 xx.xxx┬á┬ú┬á/anno	04/05/2024 13:38:10	T
527	Mechanical Engineer	United Kingdom	Dyson	 xx.xxx┬á┬ú┬á/anno	04/05/2024 13:38:10	T
528	Mechanical Engineer	United Kingdom	Hoare Lea	 xx.xxx┬á┬ú┬á/anno	04/05/2024 13:38:10	T
529	Mechanical Engineer	United Kingdom	Jaguar Land Rover	 xx.xxx┬á┬ú┬á/anno	04/05/2024 13:38:10	T
530	Mechanical Engineer	United Kingdom	Jacobs	 xx.xxx┬á┬ú┬á/anno	04/05/2024 13:38:10	T
531	Mechanical Engineer	United Kingdom	AWE	 xx.xxx┬á┬ú┬á/anno	04/05/2024 13:38:10	T
532	Mechanical Engineer	United Kingdom	Mott MacDonald	 xx.xxx┬á┬ú┬á/anno	04/05/2024 13:38:10	T
533	Mechanical Engineer	United Kingdom	The British Army	 xx.xxx┬á┬ú┬á/anno	04/05/2024 13:38:10	T
534	Mechanical Engineer	United Kingdom	AECOM	 xx.xxx┬á┬ú┬á/anno	04/05/2024 13:38:10	T
535	Mechanical Engineer	United Kingdom	ALTEN	 xx.xxx┬á┬ú┬á/anno	04/05/2024 13:38:10	T
536	Mechanical Engineer	United Kingdom	Cavendish Nuclear	 xx.xxx┬á┬ú┬á/anno	04/05/2024 13:38:10	T
537	Mechanical Engineer	United Kingdom	bp	 xxx.xxx┬á┬ú┬á/anno	04/05/2024 13:38:10	T
538	Mechanical Engineer	United Kingdom	Royal Navy	 xx.xxx┬á┬ú┬á/anno	04/05/2024 13:38:10	T
539	Mechanical Engineer	United Kingdom	DCA Design	 xx.xxx┬á┬ú┬á/anno	04/05/2024 13:38:10	T
540	Mechanical Engineer	United Kingdom	EDF	 xx.xxx┬á┬ú┬á/anno	04/05/2024 13:38:10	T
541	Mechanical Engineer	France	Safran	44.243┬áÔé¼┬á/anno	04/05/2024 13:38:29	T
542	Mechanical Engineer	France	SLB	54.766┬áÔé¼┬á/anno	04/05/2024 13:38:29	T
543	Mechanical Engineer	France	ALTEN	36.000┬áÔé¼┬á/anno	04/05/2024 13:38:29	T
544	Mechanical Engineer	France	ALSTOM	42.362┬áÔé¼┬á/anno	04/05/2024 13:38:29	T
545	Mechanical Engineer	France	Capgemini Engineering	2.520┬áÔé¼┬á/mese	04/05/2024 13:38:29	T
546	Mechanical Engineer	France	AKKA Technologies	36.375┬áÔé¼┬á/anno	04/05/2024 13:38:29	T
547	Mechanical Engineer	France	Valeo	21.766┬áÔé¼┬á/anno	04/05/2024 13:38:29	T
548	Mechanical Engineer	France	Expleo Group	37.383┬áÔé¼┬á/anno	04/05/2024 13:38:29	T
549	Mechanical Engineer	France	Segula Technologies Group	41.183┬áÔé¼┬á/anno	04/05/2024 13:38:29	T
550	Mechanical Engineer	France	Robert Bosch	40.333┬áÔé¼┬á/anno	04/05/2024 13:38:29	T
551	Mechanical Engineer	France	ITER	61.267┬áÔé¼┬á/anno	04/05/2024 13:38:29	T
552	Mechanical Engineer	France	Capgemini	Circa┬á33.737┬áÔé¼ -51.305┬áÔé¼	04/05/2024 13:38:29	T
553	Mechanical Engineer	France	TotalEnergies	Circa┬á47.907┬áÔé¼ -52.594┬áÔé¼	04/05/2024 13:38:29	T
554	Mechanical Engineer	France	Airbus	Circa┬á36.333┬áÔé¼ -44.481┬áÔé¼	04/05/2024 13:38:29	T
555	Mechanical Engineer	France	Stellantis	Circa┬á34.859┬áÔé¼ -41.331┬áÔé¼	04/05/2024 13:38:29	T
556	Mechanical Engineer	France	Orano	Circa┬á39.248┬áÔé¼ -42.432┬áÔé¼	04/05/2024 13:38:29	T
557	Mechanical Engineer	France	GE HealthCare	Circa┬á35.254┬áÔé¼ -43.347┬áÔé¼	04/05/2024 13:38:29	T
558	Mechanical Engineer	France	Kickmaker	Circa┬á43.173┬áÔé¼ -48.710┬áÔé¼	04/05/2024 13:38:29	T
559	Mechanical Engineer	France	eCential Robotics	Circa┬á2191┬áÔé¼ -3182┬áÔé¼	04/05/2024 13:38:29	T
560	Mechanical Engineer	France	ALTEN	Circa┬á37.541┬áÔé¼ -42.618┬áÔé¼	04/05/2024 13:38:29	T
561	Mechanical Engineer	Italy	ALTEN	39.365┬áÔé¼┬á/anno	04/05/2024 13:39:07	T
562	Mechanical Engineer	Italy	Ferrari	37.410┬áÔé¼┬á/anno	04/05/2024 13:39:07	T
563	Mechanical Engineer	Italy	Baker Hughes	41.190┬áÔé¼┬á/anno	04/05/2024 13:39:07	T
564	Mechanical Engineer	Italy	Leonardo	33.795┬áÔé¼┬á/anno	04/05/2024 13:39:07	T
565	Mechanical Engineer	Italy	Politecnico di Torino	1.302┬áÔé¼┬á/mese	04/05/2024 13:39:07	T
566	Mechanical Engineer	Italy	Saipem	46.557┬áÔé¼┬á/anno	04/05/2024 13:39:07	T
567	Mechanical Engineer	Italy	Avio Aero	37.750┬áÔé¼┬á/anno	04/05/2024 13:39:07	T
568	Mechanical Engineer	Italy	Sidel	12.188┬áÔé¼┬á/anno	04/05/2024 13:39:07	T
569	Mechanical Engineer	Italy	Politecnico di Milano	21.833┬áÔé¼┬á/anno	04/05/2024 13:39:07	T
570	Mechanical Engineer	Italy	Enel	33.321┬áÔé¼┬á/anno	04/05/2024 13:39:07	T
571	Mechanical Engineer	Italy	Stellantis	32.000┬áÔé¼┬á/anno	04/05/2024 13:39:07	T
572	Mechanical Engineer	Italy	Pirelli	33.500┬áÔé¼┬á/anno	04/05/2024 13:39:07	T
573	Mechanical Engineer	Italy	Brembo	38.333┬áÔé¼┬á/anno	04/05/2024 13:39:07	T
574	Mechanical Engineer	Italy	Electrolux	36.450┬áÔé¼┬á/anno	04/05/2024 13:39:07	T
575	Mechanical Engineer	Italy	Ansaldo Energia	35.625┬áÔé¼┬á/anno	04/05/2024 13:39:07	T
576	Mechanical Engineer	Italy	Nokia	34.325┬áÔé¼┬á/anno	04/05/2024 13:39:07	T
577	Mechanical Engineer	Italy	BIESSE	30.667┬áÔé¼┬á/anno	04/05/2024 13:39:07	T
578	Mechanical Engineer	Italy	TMC	109.972┬áÔé¼┬á/anno	04/05/2024 13:39:07	T
579	Mechanical Engineer	Italy	Exyte Group	44.667┬áÔé¼┬á/anno	04/05/2024 13:39:07	T
580	Mechanical Engineer	Italy	Nessuna	Circa┬á1183┬áÔé¼ -1719┬áÔé¼	04/05/2024 13:39:07	T
581	Technician	United States	US Forest Service	24┬áUSD┬á/ora	04/05/2024 13:39:27	T
582	Technician	United States	Comcast	27┬áUSD┬á/ora	04/05/2024 13:39:27	T
583	Technician	United States	Apple	31┬áUSD┬á/ora	04/05/2024 13:39:27	T
584	Technician	United States	AT&T	67.215┬áUSD┬á/anno	04/05/2024 13:39:27	T
585	Technician	United States	DISH	23┬áUSD┬á/ora	04/05/2024 13:39:27	T
586	Technician	United States	Aerotek	63.147┬áUSD┬á/anno	04/05/2024 13:39:27	T
587	Technician	United States	CVS Health	20┬áUSD┬á/ora	04/05/2024 13:39:27	T
588	Technician	United States	Safelite AutoGlass	22┬áUSD┬á/ora	04/05/2024 13:39:27	T
589	Technician	United States	uBreakiFix	19┬áUSD┬á/ora	04/05/2024 13:39:27	T
590	Technician	United States	Spectrum	25┬áUSD┬á/ora	04/05/2024 13:39:27	T
591	Technician	United States	Walmart	22┬áUSD┬á/ora	04/05/2024 13:39:27	T
592	Technician	United States	Discount Tire	22┬áUSD┬á/ora	04/05/2024 13:39:27	T
593	Technician	United States	Procter & Gamble	27┬áUSD┬á/ora	04/05/2024 13:39:27	T
594	Technician	United States	Asurion	21┬áUSD┬á/ora	04/05/2024 13:39:27	T
595	Technician	United States	Valvoline Instant Oil Change	20┬áUSD┬á/ora	04/05/2024 13:39:27	T
596	Technician	United States	Jiffy Lube	20┬áUSD┬á/ora	04/05/2024 13:39:27	T
597	Technician	United States	US Navy	56.793┬áUSD┬á/anno	04/05/2024 13:39:27	T
598	Technician	United States	Amazon	25┬áUSD┬á/ora	04/05/2024 13:39:27	T
599	Technician	United States	Tesla	28┬áUSD┬á/ora	04/05/2024 13:39:27	T
600	Technician	United States	Fusion Medical Staffing	4.281┬áUSD┬á/mese	04/05/2024 13:39:27	T
601	Technician	China	Shenwan Hongyuan	Circa┬á190.204┬áCN┬Ñ -207.330┬áCN┬Ñ	04/05/2024 13:39:46	T
602	Technician	China	Tianjin Petrochemical	Circa┬á47.775┬áCN┬Ñ -62.845┬áCN┬Ñ	04/05/2024 13:39:46	T
603	Technician	China	Alibaba Group	Circa┬á559.048┬áCN┬Ñ -647.507┬áCN┬Ñ	04/05/2024 13:39:46	T
604	Technician	China	Baidu	Circa┬á9317┬áCN┬Ñ -10.652┬áCN┬Ñ	04/05/2024 13:39:46	T
605	Technician	China	Bank of China	Circa┬á459.064┬áCN┬Ñ -537.358┬áCN┬Ñ	04/05/2024 13:39:46	T
606	Technician	China	Xiaomi	Circa┬á565.616┬áCN┬Ñ -662.999┬áCN┬Ñ	04/05/2024 13:39:46	T
607	Technician	China	Industrial and Commercial Bank of China	Circa┬á240.669┬áCN┬Ñ -280.868┬áCN┬Ñ	04/05/2024 13:39:46	T
608	Technician	China	XJTLU	Circa┬á7410┬áCN┬Ñ -8702┬áCN┬Ñ	04/05/2024 13:39:46	T
609	Technician	China	Ping An Insurance	Circa┬á64.911┬áCN┬Ñ -75.786┬áCN┬Ñ	04/05/2024 13:39:46	T
610	Technician	China	Peking University	Circa┬á5412┬áCN┬Ñ -6379┬áCN┬Ñ	04/05/2024 13:39:46	T
611	Technician	China	Zhejiang University	Circa┬á91.307┬áCN┬Ñ -107.684┬áCN┬Ñ	04/05/2024 13:39:46	T
612	Technician	China	IKEA	Circa┬á510.480┬áCN┬Ñ -597.249┬áCN┬Ñ	04/05/2024 13:39:46	T
613	Technician	China	DJI	Circa┬á251.410┬áCN┬Ñ -298.733┬áCN┬Ñ	04/05/2024 13:39:46	T
614	Technician	China	Weibo	Circa┬á4514┬áCN┬Ñ -5245┬áCN┬Ñ	04/05/2024 13:39:46	T
615	Technician	China	Jabil	Circa┬á5305┬áCN┬Ñ -6247┬áCN┬Ñ	04/05/2024 13:39:46	T
616	Technician	China	Shanghai Construction Group	Circa┬á131.376┬áCN┬Ñ -152.443┬áCN┬Ñ	04/05/2024 13:39:46	T
617	Technician	China	bp	Circa┬á183.431┬áCN┬Ñ -214.929┬áCN┬Ñ	04/05/2024 13:39:46	T
618	Technician	China	Shanghai Fushan Zhengda Foreign Language Primary School	Circa┬á18.272┬áCN┬Ñ -21.787┬áCN┬Ñ	04/05/2024 13:39:46	T
619	Technician	China	maimai education	Circa┬á91.226┬áCN┬Ñ -108.657┬áCN┬Ñ	04/05/2024 13:39:46	T
620	Technician	China	Firmenich	Circa┬á7376┬áCN┬Ñ -8663┬áCN┬Ñ	04/05/2024 13:39:46	T
621	Technician	Germany	D├Âhler	3.340┬áÔé¼┬á/mese	04/05/2024 13:40:06	T
622	Technician	Germany	Porsche	67.436┬áÔé¼┬á/anno	04/05/2024 13:40:06	T
623	Technician	Germany	Procter & Gamble	3.017┬áÔé¼┬á/mese	04/05/2024 13:40:06	T
624	Technician	Germany	Computacenter	38.333┬áÔé¼┬á/anno	04/05/2024 13:40:06	T
625	Technician	Germany	Bavarian Nordic	41.867┬áÔé¼┬á/anno	04/05/2024 13:40:06	T
626	Technician	Germany	Amazon	Circa┬á28.802┬áÔé¼ -53.908┬áÔé¼	04/05/2024 13:40:06	T
627	Technician	Germany	Mercedes-Benz Group	Circa┬á1916┬áÔé¼ -5567┬áÔé¼	04/05/2024 13:40:06	T
628	Technician	Germany	Bertrandt	Circa┬á2411┬áÔé¼ -3624┬áÔé¼	04/05/2024 13:40:06	T
629	Technician	Germany	thyssenkrupp	Circa┬á3642┬áÔé¼ -4274┬áÔé¼	04/05/2024 13:40:06	T
630	Technician	Germany	Huawei Technologies	Circa┬á44.130┬áÔé¼ -56.688┬áÔé¼	04/05/2024 13:40:06	T
631	Technician	Germany	OTTO	Circa┬á2683┬áÔé¼ -5233┬áÔé¼	04/05/2024 13:40:06	T
632	Technician	Germany	Beiersdorf	Circa┬á47.974┬áÔé¼ -57.390┬áÔé¼	04/05/2024 13:40:06	T
633	Technician	Germany	Helmholtz Zentrum M├╝nchen	Circa┬á36.627┬áÔé¼ -50.032┬áÔé¼	04/05/2024 13:40:06	T
634	Technician	Germany	Munich Re	Circa┬á4273┬áÔé¼ -4848┬áÔé¼	04/05/2024 13:40:06	T
635	Technician	Germany	Johnson Controls	Circa┬á2897┬áÔé¼ -5412┬áÔé¼	04/05/2024 13:40:06	T
636	Technician	Germany	Lilium	Circa┬á62.019┬áÔé¼ -70.603┬áÔé¼	04/05/2024 13:40:06	T
637	Technician	Germany	Equinix	Circa┬á3183┬áÔé¼ -3548┬áÔé¼	04/05/2024 13:40:06	T
638	Technician	Germany	CureVac	Circa┬á36.121┬áÔé¼ -69.808┬áÔé¼	04/05/2024 13:40:06	T
639	Technician	Germany	Tec Repair	Circa┬á2074┬áÔé¼ -2601┬áÔé¼	04/05/2024 13:40:06	T
640	Technician	Germany	CYNORA	Circa┬á41.358┬áÔé¼ -50.584┬áÔé¼	04/05/2024 13:40:06	T
641	Technician	Japan	Equinix	4.333.334┬áJPY┬á/anno	04/05/2024 13:40:27	T
642	Technician	Japan	Okinawa Institute of Science and Technology Graduate University	Circa┬á3┬áMio┬áJPY -4┬áMio┬áJPY	04/05/2024 13:40:27	T
643	Technician	Japan	ABC	Circa┬á182.600┬áJPY -222.454┬áJPY	04/05/2024 13:40:27	T
644	Technician	Japan	Microsoft	Circa┬á6┬áMio┬áJPY -7┬áMio┬áJPY	04/05/2024 13:40:27	T
645	Technician	Japan	Amazon Web Services	Circa┬á4┬áMio┬áJPY -4┬áMio┬áJPY	04/05/2024 13:40:27	T
646	Technician	Japan	Apple	Circa┬á5┬áMio┬áJPY -5┬áMio┬áJPY	04/05/2024 13:40:27	T
647	Technician	Japan	Cisco	Circa┬á7┬áMio┬áJPY -9┬áMio┬áJPY	04/05/2024 13:40:27	T
648	Technician	Japan	AIST	Circa┬á2┬áMio┬áJPY -3┬áMio┬áJPY	04/05/2024 13:40:27	T
649	Technician	Japan	ABC	Circa┬á196.494┬áJPY -229.801┬áJPY	04/05/2024 13:40:27	T
650	Technician	Japan	Tokyo University of Science	Circa┬á2┬áMio┬áJPY -3┬áMio┬áJPY	04/05/2024 13:40:27	T
651	Technician	Japan	Asahi Kasei	Circa┬á12┬áMio┬áJPY -14┬áMio┬áJPY	04/05/2024 13:40:27	T
652	Technician	Japan	DONE by NONE	Circa┬á922┬áJPY -1071┬áJPY┬áoraria	04/05/2024 13:40:27	T
653	Technician	Japan	RIKEN Brain Science Institute	Circa┬á3┬áMio┬áJPY -3┬áMio┬áJPY	04/05/2024 13:40:27	T
654	Technician	Japan	American Engineering (Japan)	Circa┬á222.828┬áJPY -260.251┬áJPY	04/05/2024 13:40:27	T
655	Technician	Japan	Kansai Medical University	Circa┬á231.965┬áJPY -275.269┬áJPY	04/05/2024 13:40:27	T
656	Technician	Japan	VadoTech Private	Circa┬á6┬áMio┬áJPY -7┬áMio┬áJPY	04/05/2024 13:40:27	T
657	Technician	Japan	Hays Travel	Circa┬á3┬áMio┬áJPY -3┬áMio┬áJPY	04/05/2024 13:40:27	T
658	Technician	Japan	Ulta Beauty	Circa┬á5┬áMio┬áJPY -6┬áMio┬áJPY	04/05/2024 13:40:27	T
659	Technician	Japan	ASSA ABLOY Group	Circa┬á3┬áMio┬áJPY -3┬áMio┬áJPY	04/05/2024 13:40:27	T
660	Technician	Japan	Bilal	Circa┬á6┬áMio┬áJPY -7┬áMio┬áJPY	04/05/2024 13:40:27	T
661	Technician	India	DISH	23┬áUSD┬á/ora	04/05/2024 13:40:48	T
662	Technician	India	Comcast	26┬áUSD┬á/ora	04/05/2024 13:40:48	T
663	Technician	India	New Era Technology (NY)	24┬áUSD┬á/ora	04/05/2024 13:40:48	T
664	Technician	India	Koorsen Fire & Security	23┬áUSD┬á/ora	04/05/2024 13:40:48	T
665	Technician	India	Corteva Agriscience	58.254┬áUSD┬á/anno	04/05/2024 13:40:48	T
666	Technician	India	IUPUI	49.672┬áUSD┬á/anno	04/05/2024 13:40:48	T
667	Technician	India	Markey's	28┬áUSD┬á/ora	04/05/2024 13:40:48	T
668	Technician	India	Applied Composites	24┬áUSD┬á/ora	04/05/2024 13:40:48	T
669	Technician	India	MacAllister Machinery	26┬áUSD┬á/ora	04/05/2024 13:40:48	T
670	Technician	India	Medxcel	58.419┬áUSD┬á/anno	04/05/2024 13:40:48	T
671	Technician	India	Tom Wood Group	26┬áUSD┬á/ora	04/05/2024 13:40:48	T
672	Technician	India	Vivint	44.403┬áUSD┬á/anno	04/05/2024 13:40:48	T
673	Technician	India	Tynan Equipment	26┬áUSD┬á/ora	04/05/2024 13:40:48	T
674	Technician	India	Cummins	61.978┬áUSD┬á/anno	04/05/2024 13:40:48	T
675	Technician	India	CVS Health	19┬áUSD┬á/ora	04/05/2024 13:40:48	T
676	Technician	India	USIC	25┬áUSD┬á/ora	04/05/2024 13:40:48	T
677	Technician	India	CARVANA	43.629┬áUSD┬á/anno	04/05/2024 13:40:48	T
678	Technician	India	TNT Services	22┬áUSD┬á/ora	04/05/2024 13:40:48	T
679	Technician	India	Spectrum	51.748┬áUSD┬á/anno	04/05/2024 13:40:49	T
680	Technician	India	Heritage-Crystal Clean LLC	23┬áUSD┬á/ora	04/05/2024 13:40:49	T
681	Technician	France	EDF	2.804┬áÔé¼┬á/mese	04/05/2024 13:41:27	T
682	Technician	France	Orange	35.235┬áÔé¼┬á/anno	04/05/2024 13:41:27	T
683	Technician	France	SPIE	27.198┬áÔé¼┬á/anno	04/05/2024 13:41:27	T
684	Technician	France	Capgemini Engineering	27.107┬áÔé¼┬á/anno	04/05/2024 13:41:27	T
685	Technician	France	Renault Group	30.348┬áÔé¼┬á/anno	04/05/2024 13:41:27	T
686	Technician	France	ENGIE	2.032┬áÔé¼┬á/mese	04/05/2024 13:41:27	T
687	Technician	France	Sanofi	38.386┬áÔé¼┬á/anno	04/05/2024 13:41:27	T
688	Technician	France	SUEZ	2.239┬áÔé¼┬á/mese	04/05/2024 13:41:27	T
689	Technician	France	Thales	35.596┬áÔé¼┬á/anno	04/05/2024 13:41:27	T
690	Technician	France	Enedis	3.097┬áÔé¼┬á/mese	04/05/2024 13:41:27	T
691	Technician	France	Airbus	30.663┬áÔé¼┬á/anno	04/05/2024 13:41:27	T
692	Technician	France	ENGIE Solutions	2.503┬áÔé¼┬á/mese	04/05/2024 13:41:27	T
693	Technician	France	Altran Technologies	28.243┬áÔé¼┬á/anno	04/05/2024 13:41:27	T
694	Technician	France	OVHcloud	1.974┬áÔé¼┬á/mese	04/05/2024 13:41:27	T
695	Technician	France	Air France	2.966┬áÔé¼┬á/mese	04/05/2024 13:41:27	T
696	Technician	France	Eiffage	2.135┬áÔé¼┬á/mese	04/05/2024 13:41:27	T
697	Technician	France	Dalkia	5.181┬áÔé¼┬á/mese	04/05/2024 13:41:27	T
698	Technician	France	CEA	2.000┬áÔé¼┬á/mese	04/05/2024 13:41:27	T
699	Technician	France	SNCF	23.062┬áÔé¼┬á/anno	04/05/2024 13:41:27	T
700	Technician	France	Stellantis	2.684┬áÔé¼┬á/mese	04/05/2024 13:41:27	T
701	Technician	Brazil	Claro	2.707┬áBRL┬á/mese	04/05/2024 13:41:49	T
702	Technician	Brazil	BASF	6.091┬áBRL┬á/mese	04/05/2024 13:41:49	T
703	Technician	Brazil	Equinix	4.367┬áBRL┬á/mese	04/05/2024 13:41:49	T
704	Technician	Brazil	Jabil	1.000┬áBRL┬á/mese	04/05/2024 13:41:49	T
705	Technician	Brazil	Petrobras	8.250┬áBRL┬á/mese	04/05/2024 13:41:49	T
706	Technician	Brazil	Ambev	4.849┬áBRL┬á/mese	04/05/2024 13:41:49	T
707	Technician	Brazil	ArcelorMittal	3.711┬áBRL┬á/mese	04/05/2024 13:41:49	T
708	Technician	Brazil	Vestas Wind Systems	3.084┬áBRL┬á/mese	04/05/2024 13:41:49	T
709	Technician	Brazil	Klabin	4.879┬áBRL┬á/mese	04/05/2024 13:41:49	T
710	Technician	Brazil	Estaleiro Jurong Aracruz	Circa┬á5180┬áBRL -7226┬áBRL	04/05/2024 13:41:49	T
711	Technician	Brazil	Petrobras Energ├¡a	Circa┬á4827┬áBRL -8280┬áBRL	04/05/2024 13:41:49	T
712	Technician	Brazil	CEMIG	Circa┬á2850┬áBRL -3221┬áBRL	04/05/2024 13:41:49	T
713	Technician	Brazil	Tecsa├║de Engenharia Hospitalar	Circa┬á1636┬áBRL -2833┬áBRL	04/05/2024 13:41:50	T
714	Technician	Brazil	Grupo Globo	Circa┬á4154┬áBRL -5396┬áBRL	04/05/2024 13:41:50	T
715	Technician	Brazil	Universidade de S├úo Paulo (USP)	Circa┬á3974┬áBRL -445.074┬áBRL	04/05/2024 13:41:50	T
716	Technician	Brazil	Seal Telecom	Circa┬á1713┬áBRL -4218┬áBRL	04/05/2024 13:41:50	T
717	Technician	Brazil	IBGE	Circa┬á4324┬áBRL -5217┬áBRL	04/05/2024 13:41:50	T
718	Technician	Brazil	Serede	Circa┬á2321┬áBRL -4283┬áBRL	04/05/2024 13:41:50	T
719	Technician	Brazil	Johnson Controls	Circa┬á1163┬áBRL -3178┬áBRL	04/05/2024 13:41:50	T
720	Technician	Brazil	Vale	Circa┬á3876┬áBRL -5723┬áBRL	04/05/2024 13:41:50	T
721	Technician	Italy	Italian Institute of Technology	26.000┬áÔé¼┬á/anno	04/05/2024 13:42:09	T
722	Technician	Italy	Accenture	Circa┬á33.569┬áÔé¼ -41.295┬áÔé¼	04/05/2024 13:42:09	T
723	Technician	Italy	Amazon	Circa┬á1591┬áÔé¼ -2739┬áÔé¼	04/05/2024 13:42:09	T
724	Technician	Italy	KPMG	Circa┬á20.283┬áÔé¼ -36.205┬áÔé¼	04/05/2024 13:42:09	T
725	Technician	Italy	Leonardo	Circa┬á32.776┬áÔé¼ -41.911┬áÔé¼	04/05/2024 13:42:09	T
726	Technician	Italy	Eni Spa	Circa┬á3129┬áÔé¼ -5229┬áÔé¼	04/05/2024 13:42:09	T
727	Technician	Italy	ABB	Circa┬á1490┬áÔé¼ -3916┬áÔé¼	04/05/2024 13:42:09	T
728	Technician	Italy	Italian Institute of Technology	Circa┬á26.390┬áÔé¼ -31.612┬áÔé¼	04/05/2024 13:42:09	T
729	Technician	Italy	Google	Circa┬á8┬áÔé¼ -21┬áÔé¼┬áoraria	04/05/2024 13:42:09	T
730	Technician	Italy	Sielte	Circa┬á19.374┬áÔé¼ -21.943┬áÔé¼	04/05/2024 13:42:09	T
731	Technician	Italy	Ministero della Difesa	Circa┬á1820┬áÔé¼ -2148┬áÔé¼	04/05/2024 13:42:09	T
732	Technician	Italy	CommScope	Circa┬á38.783┬áÔé¼ -41.254┬áÔé¼	04/05/2024 13:42:09	T
733	Technician	Italy	Amazon	Circa┬á36.489┬áÔé¼ -41.708┬áÔé¼	04/05/2024 13:42:09	T
734	Technician	Italy	Poste Italiane	Circa┬á27.027┬áÔé¼ -31.514┬áÔé¼	04/05/2024 13:42:09	T
735	Technician	Italy	NTT DATA	Circa┬á830┬áÔé¼ -974┬áÔé¼	04/05/2024 13:42:09	T
736	Technician	Italy	Eni Spa	Circa┬á22.917┬áÔé¼ -27.057┬áÔé¼	04/05/2024 13:42:09	T
737	Technician	Italy	STMicroelectronics	Circa┬á27.352┬áÔé¼ -32.236┬áÔé¼	04/05/2024 13:42:09	T
738	Technician	Italy	Adecco	Circa┬á29.890┬áÔé¼ -35.778┬áÔé¼	04/05/2024 13:42:09	T
739	Technician	Italy	Gucci	Circa┬á826┬áÔé¼ -981┬áÔé¼	04/05/2024 13:42:09	T
740	Technician	Italy	Carrefour	Circa┬á36.754┬áÔé¼ -43.233┬áÔé¼	04/05/2024 13:42:09	T
741	Sales Manager	United States	Macy's	53.896┬áUSD┬á/anno	04/05/2024 13:42:29	T
742	Sales Manager	United States	Staples	53.105┬áUSD┬á/anno	04/05/2024 13:42:29	T
743	Sales Manager	United States	AT&T	113.683┬áUSD┬á/anno	04/05/2024 13:42:29	T
744	Sales Manager	United States	Marriott International	75.564┬áUSD┬á/anno	04/05/2024 13:42:29	T
745	Sales Manager	United States	Apple	249.022┬áUSD┬á/anno	04/05/2024 13:42:29	T
746	Sales Manager	United States	CarMax	110.885┬áUSD┬á/anno	04/05/2024 13:42:29	T
747	Sales Manager	United States	Best Buy	71.895┬áUSD┬á/anno	04/05/2024 13:42:29	T
748	Sales Manager	United States	Aaron's	32┬áUSD┬á/ora	04/05/2024 13:42:29	T
749	Sales Manager	United States	AcceptanceNOW	24┬áUSD┬á/ora	04/05/2024 13:42:30	T
750	Sales Manager	United States	Mattress Firm	123.076┬áUSD┬á/anno	04/05/2024 13:42:30	T
751	Sales Manager	United States	Hilton	77.000┬áUSD┬á/anno	04/05/2024 13:42:30	T
752	Sales Manager	United States	Altria	106.121┬áUSD┬á/anno	04/05/2024 13:42:30	T
753	Sales Manager	United States	Hyatt	76.326┬áUSD┬á/anno	04/05/2024 13:42:30	T
754	Sales Manager	United States	Encore Global	90.153┬áUSD┬á/anno	04/05/2024 13:42:30	T
755	Sales Manager	United States	Brookdale Senior Living	89.095┬áUSD┬á/anno	04/05/2024 13:42:30	T
756	Sales Manager	United States	Verizon	106.743┬áUSD┬á/anno	04/05/2024 13:42:30	T
757	Sales Manager	United States	Rent-A-Center	31┬áUSD┬á/ora	04/05/2024 13:42:30	T
758	Sales Manager	United States	Google	348.883┬áUSD┬á/anno	04/05/2024 13:42:30	T
759	Sales Manager	United States	Sunglass Hut	23┬áUSD┬á/ora	04/05/2024 13:42:30	T
760	Sales Manager	United States	Harbor Freight Tools	26┬áUSD┬á/ora	04/05/2024 13:42:30	T
761	Sales Manager	China	Huawei Technologies	377.333┬áCN┬Ñ┬á/anno	04/05/2024 13:42:50	T
762	Sales Manager	China	Ericsson-Worldwide	32.228┬áCN┬Ñ┬á/mese	04/05/2024 13:42:50	T
1669	IT Manager	Germany	Allianz	86.704┬áÔé¼┬á/anno	04/05/2024 14:00:38	T
763	Sales Manager	China	Industrial and Commercial Bank of China	21.909┬áCN┬Ñ┬á/mese	04/05/2024 13:42:50	T
764	Sales Manager	China	Siemens	29.444┬áCN┬Ñ┬á/mese	04/05/2024 13:42:50	T
765	Sales Manager	China	GE	213.333┬áCN┬Ñ┬á/anno	04/05/2024 13:42:50	T
766	Sales Manager	China	Hilton	11.011┬áCN┬Ñ┬á/mese	04/05/2024 13:42:50	T
767	Sales Manager	China	Hyatt	7.056┬áCN┬Ñ┬á/mese	04/05/2024 13:42:50	T
768	Sales Manager	China	3M	531.333┬áCN┬Ñ┬á/anno	04/05/2024 13:42:50	T
769	Sales Manager	China	The Luxury Properties Showcase	15.711┬áCN┬Ñ┬á/mese	04/05/2024 13:42:50	T
770	Sales Manager	China	Amazon	Circa┬á19.313┬áCN┬Ñ -43.708┬áCN┬Ñ	04/05/2024 13:42:50	T
771	Sales Manager	China	Nokia	Circa┬á145.416┬áCN┬Ñ -206.686┬áCN┬Ñ	04/05/2024 13:42:50	T
772	Sales Manager	China	Oracle	Circa┬á23.595┬áCN┬Ñ -94.683┬áCN┬Ñ	04/05/2024 13:42:50	T
773	Sales Manager	China	Meltwater	Circa┬á22.513┬áCN┬Ñ -375.676┬áCN┬Ñ	04/05/2024 13:42:50	T
774	Sales Manager	China	Valeo	Circa┬á10┬áCN┬Ñ -119┬áCN┬Ñ┬áoraria	04/05/2024 13:42:50	T
775	Sales Manager	China	STMicroelectronics	Circa┬á191.798┬áCN┬Ñ -218.656┬áCN┬Ñ	04/05/2024 13:42:50	T
776	Sales Manager	China	Abbott	Circa┬á11.610┬áCN┬Ñ -19.256┬áCN┬Ñ	04/05/2024 13:42:50	T
777	Sales Manager	China	INS Global	Circa┬á16.248┬áCN┬Ñ -17.809┬áCN┬Ñ	04/05/2024 13:42:50	T
778	Sales Manager	China	AppsFlyer	Circa┬á35.155┬áCN┬Ñ -38.279┬áCN┬Ñ	04/05/2024 13:42:50	T
779	Sales Manager	China	Linde	Circa┬á20.731┬áCN┬Ñ -31.446┬áCN┬Ñ	04/05/2024 13:42:50	T
780	Sales Manager	China	Avazu DSP	Circa┬á17.257┬áCN┬Ñ -24.626┬áCN┬Ñ	04/05/2024 13:42:50	T
781	Sales Manager	Germany	Enpal	116.755┬áÔé¼┬á/anno	04/05/2024 13:43:10	T
782	Sales Manager	Germany	Keyence	79.878┬áÔé¼┬á/anno	04/05/2024 13:43:10	T
783	Sales Manager	Germany	homify	3.898┬áÔé¼┬á/mese	04/05/2024 13:43:10	T
784	Sales Manager	Germany	Siemens	78.087┬áÔé¼┬á/anno	04/05/2024 13:43:10	T
785	Sales Manager	Germany	Zalando	57.691┬áÔé¼┬á/anno	04/05/2024 13:43:10	T
786	Sales Manager	Germany	Doctolib	80.059┬áÔé¼┬á/anno	04/05/2024 13:43:10	T
787	Sales Manager	Germany	Vodafone	93.647┬áÔé¼┬á/anno	04/05/2024 13:43:10	T
788	Sales Manager	Germany	we.CONECT	32.254┬áÔé¼┬á/anno	04/05/2024 13:43:10	T
789	Sales Manager	Germany	Str├Âer Group	58.742┬áÔé¼┬á/anno	04/05/2024 13:43:10	T
790	Sales Manager	Germany	SAP	162.875┬áÔé¼┬á/anno	04/05/2024 13:43:10	T
791	Sales Manager	Germany	Continental	71.086┬áÔé¼┬á/anno	04/05/2024 13:43:10	T
792	Sales Manager	Germany	BMW Group	73.847┬áÔé¼┬á/anno	04/05/2024 13:43:10	T
793	Sales Manager	Germany	Page Group (London)	56.520┬áÔé¼┬á/anno	04/05/2024 13:43:10	T
794	Sales Manager	Germany	thyssenkrupp	67.174┬áÔé¼┬á/anno	04/05/2024 13:43:10	T
795	Sales Manager	Germany	eGENTIC	53.223┬áÔé¼┬á/anno	04/05/2024 13:43:10	T
796	Sales Manager	Germany	Google	150.909┬áÔé¼┬á/anno	04/05/2024 13:43:10	T
797	Sales Manager	Germany	Movinga	7.945┬áÔé¼┬á/mese	04/05/2024 13:43:10	T
798	Sales Manager	Germany	W├╝rth	56.837┬áÔé¼┬á/anno	04/05/2024 13:43:10	T
799	Sales Manager	Germany	Wolt	50.424┬áÔé¼┬á/anno	04/05/2024 13:43:10	T
800	Sales Manager	Germany	T-Systems	84.419┬áÔé¼┬á/anno	04/05/2024 13:43:10	T
801	Sales Manager	India	Angi	145.361┬áUSD┬á/anno	04/05/2024 13:43:49	T
802	Sales Manager	India	Macy's	54.297┬áUSD┬á/anno	04/05/2024 13:43:49	T
803	Sales Manager	India	Staples	53.135┬áUSD┬á/anno	04/05/2024 13:43:49	T
804	Sales Manager	India	AcceptanceNOW	48.179┬áUSD┬á/anno	04/05/2024 13:43:49	T
805	Sales Manager	India	Gannett	129.921┬áUSD┬á/anno	04/05/2024 13:43:49	T
806	Sales Manager	India	AT&T	119.182┬áUSD┬á/anno	04/05/2024 13:43:49	T
807	Sales Manager	India	Tire Discounters	45┬áUSD┬á/ora	04/05/2024 13:43:49	T
808	Sales Manager	India	Value City Furniture	107.156┬áUSD┬á/anno	04/05/2024 13:43:49	T
809	Sales Manager	India	Aaron's	32┬áUSD┬á/ora	04/05/2024 13:43:49	T
810	Sales Manager	India	White Lodging	87.623┬áUSD┬á/anno	04/05/2024 13:43:49	T
811	Sales Manager	India	Weekends Only Furniture & Mattress	119.149┬áUSD┬á/anno	04/05/2024 13:43:49	T
812	Sales Manager	India	CarMax	106.411┬áUSD┬á/anno	04/05/2024 13:43:49	T
813	Sales Manager	India	Spearhead Mobility	151.981┬áUSD┬á/anno	04/05/2024 13:43:49	T
814	Sales Manager	India	FinishMaster	115.702┬áUSD┬á/anno	04/05/2024 13:43:49	T
815	Sales Manager	India	Bob Rohrman Auto	152.035┬áUSD┬á/anno	04/05/2024 13:43:49	T
816	Sales Manager	India	Arbor Homes	207.159┬áUSD┬á/anno	04/05/2024 13:43:49	T
817	Sales Manager	India	Saks Fifth Avenue Stores (SFA)	56.982┬áUSD┬á/anno	04/05/2024 13:43:49	T
818	Sales Manager	India	Hilton	70.500┬áUSD┬á/anno	04/05/2024 13:43:49	T
819	Sales Manager	India	Rent-A-Center	67.625┬áUSD┬á/anno	04/05/2024 13:43:49	T
820	Sales Manager	India	The Roomplace	86.805┬áUSD┬á/anno	04/05/2024 13:43:49	T
821	Sales Manager	United Kingdom	Currys	32.459┬á┬ú┬á/anno	04/05/2024 13:44:10	T
822	Sales Manager	United Kingdom	NEXT	24.431┬á┬ú┬á/anno	04/05/2024 13:44:10	T
823	Sales Manager	United Kingdom	Debenhams	26.525┬á┬ú┬á/anno	04/05/2024 13:44:10	T
824	Sales Manager	United Kingdom	The Range	21.968┬á┬ú┬á/anno	04/05/2024 13:44:10	T
825	Sales Manager	United Kingdom	David Lloyd Clubs	445.034┬á┬ú┬á/anno	04/05/2024 13:44:10	T
826	Sales Manager	United Kingdom	BT Group	81.679┬á┬ú┬á/anno	04/05/2024 13:44:10	T
827	Sales Manager	United Kingdom	Tesco	46.278┬á┬ú┬á/anno	04/05/2024 13:44:10	T
828	Sales Manager	United Kingdom	Vodafone	88.337┬á┬ú┬á/anno	04/05/2024 13:44:10	T
829	Sales Manager	United Kingdom	Revolution Bars Group	30.102┬á┬ú┬á/anno	04/05/2024 13:44:10	T
830	Sales Manager	United Kingdom	Betfred	10┬á┬ú┬á/ora	04/05/2024 13:44:10	T
831	Sales Manager	United Kingdom	Tapi Carpets & Floors	39.042┬á┬ú┬á/anno	04/05/2024 13:44:10	T
832	Sales Manager	United Kingdom	Google	120.369┬á┬ú┬á/anno	04/05/2024 13:44:10	T
833	Sales Manager	United Kingdom	Sky	41.773┬á┬ú┬á/anno	04/05/2024 13:44:10	T
834	Sales Manager	United Kingdom	ScS Sofas	37.583┬á┬ú┬á/anno	04/05/2024 13:44:10	T
1670	IT Manager	Germany	Zalando	65.321┬áÔé¼┬á/anno	04/05/2024 14:00:38	T
835	Sales Manager	United Kingdom	River Island Clothing	19.593┬á┬ú┬á/anno	04/05/2024 13:44:10	T
836	Sales Manager	United Kingdom	Gartner	140.390┬á┬ú┬á/anno	04/05/2024 13:44:10	T
837	Sales Manager	United Kingdom	GlobalData	115.207┬á┬ú┬á/anno	04/05/2024 13:44:10	T
838	Sales Manager	United Kingdom	Totaljobs Group	150.048┬á┬ú┬á/anno	04/05/2024 13:44:10	T
839	Sales Manager	United Kingdom	Foxtons	104.165┬á┬ú┬á/anno	04/05/2024 13:44:10	T
840	Sales Manager	United Kingdom	Arnold Clark	78.091┬á┬ú┬á/anno	04/05/2024 13:44:10	T
841	Sales Manager	France	Thales	74.682┬áÔé¼┬á/anno	04/05/2024 13:44:29	T
842	Sales Manager	France	Clone	79.370┬áÔé¼┬á/anno	04/05/2024 13:44:29	T
843	Sales Manager	France	Safran	53.877┬áÔé¼┬á/anno	04/05/2024 13:44:29	T
844	Sales Manager	France	Devoteam	78.989┬áÔé¼┬á/anno	04/05/2024 13:44:29	T
845	Sales Manager	France	IBM	127.843┬áÔé¼┬á/anno	04/05/2024 13:44:29	T
846	Sales Manager	France	Microsoft	186.620┬áÔé¼┬á/anno	04/05/2024 13:44:29	T
847	Sales Manager	France	Oracle	129.813┬áÔé¼┬á/anno	04/05/2024 13:44:30	T
848	Sales Manager	France	Amazon	133.604┬áÔé¼┬á/anno	04/05/2024 13:44:30	T
849	Sales Manager	France	Capgemini	95.125┬áÔé¼┬á/anno	04/05/2024 13:44:30	T
850	Sales Manager	France	Tiller	50.643┬áÔé¼┬á/anno	04/05/2024 13:44:30	T
851	Sales Manager	France	Dassault Syst├¿mes	108.311┬áÔé¼┬á/anno	04/05/2024 13:44:30	T
852	Sales Manager	France	Doctolib	98.124┬áÔé¼┬á/anno	04/05/2024 13:44:30	T
853	Sales Manager	France	Arkema	72.658┬áÔé¼┬á/anno	04/05/2024 13:44:30	T
854	Sales Manager	France	Accor	42.777┬áÔé¼┬á/anno	04/05/2024 13:44:30	T
855	Sales Manager	France	SAP	206.226┬áÔé¼┬á/anno	04/05/2024 13:44:30	T
856	Sales Manager	France	Galeries Lafayette	67.947┬áÔé¼┬á/anno	04/05/2024 13:44:30	T
857	Sales Manager	France	Capgemini Engineering	57.714┬áÔé¼┬á/anno	04/05/2024 13:44:30	T
858	Sales Manager	France	Teads	65.483┬áÔé¼┬á/anno	04/05/2024 13:44:30	T
859	Sales Manager	France	Lucca	54.045┬áÔé¼┬á/anno	04/05/2024 13:44:30	T
860	Sales Manager	France	OCUS	51.418┬áÔé¼┬á/anno	04/05/2024 13:44:30	T
861	Sales Manager	Brazil	Procter & Gamble	11.856┬áBRL┬á/mese	04/05/2024 13:44:50	T
862	Sales Manager	Brazil	IBM	20.115┬áBRL┬á/mese	04/05/2024 13:44:50	T
863	Sales Manager	Brazil	Oracle	79.823┬áBRL┬á/mese	04/05/2024 13:44:50	T
864	Sales Manager	Brazil	Criteo	35.079┬áBRL┬á/mese	04/05/2024 13:44:50	T
865	Sales Manager	Brazil	Samsung Electronics	24.904┬áBRL┬á/mese	04/05/2024 13:44:50	T
866	Sales Manager	Brazil	Ambev	8.095┬áBRL┬á/mese	04/05/2024 13:44:50	T
867	Sales Manager	Brazil	Whirlpool Corporation	12.425┬áBRL┬á/mese	04/05/2024 13:44:50	T
868	Sales Manager	Brazil	Insider	56.040┬áBRL┬á/mese	04/05/2024 13:44:50	T
869	Sales Manager	Brazil	GE	23.992┬áBRL┬á/mese	04/05/2024 13:44:50	T
870	Sales Manager	Brazil	Accenture	15.368┬áBRL┬á/mese	04/05/2024 13:44:50	T
871	Sales Manager	Brazil	Swile	60.461┬áBRL┬á/mese	04/05/2024 13:44:50	T
872	Sales Manager	Brazil	TMF Group	21.563┬áBRL┬á/mese	04/05/2024 13:44:50	T
873	Sales Manager	Brazil	BYJU'S	29.184┬áBRL┬á/mese	04/05/2024 13:44:50	T
874	Sales Manager	Brazil	Zankyou Weddings	7.139┬áBRL┬á/mese	04/05/2024 13:44:50	T
875	Sales Manager	Brazil	Google	890.001┬áBRL┬á/anno	04/05/2024 13:44:50	T
876	Sales Manager	Brazil	Taboola	29.817┬áBRL┬á/mese	04/05/2024 13:44:50	T
877	Sales Manager	Brazil	Dell Technologies	26.833┬áBRL┬á/mese	04/05/2024 13:44:50	T
878	Sales Manager	Brazil	TTEC	18.637┬áBRL┬á/mese	04/05/2024 13:44:50	T
879	Sales Manager	Brazil	Infobip	5.633┬áBRL┬á/mese	04/05/2024 13:44:50	T
880	Sales Manager	Brazil	Stone	8.350┬áBRL┬á/mese	04/05/2024 13:44:50	T
881	Sales Manager	Italy	Leonardo	51.405┬áÔé¼┬á/anno	04/05/2024 13:45:10	T
882	Sales Manager	Italy	Vodafone	60.959┬áÔé¼┬á/anno	04/05/2024 13:45:10	T
883	Sales Manager	Italy	Danieli Group	45.560┬áÔé¼┬á/anno	04/05/2024 13:45:10	T
884	Sales Manager	Italy	ABB	55.597┬áÔé¼┬á/anno	04/05/2024 13:45:10	T
885	Sales Manager	Italy	Alleanza Assicurazioni	54.389┬áÔé¼┬á/anno	04/05/2024 13:45:10	T
886	Sales Manager	Italy	Prysmian Group	47.671┬áÔé¼┬á/anno	04/05/2024 13:45:10	T
887	Sales Manager	Italy	Hunters Group	51.797┬áÔé¼┬á/anno	04/05/2024 13:45:10	T
888	Sales Manager	Italy	Eni Spa	61.000┬áÔé¼┬á/anno	04/05/2024 13:45:10	T
889	Sales Manager	Italy	Amazon	90.468┬áÔé¼┬á/anno	04/05/2024 13:45:10	T
890	Sales Manager	Italy	IBM	108.360┬áÔé¼┬á/anno	04/05/2024 13:45:10	T
891	Sales Manager	Italy	Imperial-life	5.451┬áÔé¼┬á/mese	04/05/2024 13:45:10	T
892	Sales Manager	Italy	Henkel	66.737┬áÔé¼┬á/anno	04/05/2024 13:45:10	T
893	Sales Manager	Italy	Siemens	63.952┬áÔé¼┬á/anno	04/05/2024 13:45:10	T
894	Sales Manager	Italy	CNH Industrial	55.900┬áÔé¼┬á/anno	04/05/2024 13:45:10	T
895	Sales Manager	Italy	Renault Group	46.720┬áÔé¼┬á/anno	04/05/2024 13:45:11	T
896	Sales Manager	Italy	IKEA	57.180┬áÔé¼┬á/anno	04/05/2024 13:45:11	T
897	Sales Manager	Italy	Oracle	244.010┬áÔé¼┬á/anno	04/05/2024 13:45:11	T
898	Sales Manager	Italy	Google	103.250┬áÔé¼┬á/anno	04/05/2024 13:45:11	T
899	Sales Manager	Italy	Telecom Italia	49.750┬áÔé¼┬á/anno	04/05/2024 13:45:11	T
900	Sales Manager	Italy	Adecco	52.308┬áÔé¼┬á/anno	04/05/2024 13:45:11	T
901	Assistant	United States	Walmart	59.214┬áUSD┬á/anno	04/05/2024 13:45:31	T
902	Assistant	United States	Enterprise	50.894┬áUSD┬á/anno	04/05/2024 13:45:31	T
903	Assistant	United States	Domino's	16┬áUSD┬á/ora	04/05/2024 13:45:31	T
904	Assistant	United States	Dollar General	15┬áUSD┬á/ora	04/05/2024 13:45:31	T
905	Assistant	United States	Sherwin-Williams	62.361┬áUSD┬á/anno	04/05/2024 13:45:31	T
906	Assistant	United States	Panera Bread	47.995┬áUSD┬á/anno	04/05/2024 13:45:31	T
907	Assistant	United States	Family Dollar Stores	15┬áUSD┬á/ora	04/05/2024 13:45:31	T
908	Assistant	United States	Walgreens	19┬áUSD┬á/ora	04/05/2024 13:45:31	T
909	Assistant	United States	Dollar Tree	16┬áUSD┬á/ora	04/05/2024 13:45:31	T
910	Assistant	United States	McDonald's	19┬áUSD┬á/ora	04/05/2024 13:45:31	T
911	Assistant	United States	Burger King	17┬áUSD┬á/ora	04/05/2024 13:45:31	T
912	Assistant	United States	Little Caesars Pizza	16┬áUSD┬á/ora	04/05/2024 13:45:31	T
913	Assistant	United States	Cinemark	18┬áUSD┬á/ora	04/05/2024 13:45:31	T
914	Assistant	United States	The Home Depot	70.133┬áUSD┬á/anno	04/05/2024 13:45:31	T
915	Assistant	United States	Lowe's Home Improvement	80.025┬áUSD┬á/anno	04/05/2024 13:45:31	T
916	Assistant	United States	GameStop	18┬áUSD┬á/ora	04/05/2024 13:45:31	T
917	Assistant	United States	Sonic	16┬áUSD┬á/ora	04/05/2024 13:45:31	T
918	Assistant	United States	Nordstrom	56.129┬áUSD┬á/anno	04/05/2024 13:45:31	T
919	Assistant	United States	Subway	17┬áUSD┬á/ora	04/05/2024 13:45:31	T
920	Assistant	United States	Extra Space Storage	17┬áUSD┬á/ora	04/05/2024 13:45:31	T
921	Assistant	Germany	KPMG	60.299┬áÔé¼┬á/anno	04/05/2024 13:46:09	T
922	Assistant	Germany	Hollister Co.	37.418┬áÔé¼┬á/anno	04/05/2024 13:46:09	T
923	Assistant	Germany	adidas	50.247┬áÔé¼┬á/anno	04/05/2024 13:46:09	T
924	Assistant	Germany	McDonald's	2.975┬áÔé¼┬á/mese	04/05/2024 13:46:09	T
925	Assistant	Germany	Abercrombie & Fitch	36.788┬áÔé¼┬á/anno	04/05/2024 13:46:09	T
926	Assistant	Germany	Wayfair	46.246┬áÔé¼┬á/anno	04/05/2024 13:46:09	T
927	Assistant	Germany	Kia Motors	57.751┬áÔé¼┬á/anno	04/05/2024 13:46:09	T
928	Assistant	Germany	KPMG	63.482┬áÔé¼┬á/anno	04/05/2024 13:46:09	T
929	Assistant	Germany	Burger King	2.561┬áÔé¼┬á/mese	04/05/2024 13:46:09	T
930	Assistant	Germany	Warth & Klein Grant Thornton	61.094┬áÔé¼┬á/anno	04/05/2024 13:46:09	T
931	Assistant	Germany	Enterprise	62.700┬áÔé¼┬á/anno	04/05/2024 13:46:09	T
932	Assistant	Germany	KPMG	54.368┬áÔé¼┬á/anno	04/05/2024 13:46:09	T
933	Assistant	Germany	Deloitte	64.167┬áÔé¼┬á/anno	04/05/2024 13:46:09	T
934	Assistant	Germany	HORNBACH	52.477┬áÔé¼┬á/anno	04/05/2024 13:46:09	T
935	Assistant	Germany	Rituals	2.291┬áÔé¼┬á/mese	04/05/2024 13:46:09	T
936	Assistant	Germany	Bank of China	52.383┬áÔé¼┬á/anno	04/05/2024 13:46:09	T
937	Assistant	Germany	Accenture	70.250┬áÔé¼┬á/anno	04/05/2024 13:46:09	T
938	Assistant	Germany	PwC	65.922┬áÔé¼┬á/anno	04/05/2024 13:46:09	T
939	Assistant	Germany	Zalando	33.133┬áÔé¼┬á/anno	04/05/2024 13:46:09	T
940	Assistant	Germany	BMW Group	43.333┬áÔé¼┬á/anno	04/05/2024 13:46:09	T
941	Assistant	Japan	Rakuten	8.205.277┬áJPY┬á/anno	04/05/2024 13:46:29	T
942	Assistant	Japan	NTT DATA	7.602.551┬áJPY┬á/anno	04/05/2024 13:46:29	T
943	Assistant	Japan	Nissan	8.932.050┬áJPY┬á/anno	04/05/2024 13:46:29	T
944	Assistant	Japan	NEC Corporation	7.450.625┬áJPY┬á/anno	04/05/2024 13:46:29	T
945	Assistant	Japan	Abercrombie & Fitch	4.273.750┬áJPY┬á/anno	04/05/2024 13:46:29	T
946	Assistant	Japan	MetLife	9.659.636┬áJPY┬á/anno	04/05/2024 13:46:29	T
947	Assistant	Japan	Nippon Life Insurance	6.050.380┬áJPY┬á/anno	04/05/2024 13:46:29	T
948	Assistant	Japan	Mitsubishi	10.328.000┬áJPY┬á/anno	04/05/2024 13:46:29	T
949	Assistant	Japan	Toyota Motor Corporation	9.795.874┬áJPY┬á/anno	04/05/2024 13:46:29	T
950	Assistant	Japan	Hitachi	6.599.200┬áJPY┬á/anno	04/05/2024 13:46:29	T
951	Assistant	Japan	Sumitomo Corporation	16.000.000┬áJPY┬á/anno	04/05/2024 13:46:29	T
952	Assistant	Japan	Tokio Marine Holdings	8.300.000┬áJPY┬á/anno	04/05/2024 13:46:29	T
953	Assistant	Japan	NN Group	8.347.989┬áJPY┬á/anno	04/05/2024 13:46:29	T
954	Assistant	Japan	Mizuho Financial Group	8.433.333┬áJPY┬á/anno	04/05/2024 13:46:29	T
955	Assistant	Japan	adidas	6.166.667┬áJPY┬á/anno	04/05/2024 13:46:29	T
956	Assistant	Japan	Mazda	8.346.667┬áJPY┬á/anno	04/05/2024 13:46:29	T
957	Assistant	Japan	Hollister Co.	4.433.333┬áJPY┬á/anno	04/05/2024 13:46:29	T
958	Assistant	Japan	East Japan Railway	6.266.667┬áJPY┬á/anno	04/05/2024 13:46:29	T
959	Assistant	Japan	Sakura International	4.466.667┬áJPY┬á/anno	04/05/2024 13:46:29	T
960	Assistant	Japan	Accenture	Circa┬á224.115┬áJPY -426.908┬áJPY	04/05/2024 13:46:30	T
961	Assistant	India	Perry Township Schools	23┬áUSD┬á/ora	04/05/2024 13:46:50	T
962	Assistant	India	Eli Lilly and Company	62.934┬áUSD┬á/anno	04/05/2024 13:46:50	T
963	Assistant	India	Damar Services	20┬áUSD┬á/ora	04/05/2024 13:46:50	T
964	Assistant	India	Marian University (Indiana)	43.949┬áUSD┬á/anno	04/05/2024 13:46:50	T
965	Assistant	India	InPwr	49.326┬áUSD┬á/anno	04/05/2024 13:46:50	T
966	Assistant	India	Speedway Public Library	38.900┬áUSD┬á/anno	04/05/2024 13:46:50	T
967	Assistant	India	Health and Hospital Corporation	19┬áUSD┬á/ora	04/05/2024 13:46:50	T
968	Assistant	India	Verizon	25┬áUSD┬á/ora	04/05/2024 13:46:50	T
969	Assistant	India	Ice Miller	25┬áUSD┬á/ora	04/05/2024 13:46:50	T
970	Assistant	India	Gold Stream Solutions	3.885┬áUSD┬á/mese	04/05/2024 13:46:50	T
971	Assistant	India	OneAmerica Financial	55.391┬áUSD┬á/anno	04/05/2024 13:46:50	T
972	Assistant	India	University of Indianapolis	21┬áUSD┬á/ora	04/05/2024 13:46:50	T
973	Assistant	India	KDB Bank	62.453┬áUSD┬á/anno	04/05/2024 13:46:50	T
974	Assistant	India	DuPont	30┬áUSD┬á/ora	04/05/2024 13:46:50	T
975	Assistant	India	Lee's Country RV	18┬áUSD┬á/ora	04/05/2024 13:46:50	T
976	Assistant	India	Wiley	23┬áUSD┬á/ora	04/05/2024 13:46:50	T
977	Assistant	India	Purdue University	25┬áUSD┬á/ora	04/05/2024 13:46:50	T
978	Assistant	India	Arlington/Roe & Co. 	52.697┬áUSD┬á/anno	04/05/2024 13:46:50	T
979	Assistant	India	Diamond Chain	44.001┬áUSD┬á/anno	04/05/2024 13:46:50	T
980	Assistant	India	Robert Half	28┬áUSD┬á/ora	04/05/2024 13:46:50	T
981	Assistant	United Kingdom	KPMG	55.906┬á┬ú┬á/anno	04/05/2024 13:47:09	T
982	Assistant	United Kingdom	Deloitte	48.774┬á┬ú┬á/anno	04/05/2024 13:47:09	T
983	Assistant	United Kingdom	Enterprise	47.235┬á┬ú┬á/anno	04/05/2024 13:47:09	T
984	Assistant	United Kingdom	Mitchells & Butlers	29.361┬á┬ú┬á/anno	04/05/2024 13:47:09	T
985	Assistant	United Kingdom	EY	52.254┬á┬ú┬á/anno	04/05/2024 13:47:09	T
986	Assistant	United Kingdom	McDonald's	39.122┬á┬ú┬á/anno	04/05/2024 13:47:09	T
987	Assistant	United Kingdom	Screwfix	25.146┬á┬ú┬á/anno	04/05/2024 13:47:09	T
988	Assistant	United Kingdom	BDO	48.900┬á┬ú┬á/anno	04/05/2024 13:47:09	T
989	Assistant	United Kingdom	Greene King	26.900┬á┬ú┬á/anno	04/05/2024 13:47:09	T
990	Assistant	United Kingdom	Boots	24.155┬á┬ú┬á/anno	04/05/2024 13:47:09	T
991	Assistant	United Kingdom	Grant Thornton UK LLP	47.688┬á┬ú┬á/anno	04/05/2024 13:47:09	T
992	Assistant	United Kingdom	Caff├¿ Nero	10┬á┬ú┬á/ora	04/05/2024 13:47:09	T
993	Assistant	United Kingdom	Superdrug	25.751┬á┬ú┬á/anno	04/05/2024 13:47:09	T
994	Assistant	United Kingdom	ALDI	36.301┬á┬ú┬á/anno	04/05/2024 13:47:09	T
995	Assistant	United Kingdom	Mazars	52.020┬á┬ú┬á/anno	04/05/2024 13:47:09	T
996	Assistant	United Kingdom	Pets at Home	21.532┬á┬ú┬á/anno	04/05/2024 13:47:09	T
997	Assistant	United Kingdom	Nando's UK & IRE	30.312┬á┬ú┬á/anno	04/05/2024 13:47:09	T
998	Assistant	United Kingdom	Card Factory	9┬á┬ú┬á/ora	04/05/2024 13:47:09	T
999	Assistant	United Kingdom	Lloyds Banking Group	42.759┬á┬ú┬á/anno	04/05/2024 13:47:09	T
1000	Assistant	United Kingdom	Costa	10┬á┬ú┬á/ora	04/05/2024 13:47:09	T
1001	Assistant	France	Deloitte	59.609┬áÔé¼┬á/anno	04/05/2024 13:47:29	T
1002	Assistant	France	KPMG	63.977┬áÔé¼┬á/anno	04/05/2024 13:47:29	T
1003	Assistant	France	McDonald's	1.783┬áÔé¼┬á/mese	04/05/2024 13:47:29	T
1004	Assistant	France	Domino's	1.863┬áÔé¼┬á/mese	04/05/2024 13:47:29	T
1005	Assistant	France	Carrefour	1.910┬áÔé¼┬á/mese	04/05/2024 13:47:29	T
1006	Assistant	France	ALDI	1.871┬áÔé¼┬á/mese	04/05/2024 13:47:29	T
1007	Assistant	France	Hollister Co.	24.538┬áÔé¼┬á/anno	04/05/2024 13:47:29	T
1008	Assistant	France	TotalEnergies	32.913┬áÔé¼┬á/anno	04/05/2024 13:47:29	T
1009	Assistant	France	McDonald's	1.609┬áÔé¼┬á/mese	04/05/2024 13:47:29	T
1010	Assistant	France	METRO	2.066┬áÔé¼┬á/mese	04/05/2024 13:47:29	T
1011	Assistant	France	Burger King	1.462┬áÔé¼┬á/mese	04/05/2024 13:47:29	T
1012	Assistant	France	Lidl	2.402┬áÔé¼┬á/mese	04/05/2024 13:47:29	T
1013	Assistant	France	ALDI Nord	1.977┬áÔé¼┬á/mese	04/05/2024 13:47:29	T
1014	Assistant	France	Primark	45.776┬áÔé¼┬á/anno	04/05/2024 13:47:29	T
1015	Assistant	France	Disneyland Paris	2.612┬áÔé¼┬á/mese	04/05/2024 13:47:29	T
1016	Assistant	France	KFC	2.113┬áÔé¼┬á/mese	04/05/2024 13:47:29	T
1017	Assistant	France	SNCF	1.001┬áÔé¼┬á/mese	04/05/2024 13:47:29	T
1018	Assistant	France	C&A	1.926┬áÔé¼┬á/mese	04/05/2024 13:47:29	T
1019	Assistant	France	SNCF	2.230┬áÔé¼┬á/mese	04/05/2024 13:47:29	T
1020	Assistant	France	Shurgard Self Storage	5.861┬áÔé¼┬á/mese	04/05/2024 13:47:29	T
1021	Assistant	Brazil	Shopee	19.956┬áBRL┬á/mese	04/05/2024 13:47:48	T
1022	Assistant	Brazil	Outback Steakhouse	3.973┬áBRL┬á/mese	04/05/2024 13:47:48	T
1023	Assistant	Brazil	Banco Bradesco	21.807┬áBRL┬á/mese	04/05/2024 13:47:48	T
1024	Assistant	Brazil	Ita├║ Unibanco (Ita├║ BBA e Rede)	4.897┬áBRL┬á/mese	04/05/2024 13:47:48	T
1025	Assistant	Brazil	Accenture	9.683┬áBRL┬á/mese	04/05/2024 13:47:48	T
1026	Assistant	Brazil	Equinix	18.629┬áBRL┬á/mese	04/05/2024 13:47:48	T
1027	Assistant	Brazil	Magazine Luiza	2.046┬áBRL┬á/mese	04/05/2024 13:47:48	T
1028	Assistant	Brazil	Caixa Econ├┤mica Federal	7.988┬áBRL┬á/mese	04/05/2024 13:47:48	T
1029	Assistant	Brazil	Lojas Renner	4.435┬áBRL┬á/mese	04/05/2024 13:47:48	T
1030	Assistant	Brazil	americanas s.a.	2.041┬áBRL┬á/mese	04/05/2024 13:47:48	T
1031	Assistant	Brazil	The Coca-Cola Company	3.277┬áBRL┬á/mese	04/05/2024 13:47:48	T
1032	Assistant	Brazil	Vivo (Telef├┤nica Brasil)	1.455┬áBRL┬á/mese	04/05/2024 13:47:48	T
1033	Assistant	Brazil	Google	2.681┬áBRL┬á/mese	04/05/2024 13:47:48	T
1034	Assistant	Brazil	Shopee Xpress	16.210┬áBRL┬á/mese	04/05/2024 13:47:48	T
1035	Assistant	Brazil	Google	2.382┬áBRL┬á/mese	04/05/2024 13:47:48	T
1036	Assistant	Brazil	Mitsubishi	10.167┬áBRL┬á/mese	04/05/2024 13:47:48	T
1037	Assistant	Brazil	Nestl├®	3.201┬áBRL┬á/mese	04/05/2024 13:47:48	T
1038	Assistant	Brazil	Ambev	4.727┬áBRL┬á/mese	04/05/2024 13:47:48	T
1039	Assistant	Brazil	Nestl├®	2.583┬áBRL┬á/mese	04/05/2024 13:47:48	T
1040	Assistant	Brazil	Genpact	11.556┬áBRL┬á/mese	04/05/2024 13:47:48	T
1041	Optometrist	United States	National Vision	137.544┬áUSD┬á/anno	04/05/2024 13:48:24	T
1042	Optometrist	United States	MyEyeDr.	152.821┬áUSD┬á/anno	04/05/2024 13:48:24	T
1043	Optometrist	United States	Visionworks	142.153┬áUSD┬á/anno	04/05/2024 13:48:24	T
1044	Optometrist	United States	LensCrafters	58┬áUSD┬á/ora	04/05/2024 13:48:24	T
1045	Optometrist	United States	America's Best Contacts & Eyeglasses	159.513┬áUSD┬á/anno	04/05/2024 13:48:24	T
1046	Optometrist	United States	LasikPlus	143.635┬áUSD┬á/anno	04/05/2024 13:48:24	T
1047	Optometrist	United States	Warby Parker	111.482┬áUSD┬á/anno	04/05/2024 13:48:24	T
1048	Optometrist	United States	Pearle Vision	67┬áUSD┬á/ora	04/05/2024 13:48:24	T
1049	Optometrist	United States	HealthDrive	168.622┬áUSD┬á/anno	04/05/2024 13:48:24	T
1050	Optometrist	United States	ETS Recruit	152.175┬áUSD┬á/anno	04/05/2024 13:48:24	T
1051	Optometrist	United States	US Department of Veterans Affairs	120.042┬áUSD┬á/anno	04/05/2024 13:48:24	T
1052	Optometrist	United States	Kaiser Permanente	175.910┬áUSD┬á/anno	04/05/2024 13:48:24	T
1053	Optometrist	United States	Private Practice	154.395┬áUSD┬á/anno	04/05/2024 13:48:24	T
1054	Optometrist	United States	Walmart	131.455┬áUSD┬á/anno	04/05/2024 13:48:24	T
1055	Optometrist	United States	National Vision	130.358┬áUSD┬á/anno	04/05/2024 13:48:24	T
1056	Optometrist	United States	Luxottica	131.508┬áUSD┬á/anno	04/05/2024 13:48:24	T
1057	Optometrist	United States	Self Opportunity	108.405┬áUSD┬á/anno	04/05/2024 13:48:24	T
1058	Optometrist	United States	Doctor's Exchange of Washington	126.309┬áUSD┬á/anno	04/05/2024 13:48:24	T
1059	Optometrist	United States	EyeCare Partners	152.931┬áUSD┬á/anno	04/05/2024 13:48:25	T
1060	Optometrist	United States	Keplr Vision	112.978┬áUSD┬á/anno	04/05/2024 13:48:25	T
1061	Optometrist	Germany	Helios Kliniken	Circa┬á49.087┬áÔé¼ -57.406┬áÔé¼	04/05/2024 13:49:02	T
1062	Optometrist	Germany	FIELMANN	Circa┬á2010┬áÔé¼ -2379┬áÔé¼	04/05/2024 13:49:02	T
1063	Optometrist	Germany	FIELMANN	Circa┬á1136┬áÔé¼ -1348┬áÔé¼	04/05/2024 13:49:02	T
1064	Optometrist	Germany	Bizerba	Circa┬á50.781┬áÔé¼ -59.183┬áÔé¼	04/05/2024 13:49:02	T
1065	Optometrist	Germany	CARE Vision Germany	Circa┬á51.172┬áÔé¼ -58.904┬áÔé¼	04/05/2024 13:49:02	T
1066	Optometrist	Germany	Optical Express	Circa┬á3256┬áÔé¼ -3843┬áÔé¼	04/05/2024 13:49:02	T
1067	Optometrist	Germany	DIE SEHKLINIK	Circa┬á55.381┬áÔé¼ -66.344┬áÔé¼	04/05/2024 13:49:02	T
1068	Optometrist	Germany	Augenklinik Berlin-Marzahn	Circa┬á2503┬áÔé¼ -2900┬áÔé¼	04/05/2024 13:49:02	T
1069	Optometrist	Germany	E.A. Dion	Circa┬á45.608┬áÔé¼ -54.214┬áÔé¼	04/05/2024 13:49:02	T
1070	Optometrist	Germany	Eyedentity Eyecare + Eyewear	Circa┬á46.395┬áÔé¼ -53.241┬áÔé¼	04/05/2024 13:49:02	T
1071	Optometrist	Germany	Apollo-Optik	Circa┬á34.227┬áÔé¼ -40.124┬áÔé¼	04/05/2024 13:49:02	T
1072	Optometrist	Germany	VSP Vision Care	Circa┬á50.734┬áÔé¼ -59.946┬áÔé¼	04/05/2024 13:49:02	T
1073	Optometrist	Japan	Mondelliani	Circa┬á75.023┬áJPY -87.246┬áJPY	04/05/2024 13:49:21	T
1074	Optometrist	Japan	Optoma Technology	Circa┬á234.113┬áJPY -270.065┬áJPY	04/05/2024 13:49:21	T
1075	Optometrist	India	MyEyeDr.	150.772┬áUSD┬á/anno	04/05/2024 13:49:41	T
1076	Optometrist	India	National Vision	138.773┬áUSD┬á/anno	04/05/2024 13:49:41	T
1077	Optometrist	India	Dr. Tavel	123.792┬áUSD┬á/anno	04/05/2024 13:49:41	T
1078	Optometrist	India	Visionworks	141.148┬áUSD┬á/anno	04/05/2024 13:49:41	T
1079	Optometrist	India	America's Best Contacts & Eyeglasses	159.661┬áUSD┬á/anno	04/05/2024 13:49:41	T
1080	Optometrist	India	HealthDrive	156.109┬áUSD┬á/anno	04/05/2024 13:49:41	T
1081	Optometrist	India	Ossip Optometry	127.582┬áUSD┬á/anno	04/05/2024 13:49:41	T
1082	Optometrist	India	Community Eye Care of Indiana	118.477┬áUSD┬á/anno	04/05/2024 13:49:41	T
1083	Optometrist	India	Abigail David Optometry	136.267┬áUSD┬á/anno	04/05/2024 13:49:41	T
1084	Optometrist	India	Mobility Quest	129.597┬áUSD┬á/anno	04/05/2024 13:49:41	T
1085	Optometrist	India	Self Opportunity	114.687┬áUSD┬á/anno	04/05/2024 13:49:41	T
1086	Optometrist	India	LensCrafters	122.459┬áUSD┬á/anno	04/05/2024 13:49:41	T
1087	Optometrist	India	Hancock Eye Associates	123.610┬áUSD┬á/anno	04/05/2024 13:49:41	T
1088	Optometrist	India	SEE Eyewear	124.470┬áUSD┬á/anno	04/05/2024 13:49:41	T
1089	Optometrist	India	Macha Family Eye Care	130.105┬áUSD┬á/anno	04/05/2024 13:49:41	T
1090	Optometrist	India	LasikPlus	139.482┬áUSD┬á/anno	04/05/2024 13:49:41	T
1091	Optometrist	India	SVS Vision	68┬áUSD┬á/ora	04/05/2024 13:49:41	T
1092	Optometrist	India	Sam's Club	120.478┬áUSD┬á/anno	04/05/2024 13:49:41	T
1093	Optometrist	India	Target	68┬áUSD┬á/ora	04/05/2024 13:49:41	T
1094	Optometrist	India	TLC Laser Eye Centers	157.022┬áUSD┬á/anno	04/05/2024 13:49:41	T
1095	Optometrist	United Kingdom	Specsavers	48.890┬á┬ú┬á/anno	04/05/2024 13:50:00	T
1096	Optometrist	United Kingdom	PPR UK	51.284┬á┬ú┬á/anno	04/05/2024 13:50:00	T
1097	Optometrist	United Kingdom	Boots Opticians	46.660┬á┬ú┬á/anno	04/05/2024 13:50:00	T
1098	Optometrist	United Kingdom	Vision Express	47.512┬á┬ú┬á/anno	04/05/2024 13:50:00	T
1099	Optometrist	United Kingdom	Inspired Selections	52.393┬á┬ú┬á/anno	04/05/2024 13:50:00	T
1100	Optometrist	United Kingdom	Prospect Health Recruitment	50.273┬á┬ú┬á/anno	04/05/2024 13:50:00	T
1101	Optometrist	United Kingdom	Specsavers	44.136┬á┬ú┬á/anno	04/05/2024 13:50:00	T
1102	Optometrist	United Kingdom	Team Locum	55.612┬á┬ú┬á/anno	04/05/2024 13:50:00	T
1103	Optometrist	United Kingdom	Specsavers Opticians	48.457┬á┬ú┬á/anno	04/05/2024 13:50:00	T
1104	Optometrist	United Kingdom	Optical Express	57.160┬á┬ú┬á/anno	04/05/2024 13:50:00	T
1105	Optometrist	United Kingdom	Boots	48.080┬á┬ú┬á/anno	04/05/2024 13:50:01	T
1106	Optometrist	United Kingdom	Vision Express	48.950┬á┬ú┬á/anno	04/05/2024 13:50:01	T
1107	Optometrist	United Kingdom	Visioncall	24┬á┬ú┬á/ora	04/05/2024 13:50:01	T
1108	Optometrist	United Kingdom	SpaMedica (UK)	51.997┬á┬ú┬á/anno	04/05/2024 13:50:01	T
1109	Optometrist	United Kingdom	NHS	47.538┬á┬ú┬á/anno	04/05/2024 13:50:01	T
1110	Optometrist	United Kingdom	Boots Opticians	40.808┬á┬ú┬á/anno	04/05/2024 13:50:01	T
1111	Optometrist	United Kingdom	Laborat├│rio Prime Optical	51.280┬á┬ú┬á/anno	04/05/2024 13:50:01	T
1112	Optometrist	United Kingdom	Leightons	45.289┬á┬ú┬á/anno	04/05/2024 13:50:01	T
1113	Optometrist	United Kingdom	Specsavers	55.689┬á┬ú┬á/anno	04/05/2024 13:50:01	T
1114	Optometrist	United Kingdom	Specsavers	48.382┬á┬ú┬á/anno	04/05/2024 13:50:01	T
1115	Optometrist	Brazil	├ôticas Diniz	Circa┬á9414┬áBRL -11.061┬áBRL	04/05/2024 13:50:38	T
1116	Optometrist	Brazil	Oticas Visual	Circa┬á2443┬áBRL -2881┬áBRL	04/05/2024 13:50:38	T
1117	Optometrist	Brazil	Vizon	Circa┬á3285┬áBRL -3871┬áBRL	04/05/2024 13:50:38	T
1118	Optometrist	Brazil	Consult├│rio particular	Circa┬á7296┬áBRL -8632┬áBRL	04/05/2024 13:50:38	T
1119	Optometrist	Brazil	├ôticas Diniz	Circa┬á3674┬áBRL -4343┬áBRL	04/05/2024 13:50:38	T
1120	Optometrist	Brazil	├ôticas Carol	Circa┬á93┬áBRL -107┬áBRL┬áoraria	04/05/2024 13:50:38	T
1121	Optometrist	Brazil	├ôticas Carol	Circa┬á4615┬áBRL -5410┬áBRL	04/05/2024 13:50:38	T
1122	Optometrist	Brazil	├ôticas Carol	Circa┬á142┬áBRL -164┬áBRL┬áoraria	04/05/2024 13:50:38	T
1123	Optometrist	Brazil	├ôticas Carol	Circa┬á4517┬áBRL -5413┬áBRL	04/05/2024 13:50:38	T
1124	Optometrist	Brazil	Grupo H.Olhos	Circa┬á94┬áBRL -109┬áBRL┬áoraria	04/05/2024 13:50:38	T
1125	Optometrist	Brazil	├ôtica Center (Brazil)	Circa┬á88.677┬áBRL -104.139┬áBRL	04/05/2024 13:50:38	T
1126	Optometrist	Brazil	VISIONEO	Circa┬á4693┬áBRL -5432┬áBRL	04/05/2024 13:50:38	T
1127	Optometrist	Brazil	├ôtica Charme	Circa┬á10.328┬áBRL -11.874┬áBRL	04/05/2024 13:50:38	T
1128	Optometrist	Brazil	├ôticas Ultrafarma	Circa┬á4701┬áBRL -5531┬áBRL	04/05/2024 13:50:38	T
1129	Optometrist	Brazil	├ôtica Ponto de Vista	Circa┬á9287┬áBRL -10.867┬áBRL	04/05/2024 13:50:38	T
1130	Optometrist	Brazil	Almeida & Morales Oftalmologistas Associados	Circa┬á30.109┬áBRL -35.251┬áBRL	04/05/2024 13:50:38	T
1131	Optometrist	Brazil	Cloud Gehshan	Circa┬á11.034┬áBRL -13.073┬áBRL	04/05/2024 13:50:38	T
1132	Optometrist	Brazil	Optometria & Ottica "Kellici"	Circa┬á7261┬áBRL -8643┬áBRL	04/05/2024 13:50:38	T
1133	Optometrist	Brazil	Augen Klinik	Circa┬á9320┬áBRL -10.807┬áBRL	04/05/2024 13:50:38	T
1134	Optometrist	Brazil	├ôptica Cidade	Circa┬á6408┬áBRL -7580┬áBRL	04/05/2024 13:50:38	T
1135	Optometrist	Italy	GrandVision	Circa┬á1105┬áÔé¼ -1307┬áÔé¼	04/05/2024 13:50:58	T
1136	Optometrist	Italy	FIELMANN	Circa┬á1771┬áÔé¼ -2105┬áÔé¼	04/05/2024 13:50:58	T
1137	Optometrist	Italy	Poliottica	Circa┬á39.435┬áÔé¼ -45.850┬áÔé¼	04/05/2024 13:50:58	T
1138	Optometrist	Italy	Optometria & Ottica "Kellici"	Circa┬á2753┬áÔé¼ -3225┬áÔé¼	04/05/2024 13:50:58	T
1139	Optometrist	Italy	Otica Imperial	Circa┬á1785┬áÔé¼ -2135┬áÔé¼	04/05/2024 13:50:58	T
1140	Optometrist	Italy	Ali Fatima Hospital	Circa┬á64.146┬áÔé¼ -77.005┬áÔé¼	04/05/2024 13:50:58	T
1141	Optometrist	Italy	FIELMANN	2.099┬áÔé¼┬á/mese	04/05/2024 13:50:58	T
1142	Optometrist	Italy	Salmoiraghi & Vigano	1.217┬áÔé¼┬á/mese	04/05/2024 13:50:58	T
1143	Optometrist	Italy	GrandVision	1.589┬áÔé¼┬á/mese	04/05/2024 13:50:58	T
1144	Optometrist	Italy	GrandVision	2.683┬áÔé¼┬á/mese	04/05/2024 13:50:58	T
1145	Optometrist	Italy	Nau Spa	Circa┬á1247┬áÔé¼ -1406┬áÔé¼	04/05/2024 13:50:58	T
1146	Optometrist	Italy	Occhiali24	Circa┬á1331┬áÔé¼ -6500┬áÔé¼	04/05/2024 13:50:58	T
1147	Optometrist	Italy	Newoptics	Circa┬á1742┬áÔé¼ -1870┬áÔé¼	04/05/2024 13:50:58	T
1148	Optometrist	Italy	Ottica Galeone	Circa┬á1237┬áÔé¼ -1455┬áÔé¼	04/05/2024 13:50:58	T
1149	Optometrist	Italy	FIELMANN	Circa┬á1251┬áÔé¼ -1448┬áÔé¼	04/05/2024 13:50:58	T
1150	Optometrist	Italy	Ottici Italiani	Circa┬á1089┬áÔé¼ -1295┬áÔé¼	04/05/2024 13:50:58	T
1151	Optometrist	Italy	Studio oculistico 	Circa┬á23┬áÔé¼ -27┬áÔé¼┬áoraria	04/05/2024 13:50:58	T
1152	Optometrist	Italy	Ottica Salvati	Circa┬á44.105┬áÔé¼ -51.125┬áÔé¼	04/05/2024 13:50:58	T
1153	Optometrist	Italy	blueVisions	Circa┬á1801┬áÔé¼ -2082┬áÔé¼	04/05/2024 13:50:58	T
1154	Optometrist	Italy	Nessuna	Circa┬á645┬áÔé¼ -756┬áÔé¼	04/05/2024 13:50:58	T
1155	Customer Engineer	United States	Google	299.257┬áUSD┬á/anno	04/05/2024 13:51:17	T
1156	Customer Engineer	United States	Microsoft	207.245┬áUSD┬á/anno	04/05/2024 13:51:17	T
1157	Customer Engineer	United States	Applied Materials	68┬áUSD┬á/ora	04/05/2024 13:51:17	T
1158	Customer Engineer	United States	NCR	40┬áUSD┬á/ora	04/05/2024 13:51:17	T
1159	Customer Engineer	United States	Vertiv	78.587┬áUSD┬á/anno	04/05/2024 13:51:17	T
1160	Customer Engineer	United States	Google Cloud	265.299┬áUSD┬á/anno	04/05/2024 13:51:17	T
1161	Customer Engineer	United States	Computacenter	44┬áUSD┬á/ora	04/05/2024 13:51:17	T
1162	Customer Engineer	United States	mindSHIFT	37┬áUSD┬á/ora	04/05/2024 13:51:17	T
1163	Customer Engineer	United States	Cummins	116.992┬áUSD┬á/anno	04/05/2024 13:51:17	T
1164	Customer Engineer	United States	NCR	24┬áUSD┬á/ora	04/05/2024 13:51:17	T
1165	Customer Engineer	United States	Vestmark	93.151┬áUSD┬á/anno	04/05/2024 13:51:17	T
1166	Customer Engineer	United States	JDA TSG	104.279┬áUSD┬á/anno	04/05/2024 13:51:17	T
1167	Customer Engineer	United States	IBM	126.083┬áUSD┬á/anno	04/05/2024 13:51:17	T
1168	Customer Engineer	United States	Applied Materials	72.884┬áUSD┬á/anno	04/05/2024 13:51:17	T
1169	Customer Engineer	United States	Hewlett Packard Enterprise | HPE	135.579┬áUSD┬á/anno	04/05/2024 13:51:17	T
1170	Customer Engineer	United States	HP Inc.	116.012┬áUSD┬á/anno	04/05/2024 13:51:17	T
1171	Customer Engineer	United States	Emerson	93.715┬áUSD┬á/anno	04/05/2024 13:51:17	T
1172	Customer Engineer	United States	Unisys	105.648┬áUSD┬á/anno	04/05/2024 13:51:17	T
1173	Customer Engineer	United States	Burroughs	77.210┬áUSD┬á/anno	04/05/2024 13:51:17	T
1174	Customer Engineer	United States	PerkinElmer	129.596┬áUSD┬á/anno	04/05/2024 13:51:17	T
1175	Customer Engineer	China	Applied Materials	17.922┬áCN┬Ñ┬á/mese	04/05/2024 13:51:37	T
1176	Customer Engineer	China	Intel Corporation	Circa┬á269.188┬áCN┬Ñ -314.862┬áCN┬Ñ	04/05/2024 13:51:37	T
1177	Customer Engineer	China	Google	Circa┬á7929┬áCN┬Ñ -9374┬áCN┬Ñ	04/05/2024 13:51:37	T
1178	Customer Engineer	China	Customer Engineering Services	Circa┬á14.201┬áCN┬Ñ -16.819┬áCN┬Ñ	04/05/2024 13:51:37	T
1179	Customer Engineer	China	Peikko Group	Circa┬á26.884┬áCN┬Ñ -31.929┬áCN┬Ñ	04/05/2024 13:51:37	T
1180	Customer Engineer	China	IBM	Circa┬á7370┬áCN┬Ñ -8568┬áCN┬Ñ	04/05/2024 13:51:37	T
1181	Customer Engineer	China	Ericsson-Worldwide	Circa┬á9385┬áCN┬Ñ -10.858┬áCN┬Ñ	04/05/2024 13:51:37	T
1182	Customer Engineer	China	Cisco	Circa┬á210.304┬áCN┬Ñ -252.163┬áCN┬Ñ	04/05/2024 13:51:37	T
1183	Customer Engineer	China	Infobip	Circa┬á253.620┬áCN┬Ñ -302.451┬áCN┬Ñ	04/05/2024 13:51:37	T
1184	Customer Engineer	China	Qarma	Circa┬á14.256┬áCN┬Ñ -16.958┬áCN┬Ñ	04/05/2024 13:51:37	T
1185	Customer Engineer	China	Nokia	Circa┬á161.453┬áCN┬Ñ -186.809┬áCN┬Ñ	04/05/2024 13:51:37	T
1186	Customer Engineer	China	United Imaging Healthcare (Shanghai)	Circa┬á21.621┬áCN┬Ñ -25.408┬áCN┬Ñ	04/05/2024 13:51:37	T
1187	Customer Engineer	China	ASML	Circa┬á180.296┬áCN┬Ñ -211.454┬áCN┬Ñ	04/05/2024 13:51:37	T
1188	Customer Engineer	China	Agora.io	Circa┬á17.822┬áCN┬Ñ -21.360┬áCN┬Ñ	04/05/2024 13:51:37	T
1189	Customer Engineer	China	Netis	Circa┬á15.981┬áCN┬Ñ -18.121┬áCN┬Ñ	04/05/2024 13:51:37	T
1190	Customer Engineer	China	ExxonMobil	Circa┬á144.399┬áCN┬Ñ -168.540┬áCN┬Ñ	04/05/2024 13:51:37	T
1191	Customer Engineer	China	Cisco	Circa┬á264.204┬áCN┬Ñ -311.610┬áCN┬Ñ	04/05/2024 13:51:37	T
1192	Customer Engineer	China	National Instruments	Circa┬á18.254┬áCN┬Ñ -21.532┬áCN┬Ñ	04/05/2024 13:51:37	T
1193	Customer Engineer	Germany	Microsoft	81.225┬áÔé¼┬á/anno	04/05/2024 13:51:57	T
1194	Customer Engineer	Germany	Google	156.547┬áÔé¼┬á/anno	04/05/2024 13:51:57	T
1195	Customer Engineer	Germany	Ultimate	Circa┬á53.078┬áÔé¼ -61.222┬áÔé¼	04/05/2024 13:51:57	T
1196	Customer Engineer	Germany	Applied Materials	Circa┬á55.581┬áÔé¼ -61.372┬áÔé¼	04/05/2024 13:51:57	T
1197	Customer Engineer	Germany	NCR	Circa┬á41.504┬áÔé¼ -47.003┬áÔé¼	04/05/2024 13:51:57	T
1198	Customer Engineer	Germany	Robert Bosch	Circa┬á106.288┬áÔé¼ -122.966┬áÔé¼	04/05/2024 13:51:57	T
1199	Customer Engineer	Germany	FERCHAU	Circa┬á45.994┬áÔé¼ -54.224┬áÔé¼	04/05/2024 13:51:57	T
1200	Customer Engineer	Germany	Nokia	Circa┬á72.538┬áÔé¼ -86.895┬áÔé¼	04/05/2024 13:51:57	T
1201	Customer Engineer	Germany	Linde	Circa┬á42.092┬áÔé¼ -48.197┬áÔé¼	04/05/2024 13:51:57	T
1202	Customer Engineer	Germany	Ricoh	Circa┬á55.227┬áÔé¼ -64.399┬áÔé¼	04/05/2024 13:51:57	T
1203	Customer Engineer	Germany	ASML	Circa┬á53.132┬áÔé¼ -63.594┬áÔé¼	04/05/2024 13:51:57	T
1204	Customer Engineer	Germany	Advantest	Circa┬á52.399┬áÔé¼ -61.699┬áÔé¼	04/05/2024 13:51:57	T
1205	Customer Engineer	Germany	Hitachi Vantara	Circa┬á56.721┬áÔé¼ -67.229┬áÔé¼	04/05/2024 13:51:57	T
1206	Customer Engineer	Germany	Google Cloud	Circa┬á163.572┬áÔé¼ -191.814┬áÔé¼	04/05/2024 13:51:57	T
1207	Customer Engineer	Germany	Big Dutchman	Circa┬á3356┬áÔé¼ -4009┬áÔé¼	04/05/2024 13:51:57	T
1208	Customer Engineer	Germany	Air Products	Circa┬á50.759┬áÔé¼ -59.017┬áÔé¼	04/05/2024 13:51:57	T
1209	Customer Engineer	Germany	ATEME	Circa┬á49.006┬áÔé¼ -57.040┬áÔé¼	04/05/2024 13:51:57	T
1210	Customer Engineer	Germany	T-Systems	70.000┬áÔé¼┬á/anno	04/05/2024 13:51:57	T
1211	Customer Engineer	Germany	LeanIX	41.667┬áÔé¼┬á/anno	04/05/2024 13:51:58	T
1212	Customer Engineer	Germany	Applied Materials	63.153┬áÔé¼┬á/anno	04/05/2024 13:51:58	T
1213	Customer Engineer	Japan	Applied Materials	396.443┬áJPY┬á/mese	04/05/2024 13:52:16	T
1214	Customer Engineer	Japan	Google	21.614.347┬áJPY┬á/anno	04/05/2024 13:52:16	T
1215	Customer Engineer	Japan	Google Cloud	19.597.273┬áJPY┬á/anno	04/05/2024 13:52:16	T
1216	Customer Engineer	Japan	Microsoft	Circa┬á10┬áMio┬áJPY -16┬áMio┬áJPY	04/05/2024 13:52:16	T
1217	Customer Engineer	Japan	IBM	Circa┬á4┬áMio┬áJPY -4┬áMio┬áJPY	04/05/2024 13:52:16	T
1218	Customer Engineer	Japan	Cybaba	Circa┬á192.875┬áJPY -227.664┬áJPY	04/05/2024 13:52:16	T
1219	Customer Engineer	Japan	PLAID	Circa┬á7┬áMio┬áJPY -8┬áMio┬áJPY	04/05/2024 13:52:16	T
1220	Customer Engineer	Japan	WASSHA	Circa┬á4┬áMio┬áJPY -4┬áMio┬áJPY	04/05/2024 13:52:16	T
1221	Customer Engineer	Japan	Nokia	7.500.000┬áJPY┬á/anno	04/05/2024 13:52:17	T
1222	Customer Engineer	Japan	Google Cloud	18.380.451┬áJPY┬á/anno	04/05/2024 13:52:17	T
1223	Customer Engineer	Japan	Akamai	Circa┬á13┬áMio┬áJPY -17┬áMio┬áJPY	04/05/2024 13:52:17	T
1224	Customer Engineer	Japan	KLA	Circa┬á290.025┬áJPY -463.865┬áJPY	04/05/2024 13:52:17	T
1225	Customer Engineer	Japan	Google	Circa┬á17┬áMio┬áJPY -29┬áMio┬áJPY	04/05/2024 13:52:17	T
1226	Customer Engineer	Japan	Cisco	Circa┬á7┬áMio┬áJPY -8┬áMio┬áJPY	04/05/2024 13:52:17	T
1227	Customer Engineer	Japan	Cisco	Circa┬á7┬áMio┬áJPY -9┬áMio┬áJPY	04/05/2024 13:52:17	T
1228	Customer Engineer	Japan	Tealium	Circa┬á7┬áMio┬áJPY -8┬áMio┬áJPY	04/05/2024 13:52:17	T
1229	Customer Engineer	Japan	Edgio	Circa┬á6┬áMio┬áJPY -7┬áMio┬áJPY	04/05/2024 13:52:17	T
1230	Customer Engineer	Japan	Mitsubishi Fuso Truck & Bus	Circa┬á118.742┬áJPY -139.963┬áJPY	04/05/2024 13:52:17	T
1231	Customer Engineer	Japan	ASML	Circa┬á8┬áMio┬áJPY -9┬áMio┬áJPY	04/05/2024 13:52:17	T
1232	Customer Engineer	Japan	GreyOrange	Circa┬á6┬áMio┬áJPY -6┬áMio┬áJPY	04/05/2024 13:52:17	T
1233	Customer Engineer	United Kingdom	NCR	22.885┬á┬ú┬á/anno	04/05/2024 13:52:55	T
1234	Customer Engineer	United Kingdom	Microsoft	59.968┬á┬ú┬á/anno	04/05/2024 13:52:55	T
1235	Customer Engineer	United Kingdom	Google	160.941┬á┬ú┬á/anno	04/05/2024 13:52:55	T
1236	Customer Engineer	United Kingdom	Computacenter	39.339┬á┬ú┬á/anno	04/05/2024 13:52:55	T
1237	Customer Engineer	United Kingdom	RM	23.292┬á┬ú┬á/anno	04/05/2024 13:52:55	T
1238	Customer Engineer	United Kingdom	Gamma Telecom Holdings	37.940┬á┬ú┬á/anno	04/05/2024 13:52:55	T
1239	Customer Engineer	United Kingdom	BT Group	32.436┬á┬ú┬á/anno	04/05/2024 13:52:55	T
1240	Customer Engineer	United Kingdom	IBM	24.000┬á┬ú┬á/anno	04/05/2024 13:52:55	T
1241	Customer Engineer	United Kingdom	Vertiv	30.876┬á┬ú┬á/anno	04/05/2024 13:52:55	T
1242	Customer Engineer	United Kingdom	Adecco	Circa┬á45.523┬á┬ú -51.307┬á┬ú	04/05/2024 13:52:55	T
1243	Customer Engineer	United Kingdom	Cummins	Circa┬á33.635┬á┬ú -52.103┬á┬ú	04/05/2024 13:52:55	T
1244	Customer Engineer	United Kingdom	Imagination Technologies	Circa┬á25.978┬á┬ú -35.503┬á┬ú	04/05/2024 13:52:55	T
1245	Customer Engineer	United Kingdom	NCR	Circa┬á14┬á┬ú -15┬á┬ú┬áoraria	04/05/2024 13:52:55	T
1246	Customer Engineer	United Kingdom	Allvotec	Circa┬á19.368┬á┬ú -28.648┬á┬ú	04/05/2024 13:52:55	T
1247	Customer Engineer	United Kingdom	Mitel Networks	Circa┬á24.400┬á┬ú -67.737┬á┬ú	04/05/2024 13:52:55	T
1248	Customer Engineer	United Kingdom	Amazon	Circa┬á26.046┬á┬ú -30.024┬á┬ú	04/05/2024 13:52:55	T
1249	Customer Engineer	United Kingdom	Google	Circa┬á59.256┬á┬ú -70.499┬á┬ú	04/05/2024 13:52:55	T
1250	Customer Engineer	United Kingdom	Goldman Sachs	Circa┬á51.899┬á┬ú -60.411┬á┬ú	04/05/2024 13:52:55	T
1251	Customer Engineer	United Kingdom	Microsoft	Circa┬á14.680┬á┬ú -17.114┬á┬ú	04/05/2024 13:52:56	T
1252	Customer Engineer	United Kingdom	Microsoft	Circa┬á110.114┬á┬ú -130.038┬á┬ú	04/05/2024 13:52:56	T
1253	Customer Engineer	France	Microsoft	64.680┬áÔé¼┬á/anno	04/05/2024 13:53:14	T
1254	Customer Engineer	France	Google Cloud	157.218┬áÔé¼┬á/anno	04/05/2024 13:53:14	T
1255	Customer Engineer	France	Google	137.965┬áÔé¼┬á/anno	04/05/2024 13:53:14	T
1256	Customer Engineer	France	Applied Materials	Circa┬á47.741┬áÔé¼ -52.271┬áÔé¼	04/05/2024 13:53:14	T
1257	Customer Engineer	France	TotalEnergies	Circa┬á54.532┬áÔé¼ -64.414┬áÔé¼	04/05/2024 13:53:14	T
1258	Customer Engineer	France	XXXX Brewery	Circa┬á46.683┬áÔé¼ -55.886┬áÔé¼	04/05/2024 13:53:14	T
1259	Customer Engineer	France	Symtrax	Circa┬á50.946┬áÔé¼ -59.664┬áÔé¼	04/05/2024 13:53:14	T
1260	Customer Engineer	France	Plume Design	Circa┬á119.539┬áÔé¼ -138.724┬áÔé¼	04/05/2024 13:53:14	T
1261	Customer Engineer	France	Microsoft	71.600┬áÔé¼┬á/anno	04/05/2024 13:53:14	T
1262	Customer Engineer	France	Airbus	42.767┬áÔé¼┬á/anno	04/05/2024 13:53:14	T
1263	Customer Engineer	France	Databricks	66.897┬áÔé¼┬á/anno	04/05/2024 13:53:14	T
1264	Customer Engineer	France	Scality	98.997┬áÔé¼┬á/anno	04/05/2024 13:53:14	T
1265	Customer Engineer	France	Safran Aircraft Engines	Circa┬á2989┬áÔé¼ -5342┬áÔé¼	04/05/2024 13:53:14	T
1266	Customer Engineer	France	Linkfluence	Circa┬á26.825┬áÔé¼ -38.308┬áÔé¼	04/05/2024 13:53:14	T
1267	Customer Engineer	France	IDEMIA	Circa┬á48.510┬áÔé¼ -63.931┬áÔé¼	04/05/2024 13:53:14	T
1268	Customer Engineer	France	Brevo	Circa┬á51.877┬áÔé¼ -59.810┬áÔé¼	04/05/2024 13:53:14	T
1269	Customer Engineer	France	Palo Alto Networks	Circa┬á95.849┬áÔé¼ -125.682┬áÔé¼	04/05/2024 13:53:15	T
1270	Customer Engineer	France	NTN-SNR	Circa┬á30.659┬áÔé¼ -46.727┬áÔé¼	04/05/2024 13:53:15	T
1271	Customer Engineer	France	Aptiv	Circa┬á44.667┬áÔé¼ -57.436┬áÔé¼	04/05/2024 13:53:15	T
1272	Customer Engineer	France	Deepki	Circa┬á6┬áÔé¼ -7┬áÔé¼┬áoraria	04/05/2024 13:53:15	T
1273	Customer Engineer	Brazil	Microsoft	12.754┬áBRL┬á/mese	04/05/2024 13:53:34	T
1274	Customer Engineer	Brazil	NCR	3.418┬áBRL┬á/mese	04/05/2024 13:53:34	T
1275	Customer Engineer	Brazil	Google	22.125┬áBRL┬á/mese	04/05/2024 13:53:34	T
1276	Customer Engineer	Brazil	Hewlett Packard Enterprise | HPE	2.950┬áBRL┬á/mese	04/05/2024 13:53:34	T
1277	Customer Engineer	Brazil	Microsoft	Circa┬á1925┬áBRL -2084┬áBRL	04/05/2024 13:53:34	T
1278	Customer Engineer	Brazil	NCR	Circa┬á3366┬áBRL -4021┬áBRL	04/05/2024 13:53:34	T
1279	Customer Engineer	Brazil	Belvo	Circa┬á11.580┬áBRL -17.856┬áBRL	04/05/2024 13:53:34	T
1280	Customer Engineer	Brazil	Microsoft	Circa┬á11.854┬áBRL -14.028┬áBRL	04/05/2024 13:53:34	T
1281	Customer Engineer	Brazil	Zurich Insurance	Circa┬á9147┬áBRL -10.786┬áBRL	04/05/2024 13:53:34	T
1282	Customer Engineer	Brazil	Nokia	Circa┬á14.771┬áBRL -16.989┬áBRL	04/05/2024 13:53:34	T
1283	Customer Engineer	Brazil	CloudWalk, Inc.	Circa┬á2762┬áBRL -3219┬áBRL	04/05/2024 13:53:34	T
1284	Customer Engineer	Brazil	Cisco	Circa┬á2051┬áBRL -2413┬áBRL	04/05/2024 13:53:34	T
1285	Customer Engineer	Brazil	PSM Company	Circa┬á16.631┬áBRL -19.260┬áBRL	04/05/2024 13:53:34	T
1286	Customer Engineer	Brazil	Google Cloud	Circa┬á26.457┬áBRL -31.015┬áBRL	04/05/2024 13:53:34	T
1287	Customer Engineer	Brazil	Studio365	Circa┬á6643┬áBRL -7819┬áBRL	04/05/2024 13:53:34	T
1288	Customer Engineer	Brazil	TOP 365	Circa┬á6421┬áBRL -7482┬áBRL	04/05/2024 13:53:34	T
1289	Customer Engineer	Brazil	CloudWalk, Inc.	3.464┬áBRL┬á/mese	04/05/2024 13:53:34	T
1290	Customer Engineer	Brazil	Embraer	10.498┬áBRL┬á/mese	04/05/2024 13:53:34	T
1291	Customer Engineer	Brazil	SAP	6.668┬áBRL┬á/mese	04/05/2024 13:53:34	T
1292	Customer Engineer	Brazil	Liferay	4.927┬áBRL┬á/mese	04/05/2024 13:53:34	T
1293	Customer Engineer	Italy	Microsoft	63.801┬áÔé¼┬á/anno	04/05/2024 13:53:53	T
1294	Customer Engineer	Italy	Applied Materials	Circa┬á39.974┬áÔé¼ -47.514┬áÔé¼	04/05/2024 13:53:53	T
1295	Customer Engineer	Italy	NCR	Circa┬á7┬áÔé¼ -9┬áÔé¼┬áoraria	04/05/2024 13:53:53	T
1296	Customer Engineer	Italy	Microsoft	Circa┬á730┬áÔé¼ -866┬áÔé¼	04/05/2024 13:53:53	T
1297	Customer Engineer	Italy	Atos	Circa┬á42.953┬áÔé¼ -50.824┬áÔé¼	04/05/2024 13:53:53	T
1298	Customer Engineer	Italy	Vertiv	Circa┬á76.919┬áÔé¼ -90.669┬áÔé¼	04/05/2024 13:53:53	T
1299	Customer Engineer	Italy	Praxair Surface Technologies	Circa┬á39.230┬áÔé¼ -46.219┬áÔé¼	04/05/2024 13:53:54	T
1300	Customer Engineer	Italy	Leonardo	26.125┬áÔé¼┬á/anno	04/05/2024 13:53:54	T
1301	Customer Engineer	Italy	KLA	49.668┬áÔé¼┬á/anno	04/05/2024 13:53:54	T
1302	Customer Engineer	Italy	ContentWise	30.757┬áÔé¼┬á/anno	04/05/2024 13:53:54	T
1303	Customer Engineer	Italy	Capgemini Engineering	29.667┬áÔé¼┬á/anno	04/05/2024 13:53:54	T
1304	Customer Engineer	Italy	IVECO DEFENCE VEHICLES	Circa┬á35.324┬áÔé¼ -47.186┬áÔé¼	04/05/2024 13:53:54	T
1305	Customer Engineer	Italy	Elica	Circa┬á40.895┬áÔé¼ -44.059┬áÔé¼	04/05/2024 13:53:54	T
1306	Customer Engineer	Italy	Microsoft	Circa┬á40.832┬áÔé¼ -47.337┬áÔé¼	04/05/2024 13:53:54	T
1307	Customer Engineer	Italy	iGenius	Circa┬á44.416┬áÔé¼ -51.920┬áÔé¼	04/05/2024 13:53:54	T
1308	Customer Engineer	Italy	Aptos	Circa┬á23.872┬áÔé¼ -28.185┬áÔé¼	04/05/2024 13:53:54	T
1309	Customer Engineer	Italy	TUI Group	Circa┬á20.143┬áÔé¼ -23.948┬áÔé¼	04/05/2024 13:53:54	T
1310	Customer Engineer	Italy	PerkinElmer	Circa┬á548┬áÔé¼ -651┬áÔé¼	04/05/2024 13:53:54	T
1311	Customer Engineer	Italy	PerkinElmer	Circa┬á45.817┬áÔé¼ -54.902┬áÔé¼	04/05/2024 13:53:54	T
1312	Customer Engineer	Italy	Ford Credit	Circa┬á1108┬áÔé¼ -1285┬áÔé¼	04/05/2024 13:53:54	T
1313	Marketing Associate	United States	Sysco	75.669┬áUSD┬á/anno	04/05/2024 13:54:13	T
1314	Marketing Associate	United States	Advisory Board	81.446┬áUSD┬á/anno	04/05/2024 13:54:13	T
1315	Marketing Associate	United States	Expedia Group	75.362┬áUSD┬á/anno	04/05/2024 13:54:13	T
1316	Marketing Associate	United States	Aspen Heights	27┬áUSD┬á/ora	04/05/2024 13:54:13	T
1317	Marketing Associate	United States	Stryker	73.539┬áUSD┬á/anno	04/05/2024 13:54:13	T
1318	Marketing Associate	United States	JPMorgan Chase & Co	77.119┬áUSD┬á/anno	04/05/2024 13:54:13	T
1319	Marketing Associate	United States	The Bradford Group	62.202┬áUSD┬á/anno	04/05/2024 13:54:13	T
1320	Marketing Associate	United States	Nestl├® USA	85.994┬áUSD┬á/anno	04/05/2024 13:54:13	T
1321	Marketing Associate	United States	RealPage	27┬áUSD┬á/ora	04/05/2024 13:54:13	T
1322	Marketing Associate	United States	UDR	33┬áUSD┬á/ora	04/05/2024 13:54:13	T
1323	Marketing Associate	United States	TribalVision	57.276┬áUSD┬á/anno	04/05/2024 13:54:13	T
1324	Marketing Associate	United States	Expedia Group	72.516┬áUSD┬á/anno	04/05/2024 13:54:13	T
1325	Marketing Associate	United States	Deloitte	89.120┬áUSD┬á/anno	04/05/2024 13:54:13	T
1326	Marketing Associate	United States	General Mills	73.810┬áUSD┬á/anno	04/05/2024 13:54:13	T
1327	Marketing Associate	United States	Nestl├® Purina U.S.	66.451┬áUSD┬á/anno	04/05/2024 13:54:13	T
1328	Marketing Associate	United States	Est├®e Lauder Companies	64.659┬áUSD┬á/anno	04/05/2024 13:54:13	T
1329	Marketing Associate	United States	Reed Exhibitions	59.238┬áUSD┬á/anno	04/05/2024 13:54:13	T
1330	Marketing Associate	United States	L'Or├®al	69.132┬áUSD┬á/anno	04/05/2024 13:54:13	T
1331	Marketing Associate	United States	State Farm	59.527┬áUSD┬á/anno	04/05/2024 13:54:13	T
1332	Marketing Associate	United States	Compass	64.979┬áUSD┬á/anno	04/05/2024 13:54:13	T
1333	Marketing Associate	China	JD.com	Circa┬á114.494┬áCN┬Ñ -124.292┬áCN┬Ñ	04/05/2024 13:54:32	T
1334	Marketing Associate	China	Tencent	Circa┬á930┬áCN┬Ñ -1083┬áCN┬Ñ	04/05/2024 13:54:32	T
1335	Marketing Associate	China	ByteDance	Circa┬á51.200┬áCN┬Ñ -61.006┬áCN┬Ñ	04/05/2024 13:54:32	T
1336	Marketing Associate	China	EF English First	Circa┬á7264┬áCN┬Ñ -8722┬áCN┬Ñ	04/05/2024 13:54:32	T
1337	Marketing Associate	China	Xiaomi	Circa┬á6011┬áCN┬Ñ -7096┬áCN┬Ñ	04/05/2024 13:54:32	T
1338	Marketing Associate	China	Industrial and Commercial Bank of China	Circa┬á186.616┬áCN┬Ñ -217.567┬áCN┬Ñ	04/05/2024 13:54:32	T
1339	Marketing Associate	China	Weber Shandwick	Circa┬á9┬áCN┬Ñ -11┬áCN┬Ñ┬áoraria	04/05/2024 13:54:32	T
1340	Marketing Associate	China	CSOFT International	Circa┬á11.054┬áCN┬Ñ -13.000┬áCN┬Ñ	04/05/2024 13:54:32	T
1341	Marketing Associate	China	Est├®e Lauder Companies	Circa┬á3651┬áCN┬Ñ -4324┬áCN┬Ñ	04/05/2024 13:54:32	T
1342	Marketing Associate	China	Expedia Group	Circa┬á7322┬áCN┬Ñ -8714┬áCN┬Ñ	04/05/2024 13:54:32	T
1343	Marketing Associate	China	Mercedes-Benz International	Circa┬á25.047┬áCN┬Ñ -29.926┬áCN┬Ñ	04/05/2024 13:54:32	T
1344	Marketing Associate	China	Caixin	Circa┬á7333┬áCN┬Ñ -8681┬áCN┬Ñ	04/05/2024 13:54:32	T
1345	Marketing Associate	China	AmCham China	Circa┬á7419┬áCN┬Ñ -8606┬áCN┬Ñ	04/05/2024 13:54:32	T
1346	Marketing Associate	China	Clean Energy Associates	Circa┬á13.920┬áCN┬Ñ -16.235┬áCN┬Ñ	04/05/2024 13:54:32	T
1347	Marketing Associate	China	naked Group	Circa┬á185.597┬áCN┬Ñ -213.781┬áCN┬Ñ	04/05/2024 13:54:32	T
1348	Marketing Associate	China	BTCC Technology	Circa┬á5995┬áCN┬Ñ -7037┬áCN┬Ñ	04/05/2024 13:54:32	T
1349	Marketing Associate	China	ZBJ Network	Circa┬á4204┬áCN┬Ñ -4790┬áCN┬Ñ	04/05/2024 13:54:32	T
1350	Marketing Associate	China	CRCC Asia	Circa┬á4625┬áCN┬Ñ -5448┬áCN┬Ñ	04/05/2024 13:54:32	T
1351	Marketing Associate	China	Mapbox	Circa┬á203.502┬áCN┬Ñ -239.617┬áCN┬Ñ	04/05/2024 13:54:32	T
1352	Marketing Associate	China	Alcoa	Circa┬á26.854┬áCN┬Ñ -31.792┬áCN┬Ñ	04/05/2024 13:54:32	T
1353	Marketing Associate	Japan	SoftBank	Circa┬á319.295┬áJPY -391.429┬áJPY	04/05/2024 13:55:09	T
1354	Marketing Associate	Japan	Rakuten	Circa┬á407.654┬áJPY -471.455┬áJPY	04/05/2024 13:55:09	T
1355	Marketing Associate	Japan	IQVIA	Circa┬á473.432┬áJPY -548.520┬áJPY	04/05/2024 13:55:09	T
1356	Marketing Associate	Japan	Sansan	Circa┬á5┬áMio┬áJPY -5┬áMio┬áJPY	04/05/2024 13:55:09	T
1357	Marketing Associate	Japan	GLOBIS University	Circa┬á7┬áMio┬áJPY -8┬áMio┬áJPY	04/05/2024 13:55:09	T
1358	Marketing Associate	Japan	Unilever	Circa┬á6┬áMio┬áJPY -7┬áMio┬áJPY	04/05/2024 13:55:09	T
1359	Marketing Associate	Japan	MoveFast	Circa┬á228.882┬áJPY -271.030┬áJPY	04/05/2024 13:55:09	T
1360	Marketing Associate	Japan	EF Education First	Circa┬á540.483┬áJPY -624.288┬áJPY	04/05/2024 13:55:09	T
1361	Marketing Associate	Japan	Odigo Travel	Circa┬á230.308┬áJPY -269.619┬áJPY	04/05/2024 13:55:09	T
1362	Marketing Associate	Japan	Odigo Travel	Circa┬á256.427┬áJPY -301.957┬áJPY	04/05/2024 13:55:09	T
1363	Marketing Associate	Japan	Tetra Pak	Circa┬á5┬áMio┬áJPY -6┬áMio┬áJPY	04/05/2024 13:55:09	T
1364	Marketing Associate	Japan	Sony Music Entertainment	Circa┬á296.148┬áJPY -345.777┬áJPY	04/05/2024 13:55:09	T
1365	Marketing Associate	Japan	DCOM Money Express	Circa┬á259.375┬áJPY -307.931┬áJPY	04/05/2024 13:55:09	T
1366	Marketing Associate	Japan	HelloFresh	Circa┬á6┬áMio┬áJPY -7┬áMio┬áJPY	04/05/2024 13:55:09	T
1367	Marketing Associate	Japan	Freebit	Circa┬á3┬áMio┬áJPY -4┬áMio┬áJPY	04/05/2024 13:55:09	T
1368	Marketing Associate	Japan	Medical Collective Intelligence	Circa┬á4┬áMio┬áJPY -5┬áMio┬áJPY	04/05/2024 13:55:09	T
1369	Marketing Associate	Japan	ITcompany	Circa┬á273.332┬áJPY -321.792┬áJPY	04/05/2024 13:55:09	T
1370	Marketing Associate	Japan	GLOBIS Corporation	Circa┬á5┬áMio┬áJPY -6┬áMio┬áJPY	04/05/2024 13:55:09	T
1371	Marketing Associate	Japan	Blink Smart Workspace	Circa┬á1025┬áJPY -1185┬áJPY┬áoraria	04/05/2024 13:55:09	T
1372	Marketing Associate	Japan	Daito Trust Construction	Circa┬á1395┬áJPY -1624┬áJPY┬áoraria	04/05/2024 13:55:09	T
1373	Marketing Associate	India	Eli Lilly and Company	116.223┬áUSD┬á/anno	04/05/2024 13:55:28	T
1374	Marketing Associate	India	Indiana University Health	65.137┬áUSD┬á/anno	04/05/2024 13:55:28	T
1375	Marketing Associate	India	Sysco	68.041┬áUSD┬á/anno	04/05/2024 13:55:28	T
1376	Marketing Associate	India	Indiana Farm Bureau Insurance	 xx┬áUSD┬á/ora	04/05/2024 13:55:28	T
1377	Marketing Associate	India	Spot	 xx.xxx┬áUSD┬á/anno	04/05/2024 13:55:28	T
1378	Marketing Associate	India	Brybelly	 xx.xxx┬áUSD┬á/anno	04/05/2024 13:55:28	T
1379	Marketing Associate	India	CMG Worldwide	 xx.xxx┬áUSD┬á/anno	04/05/2024 13:55:28	T
1380	Marketing Associate	India	Stericycle	 xx.xxx┬áUSD┬á/anno	04/05/2024 13:55:28	T
1381	Marketing Associate	India	Celigo	 xx.xxx┬áUSD┬á/anno	04/05/2024 13:55:28	T
1382	Marketing Associate	India	PTS Diagnostics	 xx.xxx┬áUSD┬á/anno	04/05/2024 13:55:28	T
1383	Marketing Associate	India	VMS BioMarketing	 xx.xxx┬áUSD┬á/anno	04/05/2024 13:55:28	T
1384	Marketing Associate	India	Bangs Laboratories	 xx.xxx┬áUSD┬á/anno	04/05/2024 13:55:28	T
1385	Marketing Associate	India	Caesars Entertainment	 xx.xxx┬áUSD┬á/anno	04/05/2024 13:55:29	T
1386	Marketing Associate	India	FreightRover	 xx.xxx┬áUSD┬á/anno	04/05/2024 13:55:29	T
1387	Marketing Associate	India	Amazon	 xx.xxx┬áUSD┬á/anno	04/05/2024 13:55:29	T
1388	Marketing Associate	India	Dunder Mifflin India	 xx.xxx┬áUSD┬á/anno	04/05/2024 13:55:29	T
1389	Marketing Associate	India	Stericycle Communication Solutions	 xx.xxx┬áUSD┬á/anno	04/05/2024 13:55:29	T
1390	Marketing Associate	India	Corteva Agriscience	 xx.xxx┬áUSD┬á/anno	04/05/2024 13:55:29	T
1391	Marketing Associate	India	The Bulldog Bar and Lounge	 xx┬áUSD┬á/ora	04/05/2024 13:55:29	T
1392	Marketing Associate	India	Dynamic Resource Group	 xx┬áUSD┬á/ora	04/05/2024 13:55:29	T
1393	Marketing Associate	United Kingdom	Deliveroo	40.600┬á┬ú┬á/anno	04/05/2024 13:55:48	T
1394	Marketing Associate	United Kingdom	SAP	18.200┬á┬ú┬á/anno	04/05/2024 13:55:48	T
1395	Marketing Associate	United Kingdom	MSD	35.707┬á┬ú┬á/anno	04/05/2024 13:55:48	T
1396	Marketing Associate	United Kingdom	JPMorgan Chase & Co	53.224┬á┬ú┬á/anno	04/05/2024 13:55:48	T
1397	Marketing Associate	United Kingdom	Samsung Electronics	28.254┬á┬ú┬á/anno	04/05/2024 13:55:48	T
1398	Marketing Associate	United Kingdom	Finastra	31.625┬á┬ú┬á/anno	04/05/2024 13:55:48	T
1399	Marketing Associate	United Kingdom	Keyence	30.750┬á┬ú┬á/anno	04/05/2024 13:55:48	T
1400	Marketing Associate	United Kingdom	TechTarget	29.000┬á┬ú┬á/anno	04/05/2024 13:55:48	T
1401	Marketing Associate	United Kingdom	Amazon	30.667┬á┬ú┬á/anno	04/05/2024 13:55:48	T
1402	Marketing Associate	United Kingdom	PwC	24.833┬á┬ú┬á/anno	04/05/2024 13:55:48	T
1403	Marketing Associate	United Kingdom	BlackRock	67.033┬á┬ú┬á/anno	04/05/2024 13:55:48	T
1404	Marketing Associate	United Kingdom	Expedia Group	35.567┬á┬ú┬á/anno	04/05/2024 13:55:48	T
1405	Marketing Associate	United Kingdom	SAP	19.667┬á┬ú┬á/anno	04/05/2024 13:55:48	T
1406	Marketing Associate	United Kingdom	Roche	24.667┬á┬ú┬á/anno	04/05/2024 13:55:48	T
1407	Marketing Associate	United Kingdom	Eli Lilly and Company	17.667┬á┬ú┬á/anno	04/05/2024 13:55:48	T
1408	Marketing Associate	United Kingdom	BMO Financial Group	40.000┬á┬ú┬á/anno	04/05/2024 13:55:48	T
1409	Marketing Associate	United Kingdom	SEI Investments	49.852┬á┬ú┬á/anno	04/05/2024 13:55:48	T
1410	Marketing Associate	United Kingdom	Zoe	34.000┬á┬ú┬á/anno	04/05/2024 13:55:48	T
1411	Marketing Associate	United Kingdom	McDonald's	Circa┬á7┬á┬ú -8┬á┬ú┬áoraria	04/05/2024 13:55:48	T
1412	Marketing Associate	United Kingdom	SainsburyÔÇÖs	Circa┬á25.993┬á┬ú -36.541┬á┬ú	04/05/2024 13:55:48	T
1413	Marketing Associate	France	Dataiku	37.932┬áÔé¼┬á/anno	04/05/2024 13:56:07	T
1414	Marketing Associate	France	BlaBlaCar	Circa┬á34.429┬áÔé¼ -37.189┬áÔé¼	04/05/2024 13:56:07	T
1415	Marketing Associate	France	Yoobic	Circa┬á1240┬áÔé¼ -1354┬áÔé¼	04/05/2024 13:56:07	T
1416	Marketing Associate	France	Goodays	Circa┬á38.454┬áÔé¼ -41.606┬áÔé¼	04/05/2024 13:56:07	T
1417	Marketing Associate	France	SimilarWeb	Circa┬á2405┬áÔé¼ -2576┬áÔé¼	04/05/2024 13:56:07	T
1418	Marketing Associate	France	Pinterest	Circa┬á1160┬áÔé¼ -1246┬áÔé¼	04/05/2024 13:56:07	T
1419	Marketing Associate	France	Dassault Syst├¿mes	Circa┬á40.725┬áÔé¼ -48.070┬áÔé¼	04/05/2024 13:56:07	T
1420	Marketing Associate	France	Microsoft	Circa┬á911┬áÔé¼ -1080┬áÔé¼	04/05/2024 13:56:07	T
1421	Marketing Associate	France	Google	Circa┬á2588┬áÔé¼ -3045┬áÔé¼	04/05/2024 13:56:07	T
1422	Marketing Associate	France	Coty	Circa┬á1109┬áÔé¼ -1292┬áÔé¼	04/05/2024 13:56:07	T
1423	Marketing Associate	France	BlaBlaCar	Circa┬á1097┬áÔé¼ -1300┬áÔé¼	04/05/2024 13:56:07	T
1424	Marketing Associate	France	BlaBlaCar	Circa┬á35.082┬áÔé¼ -41.230┬áÔé¼	04/05/2024 13:56:07	T
1425	Marketing Associate	France	Norauto	Circa┬á31.986┬áÔé¼ -38.239┬áÔé¼	04/05/2024 13:56:07	T
1426	Marketing Associate	France	Deliveroo	Circa┬á34.459┬áÔé¼ -40.103┬áÔé¼	04/05/2024 13:56:07	T
1427	Marketing Associate	France	Aircall	Circa┬á34.062┬áÔé¼ -39.634┬áÔé¼	04/05/2024 13:56:07	T
1428	Marketing Associate	France	BD	Circa┬á42.288┬áÔé¼ -50.380┬áÔé¼	04/05/2024 13:56:07	T
1429	Marketing Associate	France	Cooptalis	Circa┬á36.693┬áÔé¼ -43.186┬áÔé¼	04/05/2024 13:56:07	T
1430	Marketing Associate	France	Kenzo	Circa┬á36.543┬áÔé¼ -43.293┬áÔé¼	04/05/2024 13:56:07	T
1431	Marketing Associate	France	HARTMANN GROUP	Circa┬á26.453┬áÔé¼ -31.226┬áÔé¼	04/05/2024 13:56:07	T
1432	Marketing Associate	France	Worldia	Circa┬á33.454┬áÔé¼ -39.006┬áÔé¼	04/05/2024 13:56:07	T
1433	Marketing Associate	Brazil	Shopee	6.831┬áBRL┬á/mese	04/05/2024 13:56:26	T
1434	Marketing Associate	Brazil	Unisys	Circa┬á1911┬áBRL -5124┬áBRL	04/05/2024 13:56:26	T
1435	Marketing Associate	Brazil	Vivo (Telef├┤nica Brasil)	Circa┬á4147┬áBRL -4856┬áBRL	04/05/2024 13:56:26	T
1436	Marketing Associate	Brazil	Vivo (Telef├┤nica Brasil)	Circa┬á10.436┬áBRL -12.598┬áBRL	04/05/2024 13:56:26	T
1437	Marketing Associate	Brazil	Magazine Luiza	Circa┬á2403┬áBRL -2811┬áBRL	04/05/2024 13:56:26	T
1438	Marketing Associate	Brazil	Porto	Circa┬á1355┬áBRL -1629┬áBRL	04/05/2024 13:56:26	T
1439	Marketing Associate	Brazil	Concentrix	Circa┬á11.166┬áBRL -12.866┬áBRL	04/05/2024 13:56:26	T
1440	Marketing Associate	Brazil	Johnson & Johnson	Circa┬á2238┬áBRL -2603┬áBRL	04/05/2024 13:56:26	T
1441	Marketing Associate	Brazil	L'Or├®al	Circa┬á4620┬áBRL -5353┬áBRL	04/05/2024 13:56:26	T
1442	Marketing Associate	Brazil	Shopee	Circa┬á4148┬áBRL -4868┬áBRL	04/05/2024 13:56:26	T
1443	Marketing Associate	Brazil	Gympass	Circa┬á6516┬áBRL -7644┬áBRL	04/05/2024 13:56:26	T
1444	Marketing Associate	Brazil	V4 Company	Circa┬á28.059┬áBRL -32.852┬áBRL	04/05/2024 13:56:26	T
1445	Marketing Associate	Brazil	unico	Circa┬á4538┬áBRL -5388┬áBRL	04/05/2024 13:56:26	T
1446	Marketing Associate	Brazil	Pop Trade Marketing	Circa┬á103.723┬áBRL -120.718┬áBRL	04/05/2024 13:56:26	T
1447	Marketing Associate	Brazil	WeWork	Circa┬á2959┬áBRL -3426┬áBRL	04/05/2024 13:56:26	T
1448	Marketing Associate	Brazil	Ebix	Circa┬á2407┬áBRL -2812┬áBRL	04/05/2024 13:56:26	T
1449	Marketing Associate	Brazil	ByteDance	Circa┬á28.110┬áBRL -32.603┬áBRL	04/05/2024 13:56:26	T
1450	Marketing Associate	Brazil	Ativa Log├¡stica	Circa┬á7369┬áBRL -8704┬áBRL	04/05/2024 13:56:26	T
1451	Marketing Associate	Brazil	Grupo GCB	Circa┬á2740┬áBRL -3290┬áBRL	04/05/2024 13:56:26	T
1452	Marketing Associate	Brazil	Riot Games	Circa┬á4745┬áBRL -5564┬áBRL	04/05/2024 13:56:26	T
1453	Marketing Associate	Italy	Expedia Group	700┬áÔé¼┬á/mese	04/05/2024 13:56:46	T
1454	Marketing Associate	Italy	Eli Lilly and Company	Circa┬á31.531┬áÔé¼ -42.446┬áÔé¼	04/05/2024 13:56:46	T
1455	Marketing Associate	Italy	Accenture	Circa┬á1838┬áÔé¼ -2169┬áÔé¼	04/05/2024 13:56:46	T
1456	Marketing Associate	Italy	Nessuna	Circa┬á1189┬áÔé¼ -1395┬áÔé¼	04/05/2024 13:56:46	T
1457	Marketing Associate	Italy	UniCredit Group	Circa┬á30.719┬áÔé¼ -35.566┬áÔé¼	04/05/2024 13:56:46	T
1458	Marketing Associate	Italy	Generali	Circa┬á31.607┬áÔé¼ -36.609┬áÔé¼	04/05/2024 13:56:46	T
1459	Marketing Associate	Italy	L'Or├®al	Circa┬á781┬áÔé¼ -913┬áÔé¼	04/05/2024 13:56:46	T
1460	Marketing Associate	Italy	BonelliErede	Circa┬á35.762┬áÔé¼ -41.719┬áÔé¼	04/05/2024 13:56:46	T
1461	Marketing Associate	Italy	Banca Generali	Circa┬á373┬áÔé¼ -433┬áÔé¼	04/05/2024 13:56:46	T
1462	Marketing Associate	Italy	Ecolab	Circa┬á27.507┬áÔé¼ -32.575┬áÔé¼	04/05/2024 13:56:46	T
1463	Marketing Associate	Italy	John Cabot University	Circa┬á38.822┬áÔé¼ -46.204┬áÔé¼	04/05/2024 13:56:46	T
1464	Marketing Associate	Italy	Lionard Luxury Real Estate	Circa┬á734┬áÔé¼ -865┬áÔé¼	04/05/2024 13:56:46	T
1465	Marketing Associate	Italy	Canon	Circa┬á38.758┬áÔé¼ -45.883┬áÔé¼	04/05/2024 13:56:46	T
1466	Marketing Associate	Italy	Stryker	Circa┬á26.060┬áÔé¼ -30.263┬áÔé¼	04/05/2024 13:56:46	T
1467	Marketing Associate	Italy	IHG Hotels and Resorts	Circa┬á23.591┬áÔé¼ -27.766┬áÔé¼	04/05/2024 13:56:46	T
1468	Marketing Associate	Italy	Alira Health	Circa┬á1205┬áÔé¼ -1412┬áÔé¼	04/05/2024 13:56:46	T
1469	Marketing Associate	Italy	Independent	Circa┬á55.500┬áÔé¼ -65.659┬áÔé¼	04/05/2024 13:56:46	T
1470	Marketing Associate	Italy	Elanco	Circa┬á41.983┬áÔé¼ -48.966┬áÔé¼	04/05/2024 13:56:46	T
1471	Marketing Associate	Italy	Rustichella d'Abruzzo	Circa┬á1213┬áÔé¼ -1418┬áÔé¼	04/05/2024 13:56:46	T
1472	Marketing Associate	Italy	Maikii	Circa┬á39.083┬áÔé¼ -45.872┬áÔé¼	04/05/2024 13:56:46	T
1473	Software Developer	China	Huawei Technologies	299.171┬áCN┬Ñ┬á/anno	04/05/2024 13:57:22	T
1474	Software Developer	China	Tencent	323.453┬áCN┬Ñ┬á/anno	04/05/2024 13:57:22	T
1475	Software Developer	China	Thoughtworks	208.281┬áCN┬Ñ┬á/anno	04/05/2024 13:57:22	T
1476	Software Developer	China	Alibaba Group	313.696┬áCN┬Ñ┬á/anno	04/05/2024 13:57:22	T
1477	Software Developer	China	Baidu	25.185┬áCN┬Ñ┬á/mese	04/05/2024 13:57:22	T
1478	Software Developer	China	IBM	14.772┬áCN┬Ñ┬á/mese	04/05/2024 13:57:22	T
1479	Software Developer	China	SAP	288.149┬áCN┬Ñ┬á/anno	04/05/2024 13:57:22	T
1480	Software Developer	China	ByteDance	30.146┬áCN┬Ñ┬á/mese	04/05/2024 13:57:22	T
1481	Software Developer	China	Autodesk	115.790┬áCN┬Ñ┬á/anno	04/05/2024 13:57:22	T
1482	Software Developer	China	Ericsson-Worldwide	233.907┬áCN┬Ñ┬á/anno	04/05/2024 13:57:22	T
1483	Software Developer	China	Micro Focus	333.800┬áCN┬Ñ┬á/anno	04/05/2024 13:57:22	T
1484	Software Developer	China	Hulu	14.444┬áCN┬Ñ┬á/mese	04/05/2024 13:57:22	T
1485	Software Developer	China	Intel Corporation	162.500┬áCN┬Ñ┬á/anno	04/05/2024 13:57:22	T
1486	Software Developer	China	Huawei Technologies	5.750┬áCN┬Ñ┬á/mese	04/05/2024 13:57:22	T
1487	Software Developer	China	Industrial and Commercial Bank of China	14.917┬áCN┬Ñ┬á/mese	04/05/2024 13:57:22	T
1488	Software Developer	China	Autodesk	25┬áCN┬Ñ┬á/ora	04/05/2024 13:57:22	T
1489	Software Developer	China	Tencent	19.325┬áCN┬Ñ┬á/mese	04/05/2024 13:57:22	T
1490	Software Developer	China	China Construction Bank	165.400┬áCN┬Ñ┬á/anno	04/05/2024 13:57:22	T
1491	Software Developer	China	Adobe	133.350┬áCN┬Ñ┬á/anno	04/05/2024 13:57:22	T
1492	Software Developer	China	Morgan Stanley	290.000┬áCN┬Ñ┬á/anno	04/05/2024 13:57:22	T
1493	Software Developer	Germany	SAP	79.402┬áÔé¼┬á/anno	04/05/2024 13:57:42	T
1494	Software Developer	Germany	CHECK24	64.575┬áÔé¼┬á/anno	04/05/2024 13:57:42	T
1495	Software Developer	Germany	Adesso SE	49.048┬áÔé¼┬á/anno	04/05/2024 13:57:42	T
1496	Software Developer	Germany	Robert Bosch	 xx.xxx┬áÔé¼┬á/anno	04/05/2024 13:57:42	T
1497	Software Developer	Germany	Bertrandt	 xx.xxx┬áÔé¼┬á/anno	04/05/2024 13:57:42	T
1498	Software Developer	Germany	Accenture	 xx.xxx┬áÔé¼┬á/anno	04/05/2024 13:57:42	T
1499	Software Developer	Germany	Siemens	 xx.xxx┬áÔé¼┬á/anno	04/05/2024 13:57:42	T
1500	Software Developer	Germany	IBM	 xx.xxx┬áÔé¼┬á/anno	04/05/2024 13:57:42	T
1501	Software Developer	Germany	CompuGroup Medical	 xx.xxx┬áÔé¼┬á/anno	04/05/2024 13:57:42	T
1502	Software Developer	Germany	Continental	 xx.xxx┬áÔé¼┬á/anno	04/05/2024 13:57:42	T
1503	Software Developer	Germany	InnoGames	 xx.xxx┬áÔé¼┬á/anno	04/05/2024 13:57:42	T
1504	Software Developer	Germany	JetBrains	 xx.xxx┬áÔé¼┬á/anno	04/05/2024 13:57:42	T
1505	Software Developer	Germany	OTTO	 xx.xxx┬áÔé¼┬á/anno	04/05/2024 13:57:42	T
1506	Software Developer	Germany	Luxoft	 xx.xxx┬áÔé¼┬á/anno	04/05/2024 13:57:42	T
1507	Software Developer	Germany	BMW Group	 xx.xxx┬áÔé¼┬á/anno	04/05/2024 13:57:42	T
1508	Software Developer	Germany	Thoughtworks	 xx.xxx┬áÔé¼┬á/anno	04/05/2024 13:57:42	T
1509	Software Developer	Germany	Volkswagen Group	 xx.xxx┬áÔé¼┬á/anno	04/05/2024 13:57:42	T
1510	Software Developer	Germany	Google	 xx.xxx┬áÔé¼┬á/anno	04/05/2024 13:57:42	T
1511	Software Developer	Germany	FERCHAU	 xx.xxx┬áÔé¼┬á/anno	04/05/2024 13:57:42	T
1512	Software Developer	Germany	Randstad Digital	 xx.xxx┬áÔé¼┬á/anno	04/05/2024 13:57:42	T
1513	Software Developer	Japan	Rakuten	5.493.737┬áJPY┬á/anno	04/05/2024 13:58:03	T
1514	Software Developer	Japan	SBI Holdings	7.663.160┬áJPY┬á/anno	04/05/2024 13:58:03	T
1515	Software Developer	Japan	Fast Retailing	6.606.823┬áJPY┬á/anno	04/05/2024 13:58:03	T
1516	Software Developer	Japan	Fujitsu	 x.xxx.xxx┬áJPY┬á/anno	04/05/2024 13:58:03	T
1517	Software Developer	Japan	Google	 xx.xxx.xxx┬áJPY┬á/anno	04/05/2024 13:58:03	T
1518	Software Developer	Japan	Indeed	 x.xxx.xxx┬áJPY┬á/anno	04/05/2024 13:58:03	T
1519	Software Developer	Japan	Hikari Tsushin	 x.xxx.xxx┬áJPY┬á/anno	04/05/2024 13:58:03	T
1520	Software Developer	Japan	IBM	 x.xxx.xxx┬áJPY┬á/anno	04/05/2024 13:58:03	T
1521	Software Developer	Japan	Techno Pro	 xxx.xxx┬áJPY┬á/mese	04/05/2024 13:58:03	T
1522	Software Developer	Japan	Barclays	Circa┬á x┬áMio┬áJPY - x┬áMio┬áJPY	04/05/2024 13:58:03	T
1523	Software Developer	Japan	FORUM 8	Circa┬á xxx.xxx┬áJPY - xxx.xxx┬áJPY	04/05/2024 13:58:03	T
1524	Software Developer	Japan	Human Resocia	Circa┬á xxx.xxx┬áJPY - xxx.xxx┬áJPY	04/05/2024 13:58:03	T
1525	Software Developer	Japan	Kayac	Circa┬á xxx.xxx┬áJPY - xxx.xxx┬áJPY	04/05/2024 13:58:03	T
1526	Software Developer	Japan	W. Ray Wallace	Circa┬á x┬áMio┬áJPY - xx┬áMio┬áJPY	04/05/2024 13:58:03	T
1527	Software Developer	Japan	Accenture	Circa┬á x┬áMio┬áJPY - x┬áMio┬áJPY	04/05/2024 13:58:03	T
1528	Software Developer	Japan	Sony Electronics	Circa┬á x┬áMio┬áJPY - x┬áMio┬áJPY	04/05/2024 13:58:03	T
1529	Software Developer	Japan	Simplex	Circa┬á x┬áMio┬áJPY - x┬áMio┬áJPY	04/05/2024 13:58:03	T
1530	Software Developer	Japan	PayPay	Circa┬á xxx.xxx┬áJPY - x┬áMio┬áJPY	04/05/2024 13:58:03	T
1531	Software Developer	Japan	Works Applications	Circa┬á x┬áMio┬áJPY - x┬áMio┬áJPY	04/05/2024 13:58:03	T
1532	Software Developer	Japan	Configura	Circa┬á x┬áMio┬áJPY - x┬áMio┬áJPY	04/05/2024 13:58:03	T
1533	Software Developer	India	Salesforce	147.185┬áUSD┬á/anno	04/05/2024 13:58:23	T
1534	Software Developer	India	Genesys	120.192┬áUSD┬á/anno	04/05/2024 13:58:23	T
1535	Software Developer	India	Agile Scientific	96.027┬áUSD┬á/anno	04/05/2024 13:58:23	T
1536	Software Developer	India	Angi	148.179┬áUSD┬á/anno	04/05/2024 13:58:23	T
1537	Software Developer	India	DMI	99.936┬áUSD┬á/anno	04/05/2024 13:58:23	T
1538	Software Developer	India	GyanSys	114.025┬áUSD┬á/anno	04/05/2024 13:58:23	T
1539	Software Developer	India	Brite Systems	96.842┬áUSD┬á/anno	04/05/2024 13:58:23	T
1540	Software Developer	India	Cummins	120.089┬áUSD┬á/anno	04/05/2024 13:58:23	T
1541	Software Developer	India	Tata Consultancy Services	103.223┬áUSD┬á/anno	04/05/2024 13:58:23	T
1542	Software Developer	India	SQA CONCEPTS	97.846┬áUSD┬á/anno	04/05/2024 13:58:23	T
1543	Software Developer	India	Fujitsu	113.847┬áUSD┬á/anno	04/05/2024 13:58:23	T
1544	Software Developer	India	Tata Consultancy Services	100.799┬áUSD┬á/anno	04/05/2024 13:58:23	T
1545	Software Developer	India	RTX	105.967┬áUSD┬á/anno	04/05/2024 13:58:23	T
1546	Software Developer	India	GEICO	110.866┬áUSD┬á/anno	04/05/2024 13:58:23	T
1547	Software Developer	India	First Databank	104.884┬áUSD┬á/anno	04/05/2024 13:58:23	T
1548	Software Developer	India	Rolls-Royce	102.200┬áUSD┬á/anno	04/05/2024 13:58:23	T
1549	Software Developer	India	Indiana University	79.627┬áUSD┬á/anno	04/05/2024 13:58:23	T
1550	Software Developer	India	Scandent Group	119.225┬áUSD┬á/anno	04/05/2024 13:58:23	T
1551	Software Developer	India	Vyzer	89.808┬áUSD┬á/anno	04/05/2024 13:58:23	T
1552	Software Developer	India	Tata Consultancy Services (North America)	96.987┬áUSD┬á/anno	04/05/2024 13:58:23	T
1553	Software Developer	United Kingdom	Sky	50.256┬á┬ú┬á/anno	04/05/2024 13:58:42	T
1554	Software Developer	United Kingdom	Barclays	49.311┬á┬ú┬á/anno	04/05/2024 13:58:42	T
1555	Software Developer	United Kingdom	IBM	41.447┬á┬ú┬á/anno	04/05/2024 13:58:42	T
1556	Software Developer	United Kingdom	Bet365	46.400┬á┬ú┬á/anno	04/05/2024 13:58:42	T
1557	Software Developer	United Kingdom	Google	75.523┬á┬ú┬á/anno	04/05/2024 13:58:42	T
1558	Software Developer	United Kingdom	FDM Group	26.389┬á┬ú┬á/anno	04/05/2024 13:58:42	T
1559	Software Developer	United Kingdom	TPP	51.392┬á┬ú┬á/anno	04/05/2024 13:58:42	T
1560	Software Developer	United Kingdom	Capita	39.184┬á┬ú┬á/anno	04/05/2024 13:58:42	T
1561	Software Developer	United Kingdom	AND Digital	46.552┬á┬ú┬á/anno	04/05/2024 13:58:42	T
1562	Software Developer	United Kingdom	Softwire	45.839┬á┬ú┬á/anno	04/05/2024 13:58:42	T
1563	Software Developer	United Kingdom	The Access Group (UK)	37.335┬á┬ú┬á/anno	04/05/2024 13:58:42	T
1564	Software Developer	United Kingdom	Citi	50.660┬á┬ú┬á/anno	04/05/2024 13:58:42	T
1565	Software Developer	United Kingdom	CGI	38.351┬á┬ú┬á/anno	04/05/2024 13:58:42	T
1566	Software Developer	United Kingdom	Accenture	35.572┬á┬ú┬á/anno	04/05/2024 13:58:42	T
1567	Software Developer	United Kingdom	Microsoft	60.193┬á┬ú┬á/anno	04/05/2024 13:58:42	T
1568	Software Developer	United Kingdom	J.P. Morgan	61.589┬á┬ú┬á/anno	04/05/2024 13:58:42	T
1569	Software Developer	United Kingdom	Playtech	40.826┬á┬ú┬á/anno	04/05/2024 13:58:42	T
1570	Software Developer	United Kingdom	NEXT	34.012┬á┬ú┬á/anno	04/05/2024 13:58:42	T
1571	Software Developer	United Kingdom	Tata Consultancy Services	44.937┬á┬ú┬á/anno	04/05/2024 13:58:42	T
1572	Software Developer	United Kingdom	Civica	41.210┬á┬ú┬á/anno	04/05/2024 13:58:42	T
1573	Software Developer	France	Capgemini	39.514┬áÔé¼┬á/anno	04/05/2024 13:59:03	T
1574	Software Developer	France	Sopra Steria	40.975┬áÔé¼┬á/anno	04/05/2024 13:59:03	T
1575	Software Developer	France	ALTEN	37.955┬áÔé¼┬á/anno	04/05/2024 13:59:03	T
1576	Software Developer	France	Amadeus	48.428┬áÔé¼┬á/anno	04/05/2024 13:59:03	T
1577	Software Developer	France	Thales	43.314┬áÔé¼┬á/anno	04/05/2024 13:59:03	T
1578	Software Developer	France	Inetum	39.011┬áÔé¼┬á/anno	04/05/2024 13:59:03	T
1579	Software Developer	France	Atos	48.814┬áÔé¼┬á/anno	04/05/2024 13:59:03	T
1580	Software Developer	France	Orange	44.473┬áÔé¼┬á/anno	04/05/2024 13:59:03	T
1581	Software Developer	France	CGI	33.162┬áÔé¼┬á/anno	04/05/2024 13:59:03	T
1582	Software Developer	France	Soci├®t├® G├®n├®rale	48.264┬áÔé¼┬á/anno	04/05/2024 13:59:04	T
1583	Software Developer	France	Groupe SII	38.657┬áÔé¼┬á/anno	04/05/2024 13:59:04	T
1584	Software Developer	France	BNP Paribas	62.335┬áÔé¼┬á/anno	04/05/2024 13:59:04	T
1585	Software Developer	France	Randstad Digital	39.039┬áÔé¼┬á/anno	04/05/2024 13:59:04	T
1586	Software Developer	France	Accenture	40.554┬áÔé¼┬á/anno	04/05/2024 13:59:04	T
1587	Software Developer	France	Astek	38.288┬áÔé¼┬á/anno	04/05/2024 13:59:04	T
1588	Software Developer	France	IBM	49.088┬áÔé¼┬á/anno	04/05/2024 13:59:04	T
1589	Software Developer	France	AKKA Technologies	39.709┬áÔé¼┬á/anno	04/05/2024 13:59:04	T
1590	Software Developer	France	Google	68.387┬áÔé¼┬á/anno	04/05/2024 13:59:04	T
1591	Software Developer	France	OVHcloud	46.089┬áÔé¼┬á/anno	04/05/2024 13:59:04	T
1592	Software Developer	France	onepoint	40.343┬áÔé¼┬á/anno	04/05/2024 13:59:04	T
1593	Software Developer	Italy	ALTEN	27.202┬áÔé¼┬á/anno	04/05/2024 13:59:40	T
1594	Software Developer	Italy	Accenture	28.954┬áÔé¼┬á/anno	04/05/2024 13:59:40	T
1595	Software Developer	Italy	Reply	28.431┬áÔé¼┬á/anno	04/05/2024 13:59:40	T
1596	Software Developer	Italy	Engineering	29.841┬áÔé¼┬á/anno	04/05/2024 13:59:40	T
1597	Software Developer	Italy	NTT DATA	27.273┬áÔé¼┬á/anno	04/05/2024 13:59:40	T
1598	Software Developer	Italy	Exprivia	24.938┬áÔé¼┬á/anno	04/05/2024 13:59:40	T
1599	Software Developer	Italy	GFT Technologies	27.455┬áÔé¼┬á/anno	04/05/2024 13:59:40	T
1600	Software Developer	Italy	AlmavivA	27.001┬áÔé¼┬á/anno	04/05/2024 13:59:40	T
1601	Software Developer	Italy	Fincons Group	28.473┬áÔé¼┬á/anno	04/05/2024 13:59:40	T
1602	Software Developer	Italy	YOOX NET-A-PORTER GROUP	33.841┬áÔé¼┬á/anno	04/05/2024 13:59:40	T
1603	Software Developer	Italy	OverIT	29.226┬áÔé¼┬á/anno	04/05/2024 13:59:40	T
1604	Software Developer	Italy	Auriga	25.554┬áÔé¼┬á/anno	04/05/2024 13:59:40	T
1605	Software Developer	Italy	Capgemini	25.962┬áÔé¼┬á/anno	04/05/2024 13:59:40	T
1606	Software Developer	Italy	Spindox	30.697┬áÔé¼┬á/anno	04/05/2024 13:59:40	T
1607	Software Developer	Italy	Avanade	24.768┬áÔé¼┬á/anno	04/05/2024 13:59:40	T
1608	Software Developer	Italy	Deloitte	26.496┬áÔé¼┬á/anno	04/05/2024 13:59:40	T
1609	Software Developer	Italy	Objectway	30.116┬áÔé¼┬á/anno	04/05/2024 13:59:40	T
1610	Software Developer	Italy	DXC Technology	26.366┬áÔé¼┬á/anno	04/05/2024 13:59:40	T
1611	Software Developer	Italy	CINECA	27.465┬áÔé¼┬á/anno	04/05/2024 13:59:40	T
1612	Software Developer	Italy	Zucchetti Group	27.564┬áÔé¼┬á/anno	04/05/2024 13:59:40	T
1613	IT Manager	United States	Oracle	176.052┬áUSD┬á/anno	04/05/2024 14:00:00	T
1614	IT Manager	United States	Amazon	190.701┬áUSD┬á/anno	04/05/2024 14:00:00	T
1615	IT Manager	United States	NVIDIA	230.542┬áUSD┬á/anno	04/05/2024 14:00:00	T
1616	IT Manager	United States	Cisco	180.052┬áUSD┬á/anno	04/05/2024 14:00:00	T
1617	IT Manager	United States	Accenture	176.322┬áUSD┬á/anno	04/05/2024 14:00:00	T
1618	IT Manager	United States	Capital One	178.831┬áUSD┬á/anno	04/05/2024 14:00:00	T
1619	IT Manager	United States	IBM	133.239┬áUSD┬á/anno	04/05/2024 14:00:00	T
1620	IT Manager	United States	General Motors (GM)	147.012┬áUSD┬á/anno	04/05/2024 14:00:00	T
1621	IT Manager	United States	Johnson & Johnson	156.038┬áUSD┬á/anno	04/05/2024 14:00:00	T
1622	IT Manager	United States	US Army	93.935┬áUSD┬á/anno	04/05/2024 14:00:00	T
1623	IT Manager	United States	Verizon	161.587┬áUSD┬á/anno	04/05/2024 14:00:00	T
1624	IT Manager	United States	Progressive Insurance	151.592┬áUSD┬á/anno	04/05/2024 14:00:00	T
1625	IT Manager	United States	Cummins	146.106┬áUSD┬á/anno	04/05/2024 14:00:00	T
1626	IT Manager	United States	US Air Force	95.222┬áUSD┬á/anno	04/05/2024 14:00:00	T
1627	IT Manager	United States	FedEx	136.356┬áUSD┬á/anno	04/05/2024 14:00:00	T
1628	IT Manager	United States	Allstate	143.821┬áUSD┬á/anno	04/05/2024 14:00:00	T
1629	IT Manager	United States	UnitedHealth Group	140.317┬áUSD┬á/anno	04/05/2024 14:00:00	T
1630	IT Manager	United States	Centene	134.920┬áUSD┬á/anno	04/05/2024 14:00:00	T
1631	IT Manager	United States	Deloitte	196.132┬áUSD┬á/anno	04/05/2024 14:00:00	T
1632	IT Manager	United States	US Navy	103.699┬áUSD┬á/anno	04/05/2024 14:00:00	T
1633	IT Manager	China	Procter & Gamble	Circa┬á229.615┬áCN┬Ñ -257.146┬áCN┬Ñ	04/05/2024 14:00:19	T
1634	IT Manager	China	ABB	Circa┬á239.125┬áCN┬Ñ -310.743┬áCN┬Ñ	04/05/2024 14:00:19	T
1635	IT Manager	China	Microsoft	Circa┬á431.968┬áCN┬Ñ -504.912┬áCN┬Ñ	04/05/2024 14:00:19	T
1636	IT Manager	China	Huawei Technologies	Circa┬á935.021┬áCN┬Ñ -1┬áMio┬áCN┬Ñ	04/05/2024 14:00:19	T
1637	IT Manager	China	EF Education First	Circa┬á31.977┬áCN┬Ñ -37.803┬áCN┬Ñ	04/05/2024 14:00:19	T
1638	IT Manager	China	Accenture	Circa┬á28.368┬áCN┬Ñ -33.336┬áCN┬Ñ	04/05/2024 14:00:19	T
1639	IT Manager	China	Bank of China	Circa┬á135.313┬áCN┬Ñ -157.526┬áCN┬Ñ	04/05/2024 14:00:19	T
1640	IT Manager	China	Siemens	Circa┬á691.809┬áCN┬Ñ -818.223┬áCN┬Ñ	04/05/2024 14:00:19	T
1641	IT Manager	China	eBay	Circa┬á530.362┬áCN┬Ñ -608.201┬áCN┬Ñ	04/05/2024 14:00:19	T
1642	IT Manager	China	Shanghai Wicresoft	Circa┬á10.133┬áCN┬Ñ -11.938┬áCN┬Ñ	04/05/2024 14:00:19	T
1643	IT Manager	China	Volkswagen Group	Circa┬á23.553┬áCN┬Ñ -27.846┬áCN┬Ñ	04/05/2024 14:00:19	T
1644	IT Manager	China	Virtuos	Circa┬á330.113┬áCN┬Ñ -384.251┬áCN┬Ñ	04/05/2024 14:00:19	T
1645	IT Manager	China	WeWork	Circa┬á414.274┬áCN┬Ñ -480.957┬áCN┬Ñ	04/05/2024 14:00:19	T
1646	IT Manager	China	AMD	Circa┬á46.123┬áCN┬Ñ -55.308┬áCN┬Ñ	04/05/2024 14:00:19	T
1647	IT Manager	China	Pactera	Circa┬á126.973┬áCN┬Ñ -151.553┬áCN┬Ñ	04/05/2024 14:00:19	T
1648	IT Manager	China	Mercedes-Benz Group	Circa┬á318.862┬áCN┬Ñ -382.121┬áCN┬Ñ	04/05/2024 14:00:19	T
1649	IT Manager	China	Sanofi	Circa┬á27.966┬áCN┬Ñ -32.534┬áCN┬Ñ	04/05/2024 14:00:19	T
1650	IT Manager	China	China Minsheng Banking	Circa┬á369.258┬áCN┬Ñ -436.327┬áCN┬Ñ	04/05/2024 14:00:19	T
1651	IT Manager	China	Bayer	Circa┬á419.280┬áCN┬Ñ -500.469┬áCN┬Ñ	04/05/2024 14:00:19	T
1652	IT Manager	China	Sony	Circa┬á211.933┬áCN┬Ñ -250.260┬áCN┬Ñ	04/05/2024 14:00:19	T
1653	IT Manager	Germany	KA Resources	100.000┬áÔé¼┬á/anno	04/05/2024 14:00:38	T
1654	IT Manager	Germany	Procter & Gamble	73.767┬áÔé¼┬á/anno	04/05/2024 14:00:38	T
1655	IT Manager	Germany	SAP	115.487┬áÔé¼┬á/anno	04/05/2024 14:00:38	T
1656	IT Manager	Germany	Amadeus Fire	59.664┬áÔé¼┬á/anno	04/05/2024 14:00:38	T
1657	IT Manager	Germany	Siemens	93.429┬áÔé¼┬á/anno	04/05/2024 14:00:38	T
1658	IT Manager	Germany	Mercedes-Benz Group	84.684┬áÔé¼┬á/anno	04/05/2024 14:00:38	T
1659	IT Manager	Germany	ALDI	127.981┬áÔé¼┬á/anno	04/05/2024 14:00:38	T
1660	IT Manager	Germany	jobvalley	12┬áÔé¼┬á/ora	04/05/2024 14:00:38	T
1661	IT Manager	Germany	T-Systems	77.314┬áÔé¼┬á/anno	04/05/2024 14:00:38	T
1662	IT Manager	Germany	BMW Group	98.291┬áÔé¼┬á/anno	04/05/2024 14:00:38	T
1663	IT Manager	Germany	Ratbacher	66.300┬áÔé¼┬á/anno	04/05/2024 14:00:38	T
1664	IT Manager	Germany	ALDI International Services	130.121┬áÔé¼┬á/anno	04/05/2024 14:00:38	T
1665	IT Manager	Germany	Amazon	62.673┬áÔé¼┬á/anno	04/05/2024 14:00:38	T
1666	IT Manager	Germany	Vodafone	81.000┬áÔé¼┬á/anno	04/05/2024 14:00:38	T
1667	IT Manager	Germany	GfK	82.667┬áÔé¼┬á/anno	04/05/2024 14:00:38	T
1671	IT Manager	Germany	BSH Hausger├ñte	100.662┬áÔé¼┬á/anno	04/05/2024 14:00:38	T
1672	IT Manager	Germany	Zeb	72.167┬áÔé¼┬á/anno	04/05/2024 14:00:38	T
1673	IT Manager	Japan	Mitsubishi	Circa┬á8┬áMio┬áJPY -17┬áMio┬áJPY	04/05/2024 14:01:01	T
1674	IT Manager	Japan	Johnson & Johnson	Circa┬á12┬áMio┬áJPY -12┬áMio┬áJPY	04/05/2024 14:01:01	T
1675	IT Manager	Japan	Rakuten	Circa┬á9┬áMio┬áJPY -11┬áMio┬áJPY	04/05/2024 14:01:01	T
1676	IT Manager	Japan	Amazon	Circa┬á540.873┬áJPY -642.486┬áJPY	04/05/2024 14:01:01	T
1677	IT Manager	Japan	Mercari	Circa┬á11┬áMio┬áJPY -13┬áMio┬áJPY	04/05/2024 14:01:01	T
1678	IT Manager	Japan	Fusion Systems Japan	Circa┬á7┬áMio┬áJPY -8┬áMio┬áJPY	04/05/2024 14:01:01	T
1679	IT Manager	Japan	Takeda Pharmaceuticals	Circa┬á8┬áMio┬áJPY -10┬áMio┬áJPY	04/05/2024 14:01:01	T
1680	IT Manager	Japan	AXA	Circa┬á12┬áMio┬áJPY -14┬áMio┬áJPY	04/05/2024 14:01:01	T
1681	IT Manager	Japan	Marriott International	Circa┬á590.871┬áJPY -710.774┬áJPY	04/05/2024 14:01:01	T
1682	IT Manager	Japan	EXO Travel	Circa┬á4┬áMio┬áJPY -5┬áMio┬áJPY	04/05/2024 14:01:01	T
1683	IT Manager	Japan	T├£V Rheinland	Circa┬á8┬áMio┬áJPY -10┬áMio┬áJPY	04/05/2024 14:01:01	T
1684	IT Manager	Japan	Ubisoft	Circa┬á4┬áMio┬áJPY -5┬áMio┬áJPY	04/05/2024 14:01:01	T
1685	IT Manager	Japan	OYO	Circa┬á7┬áMio┬áJPY -9┬áMio┬áJPY	04/05/2024 14:01:01	T
1686	IT Manager	Japan	Bayer	Circa┬á15┬áMio┬áJPY -19┬áMio┬áJPY	04/05/2024 14:01:01	T
1687	IT Manager	Japan	Philips	Circa┬á10┬áMio┬áJPY -12┬áMio┬áJPY	04/05/2024 14:01:01	T
1688	IT Manager	Japan	ITCS GROUP	Circa┬á5┬áMio┬áJPY -5┬áMio┬áJPY	04/05/2024 14:01:01	T
1689	IT Manager	Japan	MSIG	Circa┬á12┬áMio┬áJPY -14┬áMio┬áJPY	04/05/2024 14:01:01	T
1690	IT Manager	Japan	Milestone Technologies	Circa┬á9┬áMio┬áJPY -11┬áMio┬áJPY	04/05/2024 14:01:01	T
1691	IT Manager	Japan	Nova Corporation - Japan	Circa┬á4┬áMio┬áJPY -5┬áMio┬áJPY	04/05/2024 14:01:01	T
1692	IT Manager	Japan	Metlife	Circa┬á12┬áMio┬áJPY -15┬áMio┬áJPY	04/05/2024 14:01:01	T
1693	IT Manager	India	Eli Lilly and Company	150.572┬áUSD┬á/anno	04/05/2024 14:01:20	T
1694	IT Manager	India	Cummins	145.661┬áUSD┬á/anno	04/05/2024 14:01:20	T
1695	IT Manager	India	OneAmerica Financial	129.793┬áUSD┬á/anno	04/05/2024 14:01:20	T
1696	IT Manager	India	Roche	140.150┬áUSD┬á/anno	04/05/2024 14:01:20	T
1697	IT Manager	India	Strada Education Foundation	183.690┬áUSD┬á/anno	04/05/2024 14:01:20	T
1698	IT Manager	India	Ascension	121.769┬áUSD┬á/anno	04/05/2024 14:01:20	T
1699	IT Manager	India	Fuji Component Parts Usa	106.222┬áUSD┬á/anno	04/05/2024 14:01:20	T
1700	IT Manager	India	Teknabyte Consulting	121.859┬áUSD┬á/anno	04/05/2024 14:01:20	T
1701	IT Manager	India	Allegion	138.895┬áUSD┬á/anno	04/05/2024 14:01:20	T
1702	IT Manager	India	Acadia Healthcare	106.158┬áUSD┬á/anno	04/05/2024 14:01:20	T
1703	IT Manager	India	US Army	92.765┬áUSD┬á/anno	04/05/2024 14:01:20	T
1704	IT Manager	India	Cummins	141.234┬áUSD┬á/anno	04/05/2024 14:01:20	T
1705	IT Manager	India	State of Indiana	114.056┬áUSD┬á/anno	04/05/2024 14:01:20	T
1706	IT Manager	India	Axis Forensic Toxicology	102.643┬áUSD┬á/anno	04/05/2024 14:01:20	T
1707	IT Manager	India	Elevance Health	126.951┬áUSD┬á/anno	04/05/2024 14:01:20	T
1708	IT Manager	India	Indiana Math and Science Academy	81.033┬áUSD┬á/anno	04/05/2024 14:01:20	T
1709	IT Manager	India	Wells Fargo	180.980┬áUSD┬á/anno	04/05/2024 14:01:20	T
1710	IT Manager	India	REHABILITY CARE	110.962┬áUSD┬á/anno	04/05/2024 14:01:20	T
1711	IT Manager	India	Mays Chemical	120.243┬áUSD┬á/anno	04/05/2024 14:01:20	T
1712	IT Manager	India	Indiana Hand to Shoulder Center	95.424┬áUSD┬á/anno	04/05/2024 14:01:20	T
1713	IT Manager	France	BNP Paribas	74.144┬áÔé¼┬á/anno	04/05/2024 14:01:56	T
1714	IT Manager	France	Soci├®t├® G├®n├®rale	83.227┬áÔé¼┬á/anno	04/05/2024 14:01:56	T
1715	IT Manager	France	IBM	56.583┬áÔé¼┬á/anno	04/05/2024 14:01:56	T
1716	IT Manager	France	CGI	 xxx.xxx┬áÔé¼┬á/anno	04/05/2024 14:01:56	T
1717	IT Manager	France	Amazon	 xx.xxx┬áÔé¼┬á/anno	04/05/2024 14:01:56	T
1718	IT Manager	France	Intercloud	 xx.xxx┬áÔé¼┬á/anno	04/05/2024 14:01:56	T
1719	IT Manager	France	Sopra Steria	 xx.xxx┬áÔé¼┬á/anno	04/05/2024 14:01:56	T
1720	IT Manager	France	Capgemini	 xx.xxx┬áÔé¼┬á/anno	04/05/2024 14:01:56	T
1721	IT Manager	France	CGG	 xx.xxx┬áÔé¼┬á/anno	04/05/2024 14:01:56	T
1722	IT Manager	France	Bouygues Telecom	 xx.xxx┬áÔé¼┬á/anno	04/05/2024 14:01:56	T
1723	IT Manager	France	Voodoo	 xx.xxx┬áÔé¼┬á/anno	04/05/2024 14:01:56	T
1724	IT Manager	France	AXA	 xx.xxx┬áÔé¼┬á/anno	04/05/2024 14:01:56	T
1725	IT Manager	France	La Poste	 xx.xxx┬áÔé¼┬á/anno	04/05/2024 14:01:56	T
1726	IT Manager	France	Thales	 xx.xxx┬áÔé¼┬á/anno	04/05/2024 14:01:57	T
1727	IT Manager	France	Natixis	 xx.xxx┬áÔé¼┬á/anno	04/05/2024 14:01:57	T
1728	IT Manager	France	AVL	 xx.xxx┬áÔé¼┬á/anno	04/05/2024 14:01:57	T
1729	IT Manager	France	Tarkett	Circa┬á xx.xxx┬áÔé¼ - xx.xxx┬áÔé¼	04/05/2024 14:01:57	T
1730	IT Manager	France	Infovista	Circa┬á xx.xxx┬áÔé¼ - xx.xxx┬áÔé¼	04/05/2024 14:01:57	T
1731	IT Manager	France	Capgemini Engineering	Circa┬á xx.xxx┬áÔé¼ - xxx.xxx┬áÔé¼	04/05/2024 14:01:57	T
1732	IT Manager	France	NIKE	Circa┬á xxxx┬áÔé¼ - xxxx┬áÔé¼	04/05/2024 14:01:57	T
1733	IT Manager	Brazil	F1RST Digital Services	25.541┬áBRL┬á/mese	04/05/2024 14:02:16	T
1734	IT Manager	Brazil	Johnson & Johnson	2.100.862┬áBRL┬á/mese	04/05/2024 14:02:16	T
1735	IT Manager	Brazil	IBM	215.850┬áBRL┬á/mese	04/05/2024 14:02:16	T
1736	IT Manager	Brazil	Natura Cosm├®ticos	19.236┬áBRL┬á/mese	04/05/2024 14:02:16	T
1737	IT Manager	Brazil	BTG Pactual	32.982┬áBRL┬á/mese	04/05/2024 14:02:16	T
1738	IT Manager	Brazil	Unilever	17.619┬áBRL┬á/mese	04/05/2024 14:02:16	T
1739	IT Manager	Brazil	Dell Technologies	18.367┬áBRL┬á/mese	04/05/2024 14:02:16	T
1740	IT Manager	Brazil	Mars	18.267┬áBRL┬á/mese	04/05/2024 14:02:16	T
1741	IT Manager	Brazil	Banco Bradesco	20.470┬áBRL┬á/mese	04/05/2024 14:02:16	T
1742	IT Manager	Brazil	Accenture	218.438┬áBRL┬á/anno	04/05/2024 14:02:16	T
1743	IT Manager	Brazil	Ita├║ Unibanco (Ita├║ BBA e Rede)	27.813┬áBRL┬á/mese	04/05/2024 14:02:16	T
1744	IT Manager	Brazil	BAT	11.875┬áBRL┬á/mese	04/05/2024 14:02:16	T
1745	IT Manager	Brazil	Oi	16.864┬áBRL┬á/mese	04/05/2024 14:02:16	T
1746	IT Manager	Brazil	Procter & Gamble	12.218┬áBRL┬á/mese	04/05/2024 14:02:16	T
1747	IT Manager	Brazil	Santander	59.667┬áBRL┬á/mese	04/05/2024 14:02:16	T
1748	IT Manager	Brazil	HSBC	20.021┬áBRL┬á/mese	04/05/2024 14:02:16	T
1749	IT Manager	Brazil	Experian	19.917┬áBRL┬á/mese	04/05/2024 14:02:16	T
1750	IT Manager	Brazil	Fiserv	25.000┬áBRL┬á/mese	04/05/2024 14:02:16	T
1751	IT Manager	Brazil	ADP	15.828┬áBRL┬á/mese	04/05/2024 14:02:16	T
1752	IT Manager	Brazil	Janssen	Circa┬á14.461┬áBRL -24.181┬áBRL	04/05/2024 14:02:16	T
1753	IT Manager	Italy	Accenture	58.062┬áÔé¼┬á/anno	04/05/2024 14:02:35	T
1754	IT Manager	Italy	Intesa Sanpaolo	48.167┬áÔé¼┬á/anno	04/05/2024 14:02:35	T
1755	IT Manager	Italy	Enel	42.183┬áÔé¼┬á/anno	04/05/2024 14:02:35	T
1756	IT Manager	Italy	IBM	57.707┬áÔé¼┬á/anno	04/05/2024 14:02:35	T
1757	IT Manager	Italy	Banca Nazionale del Lavoro	62.000┬áÔé¼┬á/anno	04/05/2024 14:02:35	T
1758	IT Manager	Italy	Vodafone	78.875┬áÔé¼┬á/anno	04/05/2024 14:02:35	T
1759	IT Manager	Italy	Kering	70.000┬áÔé¼┬á/anno	04/05/2024 14:02:35	T
1760	IT Manager	Italy	CRIF	53.067┬áÔé¼┬á/anno	04/05/2024 14:02:35	T
1761	IT Manager	Italy	Allianz	68.667┬áÔé¼┬á/anno	04/05/2024 14:02:35	T
1762	IT Manager	Italy	Leonardo	51.167┬áÔé¼┬á/anno	04/05/2024 14:02:35	T
1763	IT Manager	Italy	UniCredit Group	66.752┬áÔé¼┬á/anno	04/05/2024 14:02:35	T
1764	IT Manager	Italy	Magneti Marelli	49.667┬áÔé¼┬á/anno	04/05/2024 14:02:35	T
1765	IT Manager	Italy	Prysmian Group	58.333┬áÔé¼┬á/anno	04/05/2024 14:02:35	T
1766	IT Manager	Italy	Amazon	45.333┬áÔé¼┬á/anno	04/05/2024 14:02:35	T
1767	IT Manager	Italy	A2A	50.278┬áÔé¼┬á/anno	04/05/2024 14:02:35	T
1768	IT Manager	Italy	pippo srl	Circa┬á25.399┬áÔé¼ -62.421┬áÔé¼	04/05/2024 14:02:35	T
1769	IT Manager	Italy	CEME (Italy)	Circa┬á62.204┬áÔé¼ -67.665┬áÔé¼	04/05/2024 14:02:35	T
1770	IT Manager	Italy	Gruppo San Donato	Circa┬á2014┬áÔé¼ -2515┬áÔé¼	04/05/2024 14:02:35	T
1771	IT Manager	Italy	SKY Italia	Circa┬á48.387┬áÔé¼ -107.907┬áÔé¼	04/05/2024 14:02:35	T
1772	IT Manager	Italy	CheBanca!	Circa┬á69.233┬áÔé¼ -84.549┬áÔé¼	04/05/2024 14:02:35	T
1773	Data Scientist	United States	Meta	247.566┬áUSD┬á/anno	04/05/2024 14:02:54	T
1774	Data Scientist	United States	Amazon	129.158┬áUSD┬á/anno	04/05/2024 14:02:54	T
1775	Data Scientist	United States	Oracle	193.134┬áUSD┬á/anno	04/05/2024 14:02:54	T
1776	Data Scientist	United States	Quora, Inc.	129.842┬áUSD┬á/anno	04/05/2024 14:02:54	T
1777	Data Scientist	United States	Google	256.190┬áUSD┬á/anno	04/05/2024 14:02:54	T
1778	Data Scientist	United States	Uber	202.053┬áUSD┬á/anno	04/05/2024 14:02:54	T
1779	Data Scientist	United States	IBM	154.066┬áUSD┬á/anno	04/05/2024 14:02:54	T
1780	Data Scientist	United States	Ascendum Solutions	114.479┬áUSD┬á/anno	04/05/2024 14:02:54	T
1781	Data Scientist	United States	Amazon	206.671┬áUSD┬á/anno	04/05/2024 14:02:54	T
1782	Data Scientist	United States	Cisco	226.743┬áUSD┬á/anno	04/05/2024 14:02:54	T
1783	Data Scientist	United States	Expedia Group	192.169┬áUSD┬á/anno	04/05/2024 14:02:54	T
1784	Data Scientist	United States	Microsoft	209.951┬áUSD┬á/anno	04/05/2024 14:02:54	T
1785	Data Scientist	United States	Apple	249.361┬áUSD┬á/anno	04/05/2024 14:02:54	T
1786	Data Scientist	United States	Boston Consulting Group	183.239┬áUSD┬á/anno	04/05/2024 14:02:54	T
1787	Data Scientist	United States	Walmart	178.862┬áUSD┬á/anno	04/05/2024 14:02:54	T
1788	Data Scientist	United States	Booz Allen Hamilton	122.284┬áUSD┬á/anno	04/05/2024 14:02:54	T
1789	Data Scientist	United States	Intel Corporation	198.871┬áUSD┬á/anno	04/05/2024 14:02:54	T
1790	Data Scientist	United States	Amazon Web Services	150.981┬áUSD┬á/anno	04/05/2024 14:02:54	T
1791	Data Scientist	United States	LinkedIn	226.341┬áUSD┬á/anno	04/05/2024 14:02:54	T
1792	Data Scientist	United States	Wayfair	174.893┬áUSD┬á/anno	04/05/2024 14:02:54	T
1793	Data Scientist	China	Tencent	502.407┬áCN┬Ñ┬á/anno	04/05/2024 14:03:15	T
1794	Data Scientist	China	ByteDance	449.479┬áCN┬Ñ┬á/anno	04/05/2024 14:03:15	T
1795	Data Scientist	China	Alibaba Group	434.283┬áCN┬Ñ┬á/anno	04/05/2024 14:03:15	T
1796	Data Scientist	China	PayPal	505.763┬áCN┬Ñ┬á/anno	04/05/2024 14:03:15	T
1797	Data Scientist	China	Procter & Gamble	250.064┬áCN┬Ñ┬á/anno	04/05/2024 14:03:15	T
1798	Data Scientist	China	IBM	24.627┬áCN┬Ñ┬á/mese	04/05/2024 14:03:15	T
1799	Data Scientist	China	ByteDance	4.821┬áCN┬Ñ┬á/mese	04/05/2024 14:03:15	T
1800	Data Scientist	China	Kuaishou Technology	515.012┬áCN┬Ñ┬á/anno	04/05/2024 14:03:15	T
1801	Data Scientist	China	Ping An Technology	27.079┬áCN┬Ñ┬á/mese	04/05/2024 14:03:15	T
1802	Data Scientist	China	Huawei Technologies	439.333┬áCN┬Ñ┬á/anno	04/05/2024 14:03:15	T
1803	Data Scientist	China	Alibaba Group	37┬áCN┬Ñ┬á/ora	04/05/2024 14:03:15	T
1804	Data Scientist	China	Xiaomi	230.000┬áCN┬Ñ┬á/anno	04/05/2024 14:03:15	T
1805	Data Scientist	China	TikTok	355.138┬áCN┬Ñ┬á/anno	04/05/2024 14:03:15	T
1806	Data Scientist	China	Novartis	27┬áCN┬Ñ┬á/ora	04/05/2024 14:03:15	T
1807	Data Scientist	China	Artefact	131.385┬áCN┬Ñ┬á/mese	04/05/2024 14:03:15	T
1808	Data Scientist	China	4Paradigm	340.000┬áCN┬Ñ┬á/anno	04/05/2024 14:03:15	T
1809	Data Scientist	China	Tencent	Circa┬á6783┬áCN┬Ñ -10.367┬áCN┬Ñ	04/05/2024 14:03:15	T
1810	Data Scientist	China	Microsoft	Circa┬á353.531┬áCN┬Ñ -391.001┬áCN┬Ñ	04/05/2024 14:03:15	T
1811	Data Scientist	China	Microsoft	Circa┬á19┬áCN┬Ñ -41┬áCN┬Ñ┬áoraria	04/05/2024 14:03:16	T
1812	Data Scientist	China	Deloitte	Circa┬á2866┬áCN┬Ñ -8671┬áCN┬Ñ	04/05/2024 14:03:16	T
1813	Data Scientist	Germany	trivago	60.569┬áÔé¼┬á/anno	04/05/2024 14:03:35	T
1814	Data Scientist	Germany	Delivery Hero	75.257┬áÔé¼┬á/anno	04/05/2024 14:03:35	T
1815	Data Scientist	Germany	Siemens	72.800┬áÔé¼┬á/anno	04/05/2024 14:03:35	T
1816	Data Scientist	Germany	Zalando	66.731┬áÔé¼┬á/anno	04/05/2024 14:03:35	T
1817	Data Scientist	Germany	Deutsche Telekom	73.957┬áÔé¼┬á/anno	04/05/2024 14:03:35	T
1818	Data Scientist	Germany	Bayer	82.153┬áÔé¼┬á/anno	04/05/2024 14:03:35	T
1819	Data Scientist	Germany	BMW Group	71.822┬áÔé¼┬á/anno	04/05/2024 14:03:35	T
1820	Data Scientist	Germany	BASF	67.645┬áÔé¼┬á/anno	04/05/2024 14:03:35	T
1821	Data Scientist	Germany	Allianz	69.252┬áÔé¼┬á/anno	04/05/2024 14:03:35	T
1822	Data Scientist	Germany	Mercedes-Benz Group	73.545┬áÔé¼┬á/anno	04/05/2024 14:03:35	T
1823	Data Scientist	Germany	Klarna	64.105┬áÔé¼┬á/anno	04/05/2024 14:03:35	T
1824	Data Scientist	Germany	Deutsche Bank	62.401┬áÔé¼┬á/anno	04/05/2024 14:03:35	T
1825	Data Scientist	Germany	Accenture	57.316┬áÔé¼┬á/anno	04/05/2024 14:03:35	T
1826	Data Scientist	Germany	CHECK24	68.771┬áÔé¼┬á/anno	04/05/2024 14:03:35	T
1827	Data Scientist	Germany	Robert Bosch	79.379┬áÔé¼┬á/anno	04/05/2024 14:03:35	T
1828	Data Scientist	Germany	SAP	61.301┬áÔé¼┬á/anno	04/05/2024 14:03:35	T
1829	Data Scientist	Germany	KPMG	58.766┬áÔé¼┬á/anno	04/05/2024 14:03:35	T
1830	Data Scientist	Germany	Deutsche Bahn	61.909┬áÔé¼┬á/anno	04/05/2024 14:03:35	T
1831	Data Scientist	Germany	E.ON	66.660┬áÔé¼┬á/anno	04/05/2024 14:03:35	T
1832	Data Scientist	Germany	FREENOW	60.500┬áÔé¼┬á/anno	04/05/2024 14:03:35	T
1833	Data Scientist	India	Corteva Agriscience	140.231┬áUSD┬á/anno	04/05/2024 14:04:11	T
1834	Data Scientist	India	Infoshare Systems	122.451┬áUSD┬á/anno	04/05/2024 14:04:11	T
1835	Data Scientist	India	Resultant	120.843┬áUSD┬á/anno	04/05/2024 14:04:11	T
1836	Data Scientist	India	AES Corporation	142.941┬áUSD┬á/anno	04/05/2024 14:04:12	T
1837	Data Scientist	India	Indiana University Health	103.769┬áUSD┬á/anno	04/05/2024 14:04:12	T
1838	Data Scientist	India	Cummins	123.841┬áUSD┬á/anno	04/05/2024 14:04:12	T
1839	Data Scientist	India	Eli Lilly and Company	150.224┬áUSD┬á/anno	04/05/2024 14:04:12	T
1840	Data Scientist	India	Google	208.759┬áUSD┬á/anno	04/05/2024 14:04:12	T
1841	Data Scientist	India	Delta Faucet Company	128.407┬áUSD┬á/anno	04/05/2024 14:04:12	T
1842	Data Scientist	India	Brooksource	127.358┬áUSD┬á/anno	04/05/2024 14:04:12	T
1843	Data Scientist	India	Rang Technologies	116.421┬áUSD┬á/anno	04/05/2024 14:04:12	T
1844	Data Scientist	India	Indiana University	40┬áUSD┬á/ora	04/05/2024 14:04:12	T
1845	Data Scientist	India	Colaberry	120.463┬áUSD┬á/anno	04/05/2024 14:04:12	T
1846	Data Scientist	India	IUPUI	90.070┬áUSD┬á/anno	04/05/2024 14:04:12	T
1847	Data Scientist	India	PAXAFE	115.020┬áUSD┬á/anno	04/05/2024 14:04:12	T
1848	Data Scientist	India	Labcorp	114.109┬áUSD┬á/anno	04/05/2024 14:04:12	T
1849	Data Scientist	India	Rolls-Royce	110.723┬áUSD┬á/anno	04/05/2024 14:04:12	T
1850	Data Scientist	India	9th Networks	123.554┬áUSD┬á/anno	04/05/2024 14:04:12	T
1851	Data Scientist	India	Greenlight.guru	139.409┬áUSD┬á/anno	04/05/2024 14:04:12	T
1852	Data Scientist	India	AES Corporation	54┬áUSD┬á/ora	04/05/2024 14:04:12	T
1853	Data Scientist	United Kingdom	Meta	119.423┬á┬ú┬á/anno	04/05/2024 14:04:31	T
1854	Data Scientist	United Kingdom	Peak	42.226┬á┬ú┬á/anno	04/05/2024 14:04:31	T
1855	Data Scientist	United Kingdom	NatWest Group	58.050┬á┬ú┬á/anno	04/05/2024 14:04:31	T
1856	Data Scientist	United Kingdom	Deliveroo	74.083┬á┬ú┬á/anno	04/05/2024 14:04:31	T
1857	Data Scientist	United Kingdom	Office for National Statistics	34.274┬á┬ú┬á/anno	04/05/2024 14:04:31	T
1858	Data Scientist	United Kingdom	Lloyds Banking Group	63.286┬á┬ú┬á/anno	04/05/2024 14:04:31	T
1859	Data Scientist	United Kingdom	Faculty.ai	60.943┬á┬ú┬á/anno	04/05/2024 14:04:31	T
1860	Data Scientist	United Kingdom	First Derivatives	23.582┬á┬ú┬á/anno	04/05/2024 14:04:31	T
1861	Data Scientist	United Kingdom	Google	84.174┬á┬ú┬á/anno	04/05/2024 14:04:31	T
1862	Data Scientist	United Kingdom	Barclays	61.773┬á┬ú┬á/anno	04/05/2024 14:04:31	T
1863	Data Scientist	United Kingdom	Amazon	85.961┬á┬ú┬á/anno	04/05/2024 14:04:31	T
1864	Data Scientist	United Kingdom	IBM	57.761┬á┬ú┬á/anno	04/05/2024 14:04:31	T
1865	Data Scientist	United Kingdom	Sky	51.926┬á┬ú┬á/anno	04/05/2024 14:04:31	T
1866	Data Scientist	United Kingdom	BT Group	50.193┬á┬ú┬á/anno	04/05/2024 14:04:31	T
1867	Data Scientist	United Kingdom	Deloitte	386.480┬á┬ú┬á/anno	04/05/2024 14:04:31	T
1868	Data Scientist	United Kingdom	Aviva	34.558┬á┬ú┬á/anno	04/05/2024 14:04:31	T
1869	Data Scientist	United Kingdom	Tesco	60.309┬á┬ú┬á/anno	04/05/2024 14:04:31	T
1870	Data Scientist	United Kingdom	Funding Circle	46.706┬á┬ú┬á/anno	04/05/2024 14:04:31	T
1871	Data Scientist	United Kingdom	HSBC	57.389┬á┬ú┬á/anno	04/05/2024 14:04:31	T
1872	Data Scientist	United Kingdom	Capgemini	48.618┬á┬ú┬á/anno	04/05/2024 14:04:31	T
1873	Data Scientist	France	BNP Paribas	118.943┬áÔé¼┬á/anno	04/05/2024 14:04:50	T
1874	Data Scientist	France	Orange	46.870┬áÔé¼┬á/anno	04/05/2024 14:04:50	T
1875	Data Scientist	France	Capgemini	41.792┬áÔé¼┬á/anno	04/05/2024 14:04:50	T
1876	Data Scientist	France	Soci├®t├® G├®n├®rale	51.993┬áÔé¼┬á/anno	04/05/2024 14:04:50	T
1877	Data Scientist	France	Shift Technology	48.181┬áÔé¼┬á/anno	04/05/2024 14:04:50	T
1878	Data Scientist	France	AXA	48.347┬áÔé¼┬á/anno	04/05/2024 14:04:50	T
1879	Data Scientist	France	Airbus	44.893┬áÔé¼┬á/anno	04/05/2024 14:04:50	T
1880	Data Scientist	France	Cr├®dit Agricole	47.477┬áÔé¼┬á/anno	04/05/2024 14:04:50	T
1881	Data Scientist	France	Quantmetry	45.582┬áÔé¼┬á/anno	04/05/2024 14:04:50	T
1882	Data Scientist	France	Thales	46.885┬áÔé¼┬á/anno	04/05/2024 14:04:50	T
1883	Data Scientist	France	Orange	1.382┬áÔé¼┬á/mese	04/05/2024 14:04:50	T
1884	Data Scientist	France	BNP Paribas	1.710┬áÔé¼┬á/mese	04/05/2024 14:04:50	T
1885	Data Scientist	France	Amadeus	47.020┬áÔé¼┬á/anno	04/05/2024 14:04:51	T
1886	Data Scientist	France	Soci├®t├® G├®n├®rale	1.753┬áÔé¼┬á/mese	04/05/2024 14:04:51	T
1887	Data Scientist	France	TotalEnergies	51.056┬áÔé¼┬á/anno	04/05/2024 14:04:51	T
1888	Data Scientist	France	EDF	65.027┬áÔé¼┬á/anno	04/05/2024 14:04:51	T
1889	Data Scientist	France	Boston Consulting Group	69.187┬áÔé¼┬á/anno	04/05/2024 14:04:51	T
1890	Data Scientist	France	Renault Group	53.459┬áÔé¼┬á/anno	04/05/2024 14:04:51	T
1891	Data Scientist	France	Atos	41.805┬áÔé¼┬á/anno	04/05/2024 14:04:51	T
1892	Data Scientist	France	ALTEN	38.109┬áÔé¼┬á/anno	04/05/2024 14:04:51	T
1893	Data Scientist	Brazil	Ita├║ Unibanco (Ita├║ BBA e Rede)	11.884┬áBRL┬á/mese	04/05/2024 14:05:09	T
1894	Data Scientist	Brazil	Nubank	14.063┬áBRL┬á/mese	04/05/2024 14:05:09	T
1895	Data Scientist	Brazil	IBM	10.119┬áBRL┬á/mese	04/05/2024 14:05:09	T
1896	Data Scientist	Brazil	iFood	48.723┬áBRL┬á/mese	04/05/2024 14:05:09	T
1897	Data Scientist	Brazil	Loft	12.064┬áBRL┬á/mese	04/05/2024 14:05:09	T
1898	Data Scientist	Brazil	Mercado Livre	14.346┬áBRL┬á/mese	04/05/2024 14:05:10	T
1899	Data Scientist	Brazil	Banco Bradesco	18.499┬áBRL┬á/mese	04/05/2024 14:05:10	T
1900	Data Scientist	Brazil	Wildlife Studios	20.842┬áBRL┬á/mese	04/05/2024 14:05:10	T
1901	Data Scientist	Brazil	PicPay	9.199┬áBRL┬á/mese	04/05/2024 14:05:10	T
1902	Data Scientist	Brazil	Accenture	5.683┬áBRL┬á/mese	04/05/2024 14:05:10	T
1903	Data Scientist	Brazil	ADVISIA Analytics	11.027┬áBRL┬á/mese	04/05/2024 14:05:10	T
1904	Data Scientist	Brazil	Ambev Tech	172.772┬áBRL┬á/mese	04/05/2024 14:05:10	T
1905	Data Scientist	Brazil	Creditas	9.265┬áBRL┬á/mese	04/05/2024 14:05:10	T
1906	Data Scientist	Brazil	McKinsey & Company	13.440┬áBRL┬á/mese	04/05/2024 14:05:10	T
1907	Data Scientist	Brazil	Kunumi	7.303┬áBRL┬á/mese	04/05/2024 14:05:10	T
1908	Data Scientist	Brazil	QuintoAndar	11.703┬áBRL┬á/mese	04/05/2024 14:05:10	T
1909	Data Scientist	Brazil	CI&T	8.913┬áBRL┬á/mese	04/05/2024 14:05:10	T
1910	Data Scientist	Brazil	americanas s.a.	7.468┬áBRL┬á/mese	04/05/2024 14:05:10	T
1911	Data Scientist	Brazil	Neoway	10.619┬áBRL┬á/mese	04/05/2024 14:05:10	T
1912	Data Scientist	Brazil	Centro de Estudos e Sistemas Avan├ºados do Recife - C.E.S.A.R	7.461┬áBRL┬á/mese	04/05/2024 14:05:10	T
1913	Data Scientist	Italy	Reply	30.899┬áÔé¼┬á/anno	04/05/2024 14:05:29	T
1914	Data Scientist	Italy	BIP	32.345┬áÔé¼┬á/anno	04/05/2024 14:05:29	T
1915	Data Scientist	Italy	Accenture	32.494┬áÔé¼┬á/anno	04/05/2024 14:05:29	T
1916	Data Scientist	Italy	Enel	41.339┬áÔé¼┬á/anno	04/05/2024 14:05:29	T
1917	Data Scientist	Italy	NTT DATA	32.427┬áÔé¼┬á/anno	04/05/2024 14:05:29	T
1918	Data Scientist	Italy	Alkemy	34.890┬áÔé¼┬á/anno	04/05/2024 14:05:29	T
1919	Data Scientist	Italy	Generali	39.917┬áÔé¼┬á/anno	04/05/2024 14:05:29	T
1920	Data Scientist	Italy	Capgemini	27.921┬áÔé¼┬á/anno	04/05/2024 14:05:29	T
1921	Data Scientist	Italy	Jakala	33.055┬áÔé¼┬á/anno	04/05/2024 14:05:29	T
1922	Data Scientist	Italy	Vodafone	40.620┬áÔé¼┬á/anno	04/05/2024 14:05:29	T
1923	Data Scientist	Italy	Intesa Sanpaolo	38.945┬áÔé¼┬á/anno	04/05/2024 14:05:29	T
1924	Data Scientist	Italy	Prima Assicurazioni	41.869┬áÔé¼┬á/anno	04/05/2024 14:05:29	T
1925	Data Scientist	Italy	Orobix	28.994┬áÔé¼┬á/anno	04/05/2024 14:05:29	T
1926	Data Scientist	Italy	Eni Spa	37.415┬áÔé¼┬á/anno	04/05/2024 14:05:29	T
1927	Data Scientist	Italy	Capgemini Engineering	64.700┬áÔé¼┬á/anno	04/05/2024 14:05:29	T
1928	Data Scientist	Italy	IBM	36.240┬áÔé¼┬á/anno	04/05/2024 14:05:29	T
1929	Data Scientist	Italy	Everli	37.616┬áÔé¼┬á/anno	04/05/2024 14:05:29	T
1930	Data Scientist	Italy	UniCredit Group	40.250┬áÔé¼┬á/anno	04/05/2024 14:05:29	T
1931	Data Scientist	Italy	Telecom Italia	33.980┬áÔé¼┬á/anno	04/05/2024 14:05:29	T
1932	Data Scientist	Italy	Docebo	47.797┬áÔé¼┬á/anno	04/05/2024 14:05:29	T
1933	Actuary	United States	EY	171.251┬áUSD┬á/anno	04/05/2024 14:05:48	T
1934	Actuary	United States	Milliman	158.471┬áUSD┬á/anno	04/05/2024 14:05:48	T
1935	Actuary	United States	Liberty Mutual Insurance	166.535┬áUSD┬á/anno	04/05/2024 14:05:48	T
1936	Actuary	United States	MetLife	172.538┬áUSD┬á/anno	04/05/2024 14:05:48	T
1937	Actuary	United States	AIG	164.972┬áUSD┬á/anno	04/05/2024 14:05:48	T
1938	Actuary	United States	Genworth	160.484┬áUSD┬á/anno	04/05/2024 14:05:48	T
1939	Actuary	United States	Humana	168.166┬áUSD┬á/anno	04/05/2024 14:05:48	T
1940	Actuary	United States	Lincoln Financial Group	158.979┬áUSD┬á/anno	04/05/2024 14:05:48	T
1941	Actuary	United States	Prudential	189.186┬áUSD┬á/anno	04/05/2024 14:05:48	T
1942	Actuary	United States	Transamerica	155.259┬áUSD┬á/anno	04/05/2024 14:05:48	T
1943	Actuary	United States	Mercer	150.726┬áUSD┬á/anno	04/05/2024 14:05:48	T
1944	Actuary	United States	Aon	165.388┬áUSD┬á/anno	04/05/2024 14:05:48	T
1945	Actuary	United States	John Hancock	196.772┬áUSD┬á/anno	04/05/2024 14:05:48	T
1946	Actuary	United States	WTW	172.633┬áUSD┬á/anno	04/05/2024 14:05:48	T
1947	Actuary	United States	Travelers	191.592┬áUSD┬á/anno	04/05/2024 14:05:48	T
1948	Actuary	United States	Sun Life	144.408┬áUSD┬á/anno	04/05/2024 14:05:48	T
1949	Actuary	United States	MassMutual	169.396┬áUSD┬á/anno	04/05/2024 14:05:48	T
1950	Actuary	United States	Allstate	166.109┬áUSD┬á/anno	04/05/2024 14:05:48	T
1951	Actuary	United States	Munich Re	152.792┬áUSD┬á/anno	04/05/2024 14:05:48	T
1952	Actuary	United States	New York Life	160.613┬áUSD┬á/anno	04/05/2024 14:05:48	T
1953	Actuary	Germany	Allianz	75.984┬áÔé¼┬á/anno	04/05/2024 14:06:25	T
1954	Actuary	Germany	ERGO Group (Germany)	64.668┬áÔé¼┬á/anno	04/05/2024 14:06:25	T
1955	Actuary	Germany	Munich Re	91.498┬áÔé¼┬á/anno	04/05/2024 14:06:25	T
1956	Actuary	Germany	Q_PERIOR	Circa┬á55.545┬áÔé¼ -62.919┬áÔé¼	04/05/2024 14:06:25	T
1957	Actuary	Germany	Deloitte	Circa┬á78.409┬áÔé¼ -93.080┬áÔé¼	04/05/2024 14:06:25	T
1958	Actuary	Germany	Munich Re	Circa┬á1939┬áÔé¼ -2238┬áÔé¼	04/05/2024 14:06:25	T
1959	Actuary	Germany	AXA	Circa┬á1461┬áÔé¼ -1724┬áÔé¼	04/05/2024 14:06:25	T
1960	Actuary	Germany	AXA	Circa┬á50.694┬áÔé¼ -59.455┬áÔé¼	04/05/2024 14:06:25	T
1961	Actuary	Germany	Generali	Circa┬á46.673┬áÔé¼ -55.883┬áÔé¼	04/05/2024 14:06:25	T
1962	Actuary	Germany	wefox	Circa┬á77.247┬áÔé¼ -91.508┬áÔé¼	04/05/2024 14:06:25	T
1963	Actuary	Germany	Zurich Insurance	Circa┬á59.725┬áÔé¼ -70.536┬áÔé¼	04/05/2024 14:06:25	T
1964	Actuary	Germany	Bausparkasse W├╝stenrot	Circa┬á1840┬áÔé¼ -2162┬áÔé¼	04/05/2024 14:06:25	T
1965	Actuary	Germany	Hannover RE	Circa┬á49.489┬áÔé¼ -57.380┬áÔé¼	04/05/2024 14:06:25	T
1966	Actuary	Germany	Hannover RE	Circa┬á58.927┬áÔé¼ -69.906┬áÔé¼	04/05/2024 14:06:25	T
1967	Actuary	Germany	Marsh McLennan	Circa┬á63.650┬áÔé¼ -73.433┬áÔé¼	04/05/2024 14:06:25	T
1968	Actuary	Germany	Gen Re	Circa┬á69.616┬áÔé¼ -83.105┬áÔé¼	04/05/2024 14:06:25	T
1969	Actuary	Germany	BNP Paribas Cardif	Circa┬á923┬áÔé¼ -1082┬áÔé¼	04/05/2024 14:06:25	T
1970	Actuary	Germany	FWU AG	Circa┬á46.567┬áÔé¼ -54.591┬áÔé¼	04/05/2024 14:06:25	T
1971	Actuary	Germany	Janitos	Circa┬á56.387┬áÔé¼ -65.996┬áÔé¼	04/05/2024 14:06:25	T
1972	Actuary	Germany	Hannover R├╝ck	Circa┬á50.565┬áÔé¼ -60.156┬áÔé¼	04/05/2024 14:06:25	T
1973	Actuary	Japan	Nippon Life Insurance	Circa┬á597.660┬áJPY -696.391┬áJPY	04/05/2024 14:06:44	T
1974	Actuary	Japan	Sony Life Insurance	Circa┬á273.539┬áJPY -324.191┬áJPY	04/05/2024 14:06:44	T
1975	Actuary	Japan	Telescope (Japan)	Circa┬á3┬áMio┬áJPY -4┬áMio┬áJPY	04/05/2024 14:06:44	T
1976	Actuary	Japan	AIG	Circa┬á7┬áMio┬áJPY -8┬áMio┬áJPY	04/05/2024 14:06:44	T
1977	Actuary	India	OneAmerica Financial	127.430┬áUSD┬á/anno	04/05/2024 14:07:03	T
1978	Actuary	India	Milliman	140.311┬áUSD┬á/anno	04/05/2024 14:07:03	T
1979	Actuary	India	The Howard E Nyhart Company	135.671┬áUSD┬á/anno	04/05/2024 14:07:03	T
1980	Actuary	India	Humana	170.705┬áUSD┬á/anno	04/05/2024 14:07:03	T
1981	Actuary	India	Nones	129.367┬áUSD┬á/anno	04/05/2024 14:07:03	T
1982	Actuary	India	Swiss Re	142.071┬áUSD┬á/anno	04/05/2024 14:07:03	T
1983	Actuary	India	CNO Financial Group	154.165┬áUSD┬á/anno	04/05/2024 14:07:03	T
1984	Actuary	India	Humana	159.760┬áUSD┬á/anno	04/05/2024 14:07:03	T
1985	Actuary	India	Elevance Health	173.130┬áUSD┬á/anno	04/05/2024 14:07:03	T
1986	Actuary	United Kingdom	Legal & General	85.685┬á┬ú┬á/anno	04/05/2024 14:07:22	T
1987	Actuary	United Kingdom	Phoenix Group	81.903┬á┬ú┬á/anno	04/05/2024 14:07:22	T
1988	Actuary	United Kingdom	Royal London	68.360┬á┬ú┬á/anno	04/05/2024 14:07:22	T
1989	Actuary	United Kingdom	PwC	68.898┬á┬ú┬á/anno	04/05/2024 14:07:22	T
1990	Actuary	United Kingdom	WTW	76.585┬á┬ú┬á/anno	04/05/2024 14:07:22	T
1991	Actuary	United Kingdom	Aviva	71.671┬á┬ú┬á/anno	04/05/2024 14:07:22	T
1992	Actuary	United Kingdom	Mercer	61.082┬á┬ú┬á/anno	04/05/2024 14:07:22	T
1993	Actuary	United Kingdom	Barnett Waddingham	72.986┬á┬ú┬á/anno	04/05/2024 14:07:22	T
1994	Actuary	United Kingdom	Aon	51.873┬á┬ú┬á/anno	04/05/2024 14:07:22	T
1995	Actuary	United Kingdom	Lloyds Banking Group	69.704┬á┬ú┬á/anno	04/05/2024 14:07:22	T
1996	Actuary	United Kingdom	Swiss Re	87.102┬á┬ú┬á/anno	04/05/2024 14:07:22	T
1997	Actuary	United Kingdom	EY	61.992┬á┬ú┬á/anno	04/05/2024 14:07:22	T
1998	Actuary	United Kingdom	KPMG	100.580┬á┬ú┬á/anno	04/05/2024 14:07:22	T
1999	Actuary	United Kingdom	Zurich Insurance	70.566┬á┬ú┬á/anno	04/05/2024 14:07:22	T
2000	Actuary	United Kingdom	Isio Group	74.922┬á┬ú┬á/anno	04/05/2024 14:07:22	T
2001	Actuary	United Kingdom	Government Actuary's Department UK	79.866┬á┬ú┬á/anno	04/05/2024 14:07:22	T
2002	Actuary	United Kingdom	Deloitte	71.844┬á┬ú┬á/anno	04/05/2024 14:07:22	T
2003	Actuary	United Kingdom	Allianz	82.115┬á┬ú┬á/anno	04/05/2024 14:07:22	T
2004	Actuary	United Kingdom	M&G plc	101.603┬á┬ú┬á/anno	04/05/2024 14:07:22	T
2005	Actuary	United Kingdom	Just	66.399┬á┬ú┬á/anno	04/05/2024 14:07:22	T
2006	Actuary	France	AXA	56.689┬áÔé¼┬á/anno	04/05/2024 14:07:41	T
2007	Actuary	France	Allianz	57.044┬áÔé¼┬á/anno	04/05/2024 14:07:41	T
2008	Actuary	France	Groupama	79.500┬áÔé¼┬á/anno	04/05/2024 14:07:41	T
2009	Actuary	France	AXA	Circa┬á1404┬áÔé¼ -1549┬áÔé¼	04/05/2024 14:07:41	T
2010	Actuary	France	SCOR	Circa┬á56.680┬áÔé¼ -82.525┬áÔé¼	04/05/2024 14:07:41	T
2011	Actuary	France	Wakam	Circa┬á62.575┬áÔé¼ -74.222┬áÔé¼	04/05/2024 14:07:41	T
2012	Actuary	France	BNP Paribas	Circa┬á42.278┬áÔé¼ -49.080┬áÔé¼	04/05/2024 14:07:41	T
2013	Actuary	France	EY	Circa┬á46.353┬áÔé¼ -54.943┬áÔé¼	04/05/2024 14:07:41	T
2014	Actuary	France	Deloitte	Circa┬á41.160┬áÔé¼ -48.108┬áÔé¼	04/05/2024 14:07:41	T
2015	Actuary	France	KPMG	Circa┬á2289┬áÔé¼ -2701┬áÔé¼	04/05/2024 14:07:41	T
2016	Actuary	France	PwC	Circa┬á40.347┬áÔé¼ -47.514┬áÔé¼	04/05/2024 14:07:41	T
2017	Actuary	France	Fnac	Circa┬á54.387┬áÔé¼ -64.966┬áÔé¼	04/05/2024 14:07:41	T
2018	Actuary	France	AXA / France	Circa┬á2991┬áÔé¼ -3573┬áÔé¼	04/05/2024 14:07:41	T
2019	Actuary	France	AXA / France	Circa┬á1187┬áÔé¼ -1409┬áÔé¼	04/05/2024 14:07:41	T
2020	Actuary	France	Groupe Cov├®a	Circa┬á77.852┬áÔé¼ -89.291┬áÔé¼	04/05/2024 14:07:41	T
2021	Actuary	France	BNP Paribas Cardif	Circa┬á1926┬áÔé¼ -2270┬áÔé¼	04/05/2024 14:07:41	T
2022	Actuary	France	BNP Paribas Cardif	Circa┬á63.551┬áÔé¼ -73.616┬áÔé¼	04/05/2024 14:07:41	T
2023	Actuary	France	Aviva	Circa┬á3370┬áÔé¼ -3987┬áÔé¼	04/05/2024 14:07:41	T
2024	Actuary	France	Cr├®dit Agricole Assurances	Circa┬á54.735┬áÔé¼ -64.932┬áÔé¼	04/05/2024 14:07:41	T
2025	Actuary	France	Le Conservateur	Circa┬á64.344┬áÔé¼ -76.026┬áÔé¼	04/05/2024 14:07:41	T
2026	Actuary	Brazil	Icatu Seguros	Circa┬á5240┬áBRL -6061┬áBRL	04/05/2024 14:08:00	T
2027	Actuary	Brazil	Prudential	Circa┬á74.139┬áBRL -87.581┬áBRL	04/05/2024 14:08:00	T
2028	Actuary	Brazil	Swiss Re	Circa┬á79.048┬áBRL -92.340┬áBRL	04/05/2024 14:08:00	T
2029	Actuary	Brazil	Ita├║ Unibanco (Ita├║ BBA e Rede)	Circa┬á25.034┬áBRL -28.995┬áBRL	04/05/2024 14:08:00	T
2030	Actuary	Brazil	Santander	Circa┬á10.022┬áBRL -11.838┬áBRL	04/05/2024 14:08:00	T
2031	Actuary	Brazil	TIVIT	Circa┬á1949┬áBRL -2287┬áBRL	04/05/2024 14:08:00	T
2032	Actuary	Brazil	Qintess	Circa┬á8445┬áBRL -9952┬áBRL	04/05/2024 14:08:00	T
2033	Actuary	Brazil	"Centro Paula Souza (ETEC, FATEC, SDECTI)"	Circa┬á2299┬áBRL -2711┬áBRL	04/05/2024 14:08:00	T
2034	Actuary	Brazil	StoccheForbes Advogados	Circa┬á8406┬áBRL -9880┬áBRL	04/05/2024 14:08:00	T
2035	Actuary	Brazil	Mercaf├ícil	Circa┬á8395┬áBRL -9627┬áBRL	04/05/2024 14:08:00	T
2036	Actuary	Brazil	BYJU'S	Circa┬á4119┬áBRL -4818┬áBRL	04/05/2024 14:08:00	T
2037	Actuary	Brazil	InterOp	Circa┬á1542┬áBRL -1841┬áBRL	04/05/2024 14:08:00	T
2038	Actuary	Brazil	Kl├╝ber Lubrication	Circa┬á18.570┬áBRL -21.245┬áBRL	04/05/2024 14:08:00	T
2039	Actuary	Brazil	Lucs Promo├º├Áes	Circa┬á1378┬áBRL -1632┬áBRL	04/05/2024 14:08:00	T
2040	Actuary	Brazil	Mercer	Circa┬á16.976┬áBRL -20.068┬áBRL	04/05/2024 14:08:00	T
2041	Actuary	Brazil	Unified Healthcare Group	Circa┬á9218┬áBRL -10.635┬áBRL	04/05/2024 14:08:00	T
2042	Actuary	Brazil	Milliman	Circa┬á11.002┬áBRL -12.836┬áBRL	04/05/2024 14:08:00	T
2043	Actuary	Brazil	Aegon	Circa┬á12.182┬áBRL -14.314┬áBRL	04/05/2024 14:08:00	T
2044	Actuary	Brazil	Swiss Re	Circa┬á15.690┬áBRL -18.446┬áBRL	04/05/2024 14:08:00	T
2045	Actuary	Brazil	Reinsurance Group of America	Circa┬á32.204┬áBRL -37.745┬áBRL	04/05/2024 14:08:00	T
2046	Statistician	United States	Apple	169.359┬áUSD┬á/anno	04/05/2024 14:08:36	T
2047	Statistician	United States	EY	128.398┬áUSD┬á/anno	04/05/2024 14:08:36	T
2048	Statistician	United States	Northern Trust	103.975┬áUSD┬á/anno	04/05/2024 14:08:36	T
2049	Statistician	United States	TechData Service Company	97.472┬áUSD┬á/anno	04/05/2024 14:08:36	T
2050	Statistician	United States	US Census Bureau	85.756┬áUSD┬á/anno	04/05/2024 14:08:36	T
2051	Statistician	United States	Booker Group	80.413┬áUSD┬á/anno	04/05/2024 14:08:36	T
2052	Statistician	United States	Abbott	111.960┬áUSD┬á/anno	04/05/2024 14:08:36	T
2053	Statistician	United States	Capital One	123.640┬áUSD┬á/anno	04/05/2024 14:08:36	T
2054	Statistician	United States	American Credit Acceptance	109.439┬áUSD┬á/anno	04/05/2024 14:08:36	T
2055	Statistician	United States	Dana-Farber Cancer Institute	87.450┬áUSD┬á/anno	04/05/2024 14:08:36	T
2056	Statistician	United States	inVentiv Clinical	103.614┬áUSD┬á/anno	04/05/2024 14:08:36	T
2057	Statistician	United States	University of Alabama at Birmingham	74.257┬áUSD┬á/anno	04/05/2024 14:08:37	T
2058	Statistician	United States	LLX Solutions	82.125┬áUSD┬á/anno	04/05/2024 14:08:37	T
2059	Statistician	United States	Merkle	107.933┬áUSD┬á/anno	04/05/2024 14:08:37	T
2060	Statistician	United States	U.S. Department of Agriculture	92.662┬áUSD┬á/anno	04/05/2024 14:08:37	T
2061	Statistician	United States	Intel Corporation	126.120┬áUSD┬á/anno	04/05/2024 14:08:37	T
2062	Statistician	United States	UCLA	97.414┬áUSD┬á/anno	04/05/2024 14:08:37	T
2063	Statistician	United States	US Department of Veterans Affairs	96.757┬áUSD┬á/anno	04/05/2024 14:08:37	T
2064	Statistician	United States	Google	159.319┬áUSD┬á/anno	04/05/2024 14:08:37	T
2065	Statistician	United States	Medtronic	107.356┬áUSD┬á/anno	04/05/2024 14:08:37	T
2066	Statistician	China	IQVIA	Circa┬á8070┬áCN┬Ñ -10.347┬áCN┬Ñ	04/05/2024 14:08:55	T
2067	Statistician	China	Roche	Circa┬á27.876┬áCN┬Ñ -32.243┬áCN┬Ñ	04/05/2024 14:08:55	T
2068	Statistician	China	ECNU	Circa┬á2755┬áCN┬Ñ -3250┬áCN┬Ñ	04/05/2024 14:08:55	T
2069	Statistician	China	Shanghai Renji Hospital	Circa┬á230.618┬áCN┬Ñ -268.864┬áCN┬Ñ	04/05/2024 14:08:55	T
2070	Statistician	China	Eurofins	Circa┬á108.513┬áCN┬Ñ -126.754┬áCN┬Ñ	04/05/2024 14:08:55	T
2071	Statistician	China	LinkDoc	Circa┬á13.041┬áCN┬Ñ -15.362┬áCN┬Ñ	04/05/2024 14:08:55	T
2072	Statistician	China	Parexel	Circa┬á363.825┬áCN┬Ñ -427.119┬áCN┬Ñ	04/05/2024 14:08:55	T
2073	Statistician	China	Novo Nordisk	Circa┬á278.029┬áCN┬Ñ -328.028┬áCN┬Ñ	04/05/2024 14:08:55	T
2074	Statistician	China	Biogen	Circa┬á64.979┬áCN┬Ñ -75.510┬áCN┬Ñ	04/05/2024 14:08:55	T
2075	Statistician	China	Pamplona Capital Management	Circa┬á412.165┬áCN┬Ñ -480.948┬áCN┬Ñ	04/05/2024 14:08:55	T
2076	Statistician	China	People's Hospital of Zhengzhou	Circa┬á9254┬áCN┬Ñ -10.879┬áCN┬Ñ	04/05/2024 14:08:55	T
2077	Statistician	China	Helpclin Data	Circa┬á120.485┬áCN┬Ñ -139.206┬áCN┬Ñ	04/05/2024 14:08:55	T
2078	Statistician	China	Boehringer Ingelheim	Circa┬á380.966┬áCN┬Ñ -443.995┬áCN┬Ñ	04/05/2024 14:08:55	T
2079	Statistician	China	AstraZeneca	Circa┬á747.910┬áCN┬Ñ -885.776┬áCN┬Ñ	04/05/2024 14:08:55	T
2080	Statistician	China	Parexel	Circa┬á7326┬áCN┬Ñ -8624┬áCN┬Ñ	04/05/2024 14:08:55	T
2081	Statistician	China	Jiangsu Hengrui Medicine	Circa┬á249.729┬áCN┬Ñ -294.462┬áCN┬Ñ	04/05/2024 14:08:55	T
2082	Statistician	China	Eli Lilly and Company	Circa┬á165.594┬áCN┬Ñ -191.436┬áCN┬Ñ	04/05/2024 14:08:55	T
2083	Statistician	China	Pharmaron	Circa┬á12.753┬áCN┬Ñ -14.877┬áCN┬Ñ	04/05/2024 14:08:55	T
2084	Statistician	Germany	Sportradar	Circa┬á1667┬áÔé¼ -1816┬áÔé¼	04/05/2024 14:09:14	T
2085	Statistician	Germany	Bayer	Circa┬á64.175┬áÔé¼ -75.877┬áÔé¼	04/05/2024 14:09:14	T
2086	Statistician	Germany	Bayer	Circa┬á1389┬áÔé¼ -1649┬áÔé¼	04/05/2024 14:09:14	T
2087	Statistician	Germany	Sparkasse	Circa┬á38.905┬áÔé¼ -45.457┬áÔé¼	04/05/2024 14:09:14	T
2088	Statistician	Germany	Freelancer	Circa┬á37┬áÔé¼ -43┬áÔé¼┬áoraria	04/05/2024 14:09:14	T
2089	Statistician	Germany	Ludwig-Maximilians-Universit├ñt M├╝nchen	Circa┬á5476┬áÔé¼ -6543┬áÔé¼	04/05/2024 14:09:14	T
2090	Statistician	Germany	Roche	Circa┬á93.668┬áÔé¼ -107.628┬áÔé¼	04/05/2024 14:09:14	T
2091	Statistician	Germany	European Central Bank	Circa┬á1019┬áÔé¼ -1208┬áÔé¼	04/05/2024 14:09:14	T
2092	Statistician	Germany	Charit├®	Circa┬á56.889┬áÔé¼ -65.451┬áÔé¼	04/05/2024 14:09:14	T
2093	Statistician	Germany	Charit├®	Circa┬á4075┬áÔé¼ -4770┬áÔé¼	04/05/2024 14:09:14	T
2094	Statistician	Germany	Universit├ñt Hamburg	Circa┬á63.764┬áÔé¼ -74.620┬áÔé¼	04/05/2024 14:09:14	T
2095	Statistician	Germany	Deutsches Krebsforschungszentrum	Circa┬á53.122┬áÔé¼ -63.649┬áÔé¼	04/05/2024 14:09:14	T
2096	Statistician	Germany	Novartis	Circa┬á83.607┬áÔé¼ -96.623┬áÔé¼	04/05/2024 14:09:14	T
2097	Statistician	Germany	Deutsche Bundesbank	Circa┬á2760┬áÔé¼ -3246┬áÔé¼	04/05/2024 14:09:15	T
2098	Statistician	Germany	TU Kaiserslautern	Circa┬á53.129┬áÔé¼ -60.901┬áÔé¼	04/05/2024 14:09:15	T
2099	Statistician	Germany	Publicis Sapient	Circa┬á50.998┬áÔé¼ -59.474┬áÔé¼	04/05/2024 14:09:15	T
2100	Statistician	Germany	Deutsche Post	Circa┬á33.240┬áÔé¼ -38.878┬áÔé¼	04/05/2024 14:09:15	T
2101	Statistician	Germany	Bavarian Nordic	Circa┬á64.669┬áÔé¼ -74.984┬áÔé¼	04/05/2024 14:09:15	T
2102	Statistician	Germany	Julius K├╝hn-Institut	Circa┬á1724┬áÔé¼ -2089┬áÔé¼	04/05/2024 14:09:15	T
2103	Statistician	Germany	Dr. Willmar Schwabe Pharmaceuticals	Circa┬á3164┬áÔé¼ -3688┬áÔé¼	04/05/2024 14:09:15	T
2104	Statistician	Japan	Asahi Kasei	Circa┬á5┬áMio┬áJPY -5┬áMio┬áJPY	04/05/2024 14:09:33	T
2105	Statistician	Japan	Mochida Pharmaceutical	Circa┬á432.353┬áJPY -499.581┬áJPY	04/05/2024 14:09:33	T
2106	Statistician	Japan	Nospare	Circa┬á1367┬áJPY -1618┬áJPY┬áoraria	04/05/2024 14:09:33	T
2107	Statistician	Japan	Takeda Pharmaceuticals	Circa┬á533.136┬áJPY -625.345┬áJPY	04/05/2024 14:09:33	T
2108	Statistician	Japan	GSK	Circa┬á7┬áMio┬áJPY -8┬áMio┬áJPY	04/05/2024 14:09:33	T
2109	Statistician	Japan	Boehringer Ingelheim	Circa┬á8┬áMio┬áJPY -10┬áMio┬áJPY	04/05/2024 14:09:33	T
2110	Statistician	India	inVentiv Clinical	99.694┬áUSD┬á/anno	04/05/2024 14:09:52	T
2111	Statistician	India	Eli Lilly and Company	126.638┬áUSD┬á/anno	04/05/2024 14:09:52	T
2112	Statistician	India	Ivy Tech Community College	65.076┬áUSD┬á/anno	04/05/2024 14:09:52	T
2113	Statistician	India	University of Iowa	76.635┬áUSD┬á/anno	04/05/2024 14:09:52	T
2114	Statistician	India	Anonymous Content	81.882┬áUSD┬á/anno	04/05/2024 14:09:52	T
2115	Statistician	India	Indiana University-Purdue University Columbus	71.695┬áUSD┬á/anno	04/05/2024 14:09:52	T
2116	Statistician	India	GSS	79.969┬áUSD┬á/anno	04/05/2024 14:09:52	T
2117	Statistician	India	Mathematica	74.523┬áUSD┬á/anno	04/05/2024 14:09:52	T
2118	Statistician	India	Indiana University	70.793┬áUSD┬á/anno	04/05/2024 14:09:52	T
2119	Statistician	India	EY	124.027┬áUSD┬á/anno	04/05/2024 14:09:52	T
2120	Statistician	India	Elanco	102.636┬áUSD┬á/anno	04/05/2024 14:09:52	T
2121	Statistician	India	IQVIA	109.536┬áUSD┬á/anno	04/05/2024 14:09:52	T
2122	Statistician	United Kingdom	Department for Work And Pensions	39.326┬á┬ú┬á/anno	04/05/2024 14:10:11	T
2123	Statistician	United Kingdom	HM Revenue and Customs	33.977┬á┬ú┬á/anno	04/05/2024 14:10:11	T
2124	Statistician	United Kingdom	Phastar	35.242┬á┬ú┬á/anno	04/05/2024 14:10:11	T
2125	Statistician	United Kingdom	Civil Service United Kingdom	33.948┬á┬ú┬á/anno	04/05/2024 14:10:11	T
2126	Statistician	United Kingdom	Communities & Local Government	39.521┬á┬ú┬á/anno	04/05/2024 14:10:11	T
2127	Statistician	United Kingdom	GSK	49.438┬á┬ú┬á/anno	04/05/2024 14:10:11	T
2128	Statistician	United Kingdom	The Department for Education (UK)	39.907┬á┬ú┬á/anno	04/05/2024 14:10:11	T
2129	Statistician	United Kingdom	Queen Mary, University of London	40.453┬á┬ú┬á/anno	04/05/2024 14:10:11	T
2130	Statistician	United Kingdom	Department of Health UK	51.224┬á┬ú┬á/anno	04/05/2024 14:10:11	T
2131	Statistician	United Kingdom	Veramed	38.409┬á┬ú┬á/anno	04/05/2024 14:10:11	T
2132	Statistician	United Kingdom	Office for National Statistics	41.278┬á┬ú┬á/anno	04/05/2024 14:10:11	T
2133	Statistician	United Kingdom	Scottish Government	37.521┬á┬ú┬á/anno	04/05/2024 14:10:11	T
2134	Statistician	United Kingdom	Northern Ireland Civil Service	38.530┬á┬ú┬á/anno	04/05/2024 14:10:11	T
2135	Statistician	United Kingdom	Oxford University	36.492┬á┬ú┬á/anno	04/05/2024 14:10:11	T
2136	Statistician	United Kingdom	AstraZeneca	40.132┬á┬ú┬á/anno	04/05/2024 14:10:11	T
2137	Statistician	United Kingdom	Department of Energy & Climate Change	30.631┬á┬ú┬á/anno	04/05/2024 14:10:11	T
2138	Statistician	United Kingdom	University College London	39.171┬á┬ú┬á/anno	04/05/2024 14:10:11	T
2139	Statistician	United Kingdom	Abbott	29.800┬á┬ú┬á/anno	04/05/2024 14:10:11	T
2140	Statistician	United Kingdom	Northern Ireland Statistics and Research Agency	32.959┬á┬ú┬á/anno	04/05/2024 14:10:11	T
2141	Statistician	United Kingdom	King's College London	36.467┬á┬ú┬á/anno	04/05/2024 14:10:11	T
2142	Statistician	Brazil	Marketdata	Circa┬á4793┬áBRL -5717┬áBRL	04/05/2024 14:10:47	T
2143	Statistician	Brazil	Petrobras	Circa┬á62.492┬áBRL -72.357┬áBRL	04/05/2024 14:10:47	T
2144	Statistician	Brazil	SulAm├®rica	Circa┬á7350┬áBRL -8586┬áBRL	04/05/2024 14:10:47	T
2145	Statistician	Brazil	Record TV	Circa┬á6218┬áBRL -7208┬áBRL	04/05/2024 14:10:47	T
2146	Statistician	Brazil	Chaordic Systems	Circa┬á2801┬áBRL -3228┬áBRL	04/05/2024 14:10:47	T
2147	Statistician	Brazil	Meritt	Circa┬á2978┬áBRL -3524┬áBRL	04/05/2024 14:10:48	T
2148	Statistician	Brazil	Bright Photomedicine	Circa┬á7576┬áBRL -8647┬áBRL	04/05/2024 14:10:48	T
2149	Statistician	Brazil	O N├║cleo de Informa├º├úo e Coordena├º├úo do Ponto BR	Circa┬á4214┬áBRL -4855┬áBRL	04/05/2024 14:10:48	T
2150	Statistician	Brazil	Conselho da Justi├ºa Federal (CJF)	Circa┬á24.505┬áBRL -28.562┬áBRL	04/05/2024 14:10:48	T
2151	Statistician	Italy	GSK	42.171┬áÔé¼┬á/anno	04/05/2024 14:11:06	T
2152	Statistician	Italy	Opis	28.069┬áÔé¼┬á/anno	04/05/2024 14:11:06	T
2153	Statistician	Italy	GSK	Circa┬á466┬áÔé¼ -728┬áÔé¼	04/05/2024 14:11:06	T
2154	Statistician	Italy	La Sapienza Universit├á	Circa┬á922┬áÔé¼ -1088┬áÔé¼	04/05/2024 14:11:06	T
2155	Statistician	Italy	University of Padova	Circa┬á903┬áÔé¼ -1076┬áÔé¼	04/05/2024 14:11:06	T
2156	Statistician	Italy	Google	Circa┬á25.769┬áÔé¼ -30.328┬áÔé¼	04/05/2024 14:11:06	T
2157	Statistician	Italy	Sopra Steria	Circa┬á734┬áÔé¼ -860┬áÔé¼	04/05/2024 14:11:06	T
2158	Statistician	Italy	IQVIA	Circa┬á28.535┬áÔé¼ -33.539┬áÔé¼	04/05/2024 14:11:06	T
2159	Statistician	Italy	FAO of the UN	Circa┬á33.486┬áÔé¼ -38.709┬áÔé¼	04/05/2024 14:11:06	T
2160	Statistician	Italy	ABC	Circa┬á40.660┬áÔé¼ -47.539┬áÔé¼	04/05/2024 14:11:06	T
2161	Statistician	Italy	AstraZeneca	Circa┬á1553┬áÔé¼ -1826┬áÔé¼	04/05/2024 14:11:06	T
2162	Statistician	Italy	European Food Safety Authority	Circa┬á7019┬áÔé¼ -8187┬áÔé¼	04/05/2024 14:11:06	T
2163	Statistician	Italy	AUSL	Circa┬á1091┬áÔé¼ -1302┬áÔé¼	04/05/2024 14:11:06	T
2164	Statistician	Italy	Istituto Mario Negri	Circa┬á18.482┬áÔé¼ -21.532┬áÔé¼	04/05/2024 14:11:06	T
2165	Statistician	Italy	Agenzia Nazionale per i Servizi Sanitari Regionali	Circa┬á22.481┬áÔé¼ -26.151┬áÔé¼	04/05/2024 14:11:06	T
2166	Statistician	Italy	Ospedali Riuniti Villa Sofia-Cervello	Circa┬á13.764┬áÔé¼ -16.378┬áÔé¼	04/05/2024 14:11:06	T
2167	Statistician	Italy	Finaudit	Circa┬á458┬áÔé¼ -527┬áÔé¼	04/05/2024 14:11:06	T
2168	Statistician	Italy	Cancer Prevention & Research Institute of Texas	Circa┬á39.325┬áÔé¼ -46.033┬áÔé¼	04/05/2024 14:11:06	T
2169	Statistician	Italy	GSK	Circa┬á30.642┬áÔé¼ -37.411┬áÔé¼	04/05/2024 14:11:06	T
2170	Statistician	Italy	Medtronic	Circa┬á37.613┬áÔé¼ -43.974┬áÔé¼	04/05/2024 14:11:06	T
2171	Management Analyst	United States	Apple	153.863┬áUSD┬á/anno	04/05/2024 14:11:25	T
2172	Management Analyst	United States	EY	136.630┬áUSD┬á/anno	04/05/2024 14:11:25	T
2173	Management Analyst	United States	Mphasis	91.825┬áUSD┬á/anno	04/05/2024 14:11:25	T
2174	Management Analyst	United States	Apex Technology Group	81.411┬áUSD┬á/anno	04/05/2024 14:11:25	T
2175	Management Analyst	United States	Fujitsu	87.472┬áUSD┬á/anno	04/05/2024 14:11:25	T
2176	Management Analyst	United States	Tech Mahindra	92.426┬áUSD┬á/anno	04/05/2024 14:11:25	T
2177	Management Analyst	United States	US Department of Veterans Affairs	89.580┬áUSD┬á/anno	04/05/2024 14:11:25	T
2178	Management Analyst	United States	Value Consulting	88.298┬áUSD┬á/anno	04/05/2024 14:11:25	T
2179	Management Analyst	United States	Software Catalysts	79.251┬áUSD┬á/anno	04/05/2024 14:11:25	T
2180	Management Analyst	United States	US Air Force	75.681┬áUSD┬á/anno	04/05/2024 14:11:25	T
2181	Management Analyst	United States	ASTA CRS	74.103┬áUSD┬á/anno	04/05/2024 14:11:25	T
2182	Management Analyst	United States	US Department of Defense	91.832┬áUSD┬á/anno	04/05/2024 14:11:25	T
2183	Management Analyst	United States	ECOM Consulting	85.224┬áUSD┬á/anno	04/05/2024 14:11:25	T
2184	Management Analyst	United States	United States Federal Government	95.481┬áUSD┬á/anno	04/05/2024 14:11:25	T
2185	Management Analyst	United States	US Navy	97.415┬áUSD┬á/anno	04/05/2024 14:11:25	T
2186	Management Analyst	United States	US Army	83.245┬áUSD┬á/anno	04/05/2024 14:11:25	T
2187	Management Analyst	United States	Mphasis	71.152┬áUSD┬á/anno	04/05/2024 14:11:25	T
2188	Management Analyst	United States	LTIMindtree	104.811┬áUSD┬á/anno	04/05/2024 14:11:25	T
2189	Management Analyst	United States	digiBlitz Technologies	88.756┬áUSD┬á/anno	04/05/2024 14:11:25	T
2190	Management Analyst	United States	SQA Labs	109.485┬áUSD┬á/anno	04/05/2024 14:11:25	T
2191	Management Analyst	Germany	Accenture	Circa┬á49.807┬áÔé¼ -57.240┬áÔé¼	04/05/2024 14:12:03	T
2192	Management Analyst	Germany	TU Darmstadt	Circa┬á9┬áÔé¼ -11┬áÔé¼┬áoraria	04/05/2024 14:12:03	T
2193	Management Analyst	Germany	Mercedes-Benz Mobility	Circa┬á2141┬áÔé¼ -2508┬áÔé¼	04/05/2024 14:12:03	T
2194	Management Analyst	Germany	Privatization Agency of Kosovo	Circa┬á1460┬áÔé¼ -1741┬áÔé¼	04/05/2024 14:12:03	T
2195	Management Analyst	Germany	Accenture	49.858┬áÔé¼┬á/anno	04/05/2024 14:12:03	T
2196	Management Analyst	Germany	Deutsche Bank	62.801┬áÔé¼┬á/anno	04/05/2024 14:12:03	T
2197	Management Analyst	Germany	Accenture	50.921┬áÔé¼┬á/anno	04/05/2024 14:12:03	T
2198	Management Analyst	Germany	Siemens	1.684┬áÔé¼┬á/mese	04/05/2024 14:12:03	T
2199	Management Analyst	Germany	SunExpress	41.011┬áÔé¼┬á/anno	04/05/2024 14:12:03	T
2200	Management Analyst	Germany	Deutsche Bank	65.591┬áÔé¼┬á/anno	04/05/2024 14:12:03	T
2201	Management Analyst	Germany	Robert Bosch	23.298┬áÔé¼┬á/mese	04/05/2024 14:12:03	T
2202	Management Analyst	Germany	Deutsche Bank	Circa┬á5063┬áÔé¼ -5512┬áÔé¼	04/05/2024 14:12:03	T
2203	Management Analyst	Germany	N26	Circa┬á28.517┬áÔé¼ -40.906┬áÔé¼	04/05/2024 14:12:03	T
2204	Management Analyst	Germany	Marriott International	Circa┬á2544┬áÔé¼ -2801┬áÔé¼	04/05/2024 14:12:03	T
2205	Management Analyst	Germany	Allianz	Circa┬á2862┬áÔé¼ -3137┬áÔé¼	04/05/2024 14:12:03	T
2206	Management Analyst	Germany	360T Trading Networks	Circa┬á52.067┬áÔé¼ -139.824┬áÔé¼	04/05/2024 14:12:03	T
2207	Management Analyst	Germany	Atheneum Partners	Circa┬á769┬áÔé¼ -836┬áÔé¼	04/05/2024 14:12:03	T
2208	Management Analyst	Germany	Siemens	Circa┬á1040┬áÔé¼ -1255┬áÔé¼	04/05/2024 14:12:03	T
2209	Management Analyst	Germany	BMW Group	Circa┬á7┬áÔé¼ -14┬áÔé¼┬áoraria	04/05/2024 14:12:03	T
2210	Management Analyst	Germany	Fraunhofer-Gesellschaft	Circa┬á10┬áÔé¼ -18┬áÔé¼┬áoraria	04/05/2024 14:12:03	T
2211	Management Analyst	Japan	MUFG	Circa┬á6┬áMio┬áJPY -8┬áMio┬áJPY	04/05/2024 14:12:22	T
2212	Management Analyst	Japan	Accenture	5.766.249┬áJPY┬á/anno	04/05/2024 14:12:22	T
2213	Management Analyst	Japan	Nomura Holdings	Circa┬á11┬áMio┬áJPY -16┬áMio┬áJPY	04/05/2024 14:12:22	T
2214	Management Analyst	Japan	Amazon	Circa┬á6┬áMio┬áJPY -7┬áMio┬áJPY	04/05/2024 14:12:22	T
2215	Management Analyst	Japan	Works Applications	Circa┬á3┬áMio┬áJPY -4┬áMio┬áJPY	04/05/2024 14:12:22	T
2216	Management Analyst	Japan	Fast Retailing	Circa┬á9┬áMio┬áJPY -11┬áMio┬áJPY	04/05/2024 14:12:22	T
2217	Management Analyst	Japan	KPMG	Circa┬á6┬áMio┬áJPY -7┬áMio┬áJPY	04/05/2024 14:12:22	T
2218	Management Analyst	Japan	Yahoo Japan	Circa┬á7┬áMio┬áJPY -8┬áMio┬áJPY	04/05/2024 14:12:22	T
2219	Management Analyst	Japan	Nomura Holdings	Circa┬á8┬áMio┬áJPY -9┬áMio┬áJPY	04/05/2024 14:12:22	T
2220	Management Analyst	Japan	Supership	Circa┬á212.661┬áJPY -247.745┬áJPY	04/05/2024 14:12:22	T
2221	Management Analyst	Japan	G.D	Circa┬á7┬áMio┬áJPY -8┬áMio┬áJPY	04/05/2024 14:12:22	T
2222	Management Analyst	Japan	The World Bank	Circa┬á10┬áMio┬áJPY -11┬áMio┬áJPY	04/05/2024 14:12:22	T
2223	Management Analyst	Japan	Hitachi	Circa┬á310.931┬áJPY -357.518┬áJPY	04/05/2024 14:12:22	T
2224	Management Analyst	Japan	IQVIA	Circa┬á7┬áMio┬áJPY -9┬áMio┬áJPY	04/05/2024 14:12:22	T
2225	Management Analyst	United Kingdom	BearingPoint	Circa┬á30.773┬á┬ú -33.338┬á┬ú	04/05/2024 14:13:00	T
2226	Management Analyst	United Kingdom	SSE	Circa┬á23.142┬á┬ú -41.373┬á┬ú	04/05/2024 14:13:00	T
2227	Management Analyst	United Kingdom	Homes England	Circa┬á26.223┬á┬ú -27.990┬á┬ú	04/05/2024 14:13:00	T
2228	Management Analyst	United Kingdom	National Nuclear Laboratory	Circa┬á34.849┬á┬ú -37.864┬á┬ú	04/05/2024 14:13:00	T
2229	Management Analyst	United Kingdom	Aviva	Circa┬á28.126┬á┬ú -35.891┬á┬ú	04/05/2024 14:13:00	T
2230	Management Analyst	United Kingdom	UK Ministry of Defence	Circa┬á30.590┬á┬ú -35.375┬á┬ú	04/05/2024 14:13:00	T
2231	Management Analyst	United Kingdom	East Suffolk and North Essex NHS Foundation Trust	Circa┬á36.092┬á┬ú -42.111┬á┬ú	04/05/2024 14:13:00	T
2232	Management Analyst	United Kingdom	US Air Force	Circa┬á83.768┬á┬ú -97.716┬á┬ú	04/05/2024 14:13:00	T
2233	Management Analyst	United Kingdom	National Grid	Circa┬á25.578┬á┬ú -30.168┬á┬ú	04/05/2024 14:13:00	T
2234	Management Analyst	United Kingdom	Concentrix	Circa┬á2866┬á┬ú -3359┬á┬ú	04/05/2024 14:13:00	T
2235	Management Analyst	United Kingdom	Transport for London	Circa┬á46.657┬á┬ú -53.241┬á┬ú	04/05/2024 14:13:00	T
2236	Management Analyst	United Kingdom	C.K.Group	Circa┬á24┬á┬ú -28┬á┬ú┬áoraria	04/05/2024 14:13:00	T
2237	Management Analyst	United Kingdom	University of Manchester	Circa┬á33.991┬á┬ú -39.669┬á┬ú	04/05/2024 14:13:00	T
2238	Management Analyst	United Kingdom	Oliver James	Circa┬á46.189┬á┬ú -53.654┬á┬ú	04/05/2024 14:13:00	T
2239	Management Analyst	United Kingdom	Blayze Group	Circa┬á45.152┬á┬ú -52.912┬á┬ú	04/05/2024 14:13:00	T
2240	Management Analyst	United Kingdom	McDonald's	Circa┬á23.028┬á┬ú -26.888┬á┬ú	04/05/2024 14:13:00	T
2241	Management Analyst	United Kingdom	Citi	Circa┬á21.196┬á┬ú -24.899┬á┬ú	04/05/2024 14:13:00	T
2242	Management Analyst	United Kingdom	Gama Insurance Agencies	Circa┬á37.451┬á┬ú -44.033┬á┬ú	04/05/2024 14:13:00	T
2243	Management Analyst	United Kingdom	Recovery Focus	Circa┬á23.206┬á┬ú -27.125┬á┬ú	04/05/2024 14:13:00	T
2244	Management Analyst	United Kingdom	King's College London	Circa┬á48.203┬á┬ú -56.076┬á┬ú	04/05/2024 14:13:00	T
2245	Management Analyst	France	Accenture	Circa┬á36.930┬áÔé¼ -43.089┬áÔé¼	04/05/2024 14:13:19	T
2246	Management Analyst	France	Accenture	Circa┬á1314┬áÔé¼ -1579┬áÔé¼	04/05/2024 14:13:19	T
2247	Management Analyst	France	Parfires	Circa┬á36.712┬áÔé¼ -43.883┬áÔé¼	04/05/2024 14:13:19	T
2248	Management Analyst	France	CPG Corporation	Circa┬á20.356┬áÔé¼ -23.980┬áÔé¼	04/05/2024 14:13:19	T
2249	Management Analyst	France	Accenture	42.779┬áÔé¼┬á/anno	04/05/2024 14:13:19	T
2250	Management Analyst	France	Transavia	37.906┬áÔé¼┬á/anno	04/05/2024 14:13:19	T
2251	Management Analyst	France	Accenture	1.300┬áÔé¼┬á/mese	04/05/2024 14:13:19	T
2252	Management Analyst	France	Air France	45.183┬áÔé¼┬á/anno	04/05/2024 14:13:19	T
2253	Management Analyst	France	SNCF	37.753┬áÔé¼┬á/anno	04/05/2024 14:13:19	T
2254	Management Analyst	France	SNCF	924┬áÔé¼┬á/mese	04/05/2024 14:13:19	T
2255	Management Analyst	France	SLB	58.513┬áÔé¼┬á/anno	04/05/2024 14:13:19	T
2256	Management Analyst	France	Soci├®t├® G├®n├®rale	49.667┬áÔé¼┬á/anno	04/05/2024 14:13:19	T
2257	Management Analyst	France	IPSEN	76.933┬áÔé¼┬á/anno	04/05/2024 14:13:19	T
2258	Management Analyst	France	BNP Paribas	38.907┬áÔé¼┬á/anno	04/05/2024 14:13:19	T
2259	Management Analyst	France	Accor	Circa┬á38.558┬áÔé¼ -43.271┬áÔé¼	04/05/2024 14:13:19	T
2260	Management Analyst	France	BlaBlaCar	Circa┬á38.262┬áÔé¼ -45.824┬áÔé¼	04/05/2024 14:13:19	T
2261	Management Analyst	France	Air FranceÔÇôKLM Group	Circa┬á38.325┬áÔé¼ -47.070┬áÔé¼	04/05/2024 14:13:19	T
2262	Management Analyst	France	TUI Group	Circa┬á29.618┬áÔé¼ -32.355┬áÔé¼	04/05/2024 14:13:19	T
2263	Management Analyst	France	OUIBUS	Circa┬á33.854┬áÔé¼ -39.570┬áÔé¼	04/05/2024 14:13:19	T
2264	Management Analyst	France	Amundi	Circa┬á955┬áÔé¼ -1505┬áÔé¼	04/05/2024 14:13:19	T
2265	Management Analyst	Brazil	Accenture	Circa┬á4281┬áBRL -6258┬áBRL	04/05/2024 14:13:38	T
2266	Management Analyst	Brazil	Ambev	Circa┬á169.417┬áBRL -201.423┬áBRL	04/05/2024 14:13:38	T
2267	Management Analyst	Brazil	Unimed	Circa┬á394.292┬áBRL -464.905┬áBRL	04/05/2024 14:13:38	T
2268	Management Analyst	Brazil	Nestl├®	Circa┬á5111┬áBRL -5848┬áBRL	04/05/2024 14:13:38	T
2269	Management Analyst	Brazil	Saint-Gobain	Circa┬á5048┬áBRL -5901┬áBRL	04/05/2024 14:13:38	T
2270	Management Analyst	Brazil	FALCONI	Circa┬á4060┬áBRL -4782┬áBRL	04/05/2024 14:13:38	T
2271	Management Analyst	Brazil	Secretaria da Educa├º├úo do Estado do Paran├í (SEDUC/PR)	Circa┬á5598┬áBRL -6381┬áBRL	04/05/2024 14:13:38	T
2272	Management Analyst	Brazil	Brasilprev Seguros e Previd├¬ncia	Circa┬á7291┬áBRL -8732┬áBRL	04/05/2024 14:13:38	T
2273	Management Analyst	Brazil	Federa├º├úo Cearense de Automobilismo	Circa┬á11.757┬áBRL -13.772┬áBRL	04/05/2024 14:13:38	T
2274	Management Analyst	Brazil	Accenture	6.097┬áBRL┬á/mese	04/05/2024 14:13:38	T
2275	Management Analyst	Brazil	unico	9.473┬áBRL┬á/mese	04/05/2024 14:13:38	T
2276	Management Analyst	Brazil	Nubank	30.460┬áBRL┬á/mese	04/05/2024 14:13:38	T
2277	Management Analyst	Brazil	Accenture	5.100┬áBRL┬á/mese	04/05/2024 14:13:38	T
2278	Management Analyst	Brazil	GOL Linhas A├®reas	6.182┬áBRL┬á/mese	04/05/2024 14:13:38	T
2279	Management Analyst	Brazil	IQVIA	13.553┬áBRL┬á/mese	04/05/2024 14:13:38	T
2280	Management Analyst	Brazil	Avenue Code	25.894┬áBRL┬á/mese	04/05/2024 14:13:38	T
2281	Management Analyst	Brazil	Telef├│nica	3.824┬áBRL┬á/mese	04/05/2024 14:13:38	T
2282	Management Analyst	Brazil	Whirlpool Corporation	4.351┬áBRL┬á/mese	04/05/2024 14:13:38	T
2283	Management Analyst	Brazil	Mercedes-Benz International	4.017┬áBRL┬á/mese	04/05/2024 14:13:38	T
2284	Management Analyst	Brazil	Gartner	26.389┬áBRL┬á/mese	04/05/2024 14:13:38	T
2285	Management Analyst	Italy	Accenture	26.227┬áÔé¼┬á/anno	04/05/2024 14:13:56	T
2286	Management Analyst	Italy	Amazon	Circa┬á25.741┬áÔé¼ -30.362┬áÔé¼	04/05/2024 14:13:56	T
2287	Management Analyst	Italy	Zurich Insurance	Circa┬á31.547┬áÔé¼ -36.824┬áÔé¼	04/05/2024 14:13:56	T
2288	Management Analyst	Italy	Mercedes-Benz International	Circa┬á41.783┬áÔé¼ -48.842┬áÔé¼	04/05/2024 14:13:56	T
2289	Management Analyst	Italy	Accenture	26.274┬áÔé¼┬á/anno	04/05/2024 14:13:56	T
2290	Management Analyst	Italy	Accenture	25.929┬áÔé¼┬á/anno	04/05/2024 14:13:56	T
2291	Management Analyst	Italy	Deloitte	28.866┬áÔé¼┬á/anno	04/05/2024 14:13:56	T
2292	Management Analyst	Italy	Costa Crociere	31.550┬áÔé¼┬á/anno	04/05/2024 14:13:56	T
2293	Management Analyst	Italy	Deloitte	22.355┬áÔé¼┬á/anno	04/05/2024 14:13:56	T
2294	Management Analyst	Italy	Chiomenti Studio Legale	Circa┬á27.891┬áÔé¼ -30.406┬áÔé¼	04/05/2024 14:13:57	T
2295	Management Analyst	Italy	Accenture	Circa┬á644┬áÔé¼ -1107┬áÔé¼	04/05/2024 14:13:57	T
2296	Management Analyst	Italy	Italo	Circa┬á26.805┬áÔé¼ -38.495┬áÔé¼	04/05/2024 14:13:57	T
2297	Management Analyst	Italy	UniCredit Group	Circa┬á20.191┬áÔé¼ -44.134┬áÔé¼	04/05/2024 14:13:57	T
2298	Management Analyst	Italy	Intesa Sanpaolo	Circa┬á24.533┬áÔé¼ -48.477┬áÔé¼	04/05/2024 14:13:57	T
2299	Management Analyst	Italy	Mediobanca	Circa┬á36.093┬áÔé¼ -57.350┬áÔé¼	04/05/2024 14:13:57	T
2300	Management Analyst	Italy	Kl├®pierre	Circa┬á24.499┬áÔé¼ -26.574┬áÔé¼	04/05/2024 14:13:57	T
2301	Management Analyst	Italy	A2A	Circa┬á31.987┬áÔé¼ -45.838┬áÔé¼	04/05/2024 14:13:57	T
2302	Management Analyst	Italy	Accenture	Circa┬á24.044┬áÔé¼ -27.590┬áÔé¼	04/05/2024 14:13:57	T
2303	Management Analyst	Italy	Eni Spa	Circa┬á1814┬áÔé¼ -2452┬áÔé¼	04/05/2024 14:13:57	T
2304	Management Analyst	Italy	Eni Spa	Circa┬á29.749┬áÔé¼ -36.724┬áÔé¼	04/05/2024 14:13:57	T
2305	Lawyer	United States	SelfEmployed.com	134.116┬áUSD┬á/anno	04/05/2024 14:14:17	T
2306	Lawyer	United States	Self Opportunity	121.343┬áUSD┬á/anno	04/05/2024 14:14:17	T
2307	Lawyer	United States	United States Federal Government	112.601┬áUSD┬á/anno	04/05/2024 14:14:17	T
2308	Lawyer	United States	Skadden, Arps, Slate, Meagher & Flom	176.484┬áUSD┬á/anno	04/05/2024 14:14:17	T
2309	Lawyer	United States	LawFirm.com	139.723┬áUSD┬á/anno	04/05/2024 14:14:17	T
2310	Lawyer	United States	Latham & Watkins	279.017┬áUSD┬á/anno	04/05/2024 14:14:17	T
2311	Lawyer	United States	US Department of Justice	112.081┬áUSD┬á/anno	04/05/2024 14:14:17	T
2312	Lawyer	United States	Axiom Law	142.018┬áUSD┬á/anno	04/05/2024 14:14:17	T
2313	Lawyer	United States	Davis Polk	277.724┬áUSD┬á/anno	04/05/2024 14:14:17	T
2314	Lawyer	United States	Lewis Brisbois Bisgaard & Smith	172.553┬áUSD┬á/anno	04/05/2024 14:14:17	T
2315	Lawyer	United States	SelfEmployed.com	157.737┬áUSD┬á/anno	04/05/2024 14:14:17	T
2316	Lawyer	United States	Social Security Administration	106.137┬áUSD┬á/anno	04/05/2024 14:14:17	T
2317	Lawyer	United States	US Army	104.933┬áUSD┬á/anno	04/05/2024 14:14:17	T
2318	Lawyer	United States	GEICO	130.378┬áUSD┬á/anno	04/05/2024 14:14:17	T
2319	Lawyer	United States	Thomas J. Henry Law, PLLC	118.646┬áUSD┬á/anno	04/05/2024 14:14:17	T
2320	Lawyer	United States	IRS	107.239┬áUSD┬á/anno	04/05/2024 14:14:17	T
2321	Lawyer	United States	State of Florida	89.939┬áUSD┬á/anno	04/05/2024 14:14:17	T
2322	Lawyer	United States	Liberty Mutual Insurance	137.624┬áUSD┬á/anno	04/05/2024 14:14:17	T
2323	Lawyer	United States	LawFirm.com	159.913┬áUSD┬á/anno	04/05/2024 14:14:17	T
2324	Lawyer	United States	Morgan and Morgan	158.464┬áUSD┬á/anno	04/05/2024 14:14:17	T
2325	Lawyer	China	Zhonglun Law Firm	Circa┬á17.429┬áCN┬Ñ -25.924┬áCN┬Ñ	04/05/2024 14:14:36	T
2326	Lawyer	China	King & Wood Mallesons	Circa┬á9024┬áCN┬Ñ -10.537┬áCN┬Ñ	04/05/2024 14:14:36	T
2327	Lawyer	China	Dentons	Circa┬á280.147┬áCN┬Ñ -325.916┬áCN┬Ñ	04/05/2024 14:14:36	T
2328	Lawyer	China	Allbright Law Offices	Circa┬á117.674┬áCN┬Ñ -137.847┬áCN┬Ñ	04/05/2024 14:14:36	T
2329	Lawyer	China	Fangda Partners	Circa┬á33.118┬áCN┬Ñ -38.977┬áCN┬Ñ	04/05/2024 14:14:36	T
2330	Lawyer	China	Han Kun Law Offices	Circa┬á28.100┬áCN┬Ñ -33.375┬áCN┬Ñ	04/05/2024 14:14:36	T
2331	Lawyer	China	Global Law Office	Circa┬á27.332┬áCN┬Ñ -32.125┬áCN┬Ñ	04/05/2024 14:14:37	T
2332	Lawyer	China	Hogan Lovells	Circa┬á4044┬áCN┬Ñ -4734┬áCN┬Ñ	04/05/2024 14:14:37	T
2333	Lawyer	China	Guangzhou University	Circa┬á16.539┬áCN┬Ñ -19.700┬áCN┬Ñ	04/05/2024 14:14:37	T
2334	Lawyer	China	Tian Yuan Law Firm	Circa┬á13.991┬áCN┬Ñ -16.447┬áCN┬Ñ	04/05/2024 14:14:37	T
2335	Lawyer	China	Beijing Kangda Law Firm	Circa┬á9250┬áCN┬Ñ -10.721┬áCN┬Ñ	04/05/2024 14:14:37	T
2336	Lawyer	China	Dacheng Law Offices	Circa┬á127.703┬áCN┬Ñ -151.601┬áCN┬Ñ	04/05/2024 14:14:37	T
2337	Lawyer	China	Advance China IP LAW Office	Circa┬á22.055┬áCN┬Ñ -26.161┬áCN┬Ñ	04/05/2024 14:14:37	T
2338	Lawyer	China	Guantao Law Firm	Circa┬á13.815┬áCN┬Ñ -16.255┬áCN┬Ñ	04/05/2024 14:14:37	T
2339	Lawyer	China	Duan And Duan Law Firm	Circa┬á18.694┬áCN┬Ñ -21.589┬áCN┬Ñ	04/05/2024 14:14:37	T
2340	Lawyer	China	V&T Law Firm	Circa┬á175.139┬áCN┬Ñ -206.867┬áCN┬Ñ	04/05/2024 14:14:37	T
2341	Lawyer	China	LawFirm.com	Circa┬á370.529┬áCN┬Ñ -434.584┬áCN┬Ñ	04/05/2024 14:14:37	T
2342	Lawyer	China	Longan Law Firm	Circa┬á5586┬áCN┬Ñ -6537┬áCN┬Ñ	04/05/2024 14:14:37	T
2343	Lawyer	China	Filong Law Firm	Circa┬á109.367┬áCN┬Ñ -131.022┬áCN┬Ñ	04/05/2024 14:14:37	T
2344	Lawyer	China	KangQiao Law Firm	Circa┬á9072┬áCN┬Ñ -10.623┬áCN┬Ñ	04/05/2024 14:14:37	T
2345	Lawyer	Japan	Mitsubishi	Circa┬á19┬áMio┬áJPY -22┬áMio┬áJPY	04/05/2024 14:15:13	T
2346	Lawyer	Japan	Fast Retailing	Circa┬á10┬áMio┬áJPY -12┬áMio┬áJPY	04/05/2024 14:15:13	T
2347	Lawyer	Japan	Baker McKenzie	Circa┬á20┬áMio┬áJPY -24┬áMio┬áJPY	04/05/2024 14:15:13	T
2348	Lawyer	Japan	Daiwa	Circa┬á2┬áMio┬áJPY -2┬áMio┬áJPY	04/05/2024 14:15:13	T
2349	Lawyer	Japan	MakeMyTrip	Circa┬á9┬áMio┬áJPY -11┬áMio┬áJPY	04/05/2024 14:15:13	T
2350	Lawyer	Japan	Target	Circa┬á92.379┬áJPY -107.895┬áJPY	04/05/2024 14:15:13	T
2351	Lawyer	Japan	Kao Corporation	Circa┬á6┬áMio┬áJPY -6┬áMio┬áJPY	04/05/2024 14:15:13	T
2352	Lawyer	Japan	Nishimura ´╝å Asahi	Circa┬á14┬áMio┬áJPY -17┬áMio┬áJPY	04/05/2024 14:15:13	T
2353	Lawyer	Japan	Nagashima Ohno & Tsunematsu	Circa┬á16┬áMio┬áJPY -19┬áMio┬áJPY	04/05/2024 14:15:13	T
2354	Lawyer	Japan	Baker McKenzie	Circa┬á2┬áMio┬áJPY -2┬áMio┬áJPY	04/05/2024 14:15:13	T
2355	Lawyer	Japan	LegalForce	Circa┬á6┬áMio┬áJPY -7┬áMio┬áJPY	04/05/2024 14:15:13	T
2356	Lawyer	Japan	Anderson Mori & Tomotsune	Circa┬á9┬áMio┬áJPY -11┬áMio┬áJPY	04/05/2024 14:15:13	T
2357	Lawyer	Japan	Hogan Lovells	Circa┬á18┬áMio┬áJPY -21┬áMio┬áJPY	04/05/2024 14:15:14	T
2358	Lawyer	Japan	Nagashima Ohno & Tsunematsu	Circa┬á7┬áMio┬áJPY -8┬áMio┬áJPY	04/05/2024 14:15:14	T
2359	Lawyer	Japan	Nagashima Ohno & Tsunematsu	Circa┬á17┬áMio┬áJPY -20┬áMio┬áJPY	04/05/2024 14:15:14	T
2360	Lawyer	Japan	Sakai International Patent Office	Circa┬á5┬áMio┬áJPY -6┬áMio┬áJPY	04/05/2024 14:15:14	T
2361	Lawyer	Japan	Tesis	Circa┬á16┬áMio┬áJPY -18┬áMio┬áJPY	04/05/2024 14:15:14	T
2362	Lawyer	Japan	Nagashima Ohno & Tsunematsu	Circa┬á14┬áMio┬áJPY -16┬áMio┬áJPY	04/05/2024 14:15:14	T
2363	Lawyer	India	State of Indiana	78.010┬áUSD┬á/anno	04/05/2024 14:15:32	T
2364	Lawyer	India	Marion County Public Defender	87.015┬áUSD┬á/anno	04/05/2024 14:15:32	T
2365	Lawyer	India	Marion County Prosecutor's Office	103.869┬áUSD┬á/anno	04/05/2024 14:15:32	T
2366	Lawyer	India	Indiana Attorney General	77.775┬áUSD┬á/anno	04/05/2024 14:15:32	T
2367	Lawyer	India	Frost Brown Todd	149.937┬áUSD┬á/anno	04/05/2024 14:15:32	T
2368	Lawyer	India	SelfEmployed.com	125.646┬áUSD┬á/anno	04/05/2024 14:15:32	T
2369	Lawyer	India	Simon Property Group	157.263┬áUSD┬á/anno	04/05/2024 14:15:32	T
2370	Lawyer	India	Taft	136.796┬áUSD┬á/anno	04/05/2024 14:15:33	T
2371	Lawyer	India	Faegre Drinker	154.955┬áUSD┬á/anno	04/05/2024 14:15:33	T
2372	Lawyer	India	Barnes & Thornburg	136.295┬áUSD┬á/anno	04/05/2024 14:15:33	T
2373	Lawyer	India	Scopelitis, Garvin, Light, Hanson & Feary	135.268┬áUSD┬á/anno	04/05/2024 14:15:33	T
2374	Lawyer	India	Indiana University	103.583┬áUSD┬á/anno	04/05/2024 14:15:33	T
2375	Lawyer	India	Liberty Mutual Insurance	125.626┬áUSD┬á/anno	04/05/2024 14:15:33	T
2376	Lawyer	India	Ogletree Deakins Nash Smoak & Stewart P.C.	117.226┬áUSD┬á/anno	04/05/2024 14:15:33	T
2377	Lawyer	India	GEICO	117.758┬áUSD┬á/anno	04/05/2024 14:15:33	T
2378	Lawyer	India	Marion County Public Defender Agency	88.543┬áUSD┬á/anno	04/05/2024 14:15:33	T
2379	Lawyer	India	Katz Korin Cunningham	125.717┬áUSD┬á/anno	04/05/2024 14:15:33	T
2380	Lawyer	India	Insight Global	64┬áUSD┬á/ora	04/05/2024 14:15:33	T
2381	Lawyer	India	Indiana Legal Services, Inc.	104.043┬áUSD┬á/anno	04/05/2024 14:15:33	T
2382	Lawyer	India	Faegre Drinker	161.109┬áUSD┬á/anno	04/05/2024 14:15:33	T
2383	Lawyer	United Kingdom	Government Legal Department	52.852┬á┬ú┬á/anno	04/05/2024 14:15:53	T
2384	Lawyer	United Kingdom	HM Revenue and Customs	58.666┬á┬ú┬á/anno	04/05/2024 14:15:53	T
2385	Lawyer	United Kingdom	Clifford Chance	116.896┬á┬ú┬á/anno	04/05/2024 14:15:53	T
2386	Lawyer	United Kingdom	Linklaters	116.240┬á┬ú┬á/anno	04/05/2024 14:15:53	T
2387	Lawyer	United Kingdom	Axiom Law	86.259┬á┬ú┬á/anno	04/05/2024 14:15:53	T
2388	Lawyer	United Kingdom	Eversheds Sutherland	70.433┬á┬ú┬á/anno	04/05/2024 14:15:53	T
2389	Lawyer	United Kingdom	Nursing and Midwifery Council	55.988┬á┬ú┬á/anno	04/05/2024 14:15:53	T
2390	Lawyer	United Kingdom	Chadwick Nott	60.793┬á┬ú┬á/anno	04/05/2024 14:15:53	T
2391	Lawyer	United Kingdom	Crown Prosecution Service	54.252┬á┬ú┬á/anno	04/05/2024 14:15:53	T
2392	Lawyer	United Kingdom	BT Group	66.464┬á┬ú┬á/anno	04/05/2024 14:15:53	T
2393	Lawyer	United Kingdom	LawFirm.com	79.986┬á┬ú┬á/anno	04/05/2024 14:15:53	T
2394	Lawyer	United Kingdom	Ashurst	82.748┬á┬ú┬á/anno	04/05/2024 14:15:53	T
2395	Lawyer	United Kingdom	Pinsent Masons	72.325┬á┬ú┬á/anno	04/05/2024 14:15:53	T
2396	Lawyer	United Kingdom	Government Legal Department	52.239┬á┬ú┬á/anno	04/05/2024 14:15:53	T
2397	Lawyer	United Kingdom	SelfEmployed.com	104.144┬á┬ú┬á/anno	04/05/2024 14:15:53	T
2398	Lawyer	United Kingdom	Financial Conduct Authority	78.615┬á┬ú┬á/anno	04/05/2024 14:15:53	T
2399	Lawyer	United Kingdom	Government Legal Department	51.472┬á┬ú┬á/anno	04/05/2024 14:15:53	T
2400	Lawyer	United Kingdom	Simply Conveyancing	44.605┬á┬ú┬á/anno	04/05/2024 14:15:53	T
2401	Lawyer	United Kingdom	The Pensions Regulator	93.186┬á┬ú┬á/anno	04/05/2024 14:15:53	T
2402	Lawyer	United Kingdom	Douglas Scott Legal Recruitment	44.388┬á┬ú┬á/anno	04/05/2024 14:15:53	T
2403	Lawyer	France	LawFirm.com	41.888┬áÔé¼┬á/anno	04/05/2024 14:16:11	T
2404	Lawyer	France	EY	Circa┬á46.224┬áÔé¼ -63.180┬áÔé¼	04/05/2024 14:16:11	T
2405	Lawyer	France	TotalEnergies	Circa┬á2502┬áÔé¼ -8649┬áÔé¼	04/05/2024 14:16:11	T
2406	Lawyer	France	Allianz	Circa┬á2890┬áÔé¼ -3213┬áÔé¼	04/05/2024 14:16:11	T
2407	Lawyer	France	Council of Europe	Circa┬á3842┬áÔé¼ -5132┬áÔé¼	04/05/2024 14:16:11	T
2408	Lawyer	France	Clifford Chance	Circa┬á191.577┬áÔé¼ -232.432┬áÔé¼	04/05/2024 14:16:11	T
2409	Lawyer	France	Clifford Chance	Circa┬á2514┬áÔé¼ -3493┬áÔé¼	04/05/2024 14:16:11	T
2410	Lawyer	France	Eversheds Sutherland	Circa┬á71.539┬áÔé¼ -77.265┬áÔé¼	04/05/2024 14:16:11	T
2411	Lawyer	France	LawFirm.com	Circa┬á3366┬áÔé¼ -3929┬áÔé¼	04/05/2024 14:16:11	T
2412	Lawyer	France	BNP Paribas	Circa┬á36.861┬áÔé¼ -43.313┬áÔé¼	04/05/2024 14:16:11	T
2413	Lawyer	France	Accenture	Circa┬á36.822┬áÔé¼ -43.230┬áÔé¼	04/05/2024 14:16:11	T
2414	Lawyer	France	Natixis	Circa┬á23.223┬áÔé¼ -27.269┬áÔé¼	04/05/2024 14:16:12	T
2415	Lawyer	France	Ville de Paris	Circa┬á1481┬áÔé¼ -1735┬áÔé¼	04/05/2024 14:16:12	T
2416	Lawyer	France	Freelance	Circa┬á57.789┬áÔé¼ -68.245┬áÔé¼	04/05/2024 14:16:12	T
2417	Lawyer	France	Jellysmack	Circa┬á33.160┬áÔé¼ -38.827┬áÔé¼	04/05/2024 14:16:12	T
2418	Lawyer	France	Dell Technologies	Circa┬á91.228┬áÔé¼ -107.937┬áÔé¼	04/05/2024 14:16:12	T
2419	Lawyer	France	AXA Investment Managers	Circa┬á1818┬áÔé¼ -2128┬áÔé¼	04/05/2024 14:16:12	T
2420	Lawyer	France	Urssaf	Circa┬á2321┬áÔé¼ -2707┬áÔé¼	04/05/2024 14:16:12	T
2421	Lawyer	France	Quadient	Circa┬á95.579┬áÔé¼ -115.164┬áÔé¼	04/05/2024 14:16:12	T
2422	Lawyer	France	EssilorLuxottica	Circa┬á1106┬áÔé¼ -1300┬áÔé¼	04/05/2024 14:16:12	T
2423	Lawyer	Brazil	Mattos Filho	136.610┬áBRL┬á/mese	04/05/2024 14:16:30	T
2424	Lawyer	Brazil	Ita├║ Unibanco (Ita├║ BBA e Rede)	9.617┬áBRL┬á/mese	04/05/2024 14:16:30	T
2425	Lawyer	Brazil	Machado Meyer	13.120┬áBRL┬á/mese	04/05/2024 14:16:30	T
2426	Lawyer	Brazil	Escrit├│rio de Advocacia	3.224┬áBRL┬á/mese	04/05/2024 14:16:30	T
2427	Lawyer	Brazil	Azevedo Sette Advogados	2.649┬áBRL┬á/mese	04/05/2024 14:16:30	T
2428	Lawyer	Brazil	SelfEmployed.com	2.362┬áBRL┬á/mese	04/05/2024 14:16:30	T
2429	Lawyer	Brazil	Inglez, Werneck, Ramos, Cury e Fran├ºolin Advogados	9.389┬áBRL┬á/mese	04/05/2024 14:16:30	T
2430	Lawyer	Brazil	Veirano Advogados	Circa┬á11.564┬áBRL -40.741┬áBRL	04/05/2024 14:16:30	T
2431	Lawyer	Brazil	Pinheiro Neto Advogados	Circa┬á2412┬áBRL -5739┬áBRL	04/05/2024 14:16:30	T
2432	Lawyer	Brazil	Souto Correa Advogados	Circa┬á7831┬áBRL -9392┬áBRL	04/05/2024 14:16:30	T
2433	Lawyer	Brazil	Stone	Circa┬á159┬áBRL -8280┬áBRL	04/05/2024 14:16:30	T
2434	Lawyer	Brazil	SelfEmployed.com	Circa┬á974┬áBRL -3221┬áBRL	04/05/2024 14:16:30	T
2435	Lawyer	Brazil	BTG Pactual	Circa┬á12.222┬áBRL -38.356┬áBRL	04/05/2024 14:16:31	T
2436	Lawyer	Brazil	Atento (Brazil)	Circa┬á3054┬áBRL -3299┬áBRL	04/05/2024 14:16:31	T
2437	Lawyer	Brazil	Banco Nacional de Desenvolvimento Econ├┤mico e Social	Circa┬á19.368┬áBRL -31.051┬áBRL	04/05/2024 14:16:31	T
2438	Lawyer	Brazil	StoccheForbes Advogados	Circa┬á5259┬áBRL -9720┬áBRL	04/05/2024 14:16:31	T
2439	Lawyer	Brazil	OI SA	Circa┬á3734┬áBRL -4351┬áBRL	04/05/2024 14:16:31	T
2440	Lawyer	Brazil	UnitedHealth Group	Circa┬á43.477┬áBRL -50.202┬áBRL	04/05/2024 14:16:31	T
2441	Lawyer	Brazil	Sutti Associates	Circa┬á4892┬áBRL -5661┬áBRL	04/05/2024 14:16:31	T
2442	Lawyer	Brazil	Vivo (Telef├┤nica Brasil)	Circa┬á28.048┬áBRL -32.537┬áBRL	04/05/2024 14:16:31	T
2443	Lawyer	Italy	DLA Piper	56.835┬áÔé¼┬á/anno	04/05/2024 14:16:50	T
2444	Lawyer	Italy	Studio Legale Mariani Piccotti Setteposte Paoli Filena Tarara	53.499┬áÔé¼┬á/anno	04/05/2024 14:16:50	T
2445	Lawyer	Italy	BonelliErede	57.525┬áÔé¼┬á/anno	04/05/2024 14:16:50	T
2446	Lawyer	Italy	Deloitte	Circa┬á19.166┬áÔé¼ -47.267┬áÔé¼	04/05/2024 14:16:50	T
2447	Lawyer	Italy	EY	Circa┬á27.118┬áÔé¼ -52.830┬áÔé¼	04/05/2024 14:16:50	T
2448	Lawyer	Italy	EY	Circa┬á26.833┬áÔé¼ -41.261┬áÔé¼	04/05/2024 14:16:50	T
2449	Lawyer	Italy	IBM	Circa┬á57.072┬áÔé¼ -67.493┬áÔé¼	04/05/2024 14:16:50	T
2450	Lawyer	Italy	NCTM Studio Legale Associato	Circa┬á41.038┬áÔé¼ -53.520┬áÔé¼	04/05/2024 14:16:50	T
2451	Lawyer	Italy	Studio Legale	Circa┬á710┬áÔé¼ -1242┬áÔé¼	04/05/2024 14:16:50	T
2452	Lawyer	Italy	DLA Piper	Circa┬á61.756┬áÔé¼ -104.521┬áÔé¼	04/05/2024 14:16:50	T
2453	Lawyer	Italy	Pirola Pennuto Zei & Associati	Circa┬á23.417┬áÔé¼ -44.242┬áÔé¼	04/05/2024 14:16:50	T
2454	Lawyer	Italy	Fieldfisher	Circa┬á46.107┬áÔé¼ -72.979┬áÔé¼	04/05/2024 14:16:50	T
2455	Lawyer	Italy	Cleary Gottlieb Steen & Hamilton	Circa┬á42.795┬áÔé¼ -50.492┬áÔé¼	04/05/2024 14:16:50	T
2456	Lawyer	Italy	Accenture	Circa┬á89.588┬áÔé¼ -105.545┬áÔé¼	04/05/2024 14:16:50	T
2457	Lawyer	Italy	Deloitte	Circa┬á1831┬áÔé¼ -2168┬áÔé¼	04/05/2024 14:16:50	T
2458	Lawyer	Italy	PwC	Circa┬á31.935┬áÔé¼ -37.916┬áÔé¼	04/05/2024 14:16:50	T
2459	Lawyer	Italy	Amazon	Circa┬á20.448┬áÔé¼ -24.016┬áÔé¼	04/05/2024 14:16:50	T
2460	Lawyer	Italy	KPMG	Circa┬á3713┬áÔé¼ -4353┬áÔé¼	04/05/2024 14:16:50	T
2461	Lawyer	Italy	Intesa Sanpaolo	Circa┬á38.657┬áÔé¼ -46.336┬áÔé¼	04/05/2024 14:16:50	T
2462	Lawyer	Italy	AlmavivA	Circa┬á55.140┬áÔé¼ -64.290┬áÔé¼	04/05/2024 14:16:50	T
2463	Web Developer	China	Baidu	39.333┬áCN┬Ñ┬á/mese	04/05/2024 14:17:27	T
2464	Web Developer	China	Thoughtworks	222.722┬áCN┬Ñ┬á/anno	04/05/2024 14:17:27	T
2465	Web Developer	China	Meituan	Circa┬á44.415┬áCN┬Ñ -419.508┬áCN┬Ñ	04/05/2024 14:17:27	T
2466	Web Developer	China	Douban	Circa┬á9672┬áCN┬Ñ -15.530┬áCN┬Ñ	04/05/2024 14:17:27	T
2467	Web Developer	China	Tencent	Circa┬á6477┬áCN┬Ñ -7626┬áCN┬Ñ	04/05/2024 14:17:27	T
2468	Web Developer	China	ByteDance	Circa┬á9237┬áCN┬Ñ -10.888┬áCN┬Ñ	04/05/2024 14:17:27	T
2469	Web Developer	China	ByteDance	Circa┬á27.262┬áCN┬Ñ -32.464┬áCN┬Ñ	04/05/2024 14:17:27	T
2470	Web Developer	China	Alibaba Group	Circa┬á375.112┬áCN┬Ñ -437.859┬áCN┬Ñ	04/05/2024 14:17:27	T
2471	Web Developer	China	Alibaba Group	Circa┬á471.595┬áCN┬Ñ -551.342┬áCN┬Ñ	04/05/2024 14:17:27	T
2472	Web Developer	China	SAP	Circa┬á9210┬áCN┬Ñ -10.967┬áCN┬Ñ	04/05/2024 14:17:27	T
2473	Web Developer	China	Nokia	Circa┬á9238┬áCN┬Ñ -10.828┬áCN┬Ñ	04/05/2024 14:17:27	T
2474	Web Developer	China	Ericsson-Worldwide	Circa┬á209.217┬áCN┬Ñ -250.104┬áCN┬Ñ	04/05/2024 14:17:27	T
2475	Web Developer	China	New Oriental	Circa┬á46.938┬áCN┬Ñ -54.534┬áCN┬Ñ	04/05/2024 14:17:27	T
2476	Web Developer	China	Bank of China	Circa┬á9236┬áCN┬Ñ -10.787┬áCN┬Ñ	04/05/2024 14:17:27	T
2477	Web Developer	China	Lenovo	Circa┬á12┬áCN┬Ñ -13┬áCN┬Ñ┬áoraria	04/05/2024 14:17:27	T
2478	Web Developer	China	Oracle	Circa┬á147.987┬áCN┬Ñ -173.680┬áCN┬Ñ	04/05/2024 14:17:27	T
2479	Web Developer	China	NetEase.com	Circa┬á141.646┬áCN┬Ñ -167.047┬áCN┬Ñ	04/05/2024 14:17:27	T
2480	Web Developer	China	Citi	Circa┬á21.157┬áCN┬Ñ -24.931┬áCN┬Ñ	04/05/2024 14:17:27	T
2481	Web Developer	China	Ping An Insurance	Circa┬á10.028┬áCN┬Ñ -11.545┬áCN┬Ñ	04/05/2024 14:17:27	T
2482	Web Developer	China	eBay	Circa┬á90.440┬áCN┬Ñ -106.037┬áCN┬Ñ	04/05/2024 14:17:27	T
2483	Web Developer	Germany	Freelancer	51.596┬áÔé¼┬á/anno	04/05/2024 14:17:46	T
2484	Web Developer	Germany	Accenture	46.153┬áÔé¼┬á/anno	04/05/2024 14:17:46	T
2485	Web Developer	Germany	CHECK24	47.034┬áÔé¼┬á/anno	04/05/2024 14:17:46	T
2486	Web Developer	Germany	LILLYDOO GmbH	54.700┬áÔé¼┬á/anno	04/05/2024 14:17:46	T
2487	Web Developer	Germany	Jung von Matt	49.667┬áÔé¼┬á/anno	04/05/2024 14:17:46	T
2488	Web Developer	Germany	HaCon	53.739┬áÔé¼┬á/anno	04/05/2024 14:17:46	T
2489	Web Developer	Germany	AKQA	45.333┬áÔé¼┬á/anno	04/05/2024 14:17:46	T
2490	Web Developer	Germany	AUTO1 Group	47.667┬áÔé¼┬á/anno	04/05/2024 14:17:46	T
2491	Web Developer	Germany	Zalando	61.477┬áÔé¼┬á/anno	04/05/2024 14:17:46	T
2492	Web Developer	Germany	Internetstores	60.081┬áÔé¼┬á/anno	04/05/2024 14:17:46	T
2493	Web Developer	Germany	unitedprint.com	38.624┬áÔé¼┬á/anno	04/05/2024 14:17:47	T
2494	Web Developer	Germany	SAP	Circa┬á41.028┬áÔé¼ -76.600┬áÔé¼	04/05/2024 14:17:47	T
2495	Web Developer	Germany	WM Gruppe	Circa┬á72.242┬áÔé¼ -84.581┬áÔé¼	04/05/2024 14:17:47	T
2496	Web Developer	Germany	Crytek	Circa┬á3336┬áÔé¼ -4262┬áÔé¼	04/05/2024 14:17:47	T
2497	Web Developer	Germany	medicalvision	Circa┬á3081┬áÔé¼ -4456┬áÔé¼	04/05/2024 14:17:47	T
2498	Web Developer	Germany	kuehlhaus	Circa┬á38.672┬áÔé¼ -51.416┬áÔé¼	04/05/2024 14:17:47	T
2499	Web Developer	Germany	onOffice GmbH	Circa┬á2668┬áÔé¼ -3546┬áÔé¼	04/05/2024 14:17:47	T
2500	Web Developer	Germany	EY	Circa┬á42.855┬áÔé¼ -50.201┬áÔé¼	04/05/2024 14:17:47	T
2501	Web Developer	Germany	EMBL	Circa┬á3081┬áÔé¼ -4112┬áÔé¼	04/05/2024 14:17:47	T
2502	Web Developer	Germany	Duplexmedia	Circa┬á2916┬áÔé¼ -4111┬áÔé¼	04/05/2024 14:17:47	T
2503	Web Developer	Japan	Rakuten	3.808.401┬áJPY┬á/anno	04/05/2024 14:18:06	T
2504	Web Developer	Japan	Freelancer	7.800.000┬áJPY┬á/anno	04/05/2024 14:18:06	T
2505	Web Developer	Japan	T-Mark	4.450.000┬áJPY┬á/anno	04/05/2024 14:18:06	T
2506	Web Developer	Japan	Hikari Tsushin	Circa┬á271.425┬áJPY -435.404┬áJPY	04/05/2024 14:18:06	T
2507	Web Developer	Japan	Freelance	Circa┬á318.277┬áJPY -725.396┬áJPY	04/05/2024 14:18:06	T
2508	Web Developer	Japan	Raksul	Circa┬á383.300┬áJPY -432.046┬áJPY	04/05/2024 14:18:06	T
2509	Web Developer	Japan	Modis	Circa┬á356.432┬áJPY -397.475┬áJPY	04/05/2024 14:18:06	T
2510	Web Developer	Japan	Soliton Systems	Circa┬á271.421┬áJPY -390.990┬áJPY	04/05/2024 14:18:06	T
2511	Web Developer	Japan	EBA (Japan)	Circa┬á3┬áMio┬áJPY -6┬áMio┬áJPY	04/05/2024 14:18:06	T
2512	Web Developer	Japan	Rakuten	Circa┬á6┬áMio┬áJPY -6┬áMio┬áJPY	04/05/2024 14:18:06	T
2513	Web Developer	Japan	Sony	Circa┬á297.593┬áJPY -349.448┬áJPY	04/05/2024 14:18:06	T
2514	Web Developer	Japan	Yahoo Japan	Circa┬á276.290┬áJPY -325.233┬áJPY	04/05/2024 14:18:06	T
2515	Web Developer	Japan	Amazon Web Services	Circa┬á465.563┬áJPY -547.544┬áJPY	04/05/2024 14:18:06	T
2516	Web Developer	Japan	Recruit Holdings	Circa┬á9┬áMio┬áJPY -11┬áMio┬áJPY	04/05/2024 14:18:06	T
2517	Web Developer	Japan	Human Resocia	Circa┬á253.575┬áJPY -300.723┬áJPY	04/05/2024 14:18:06	T
2518	Web Developer	Japan	Money Forward	Circa┬á5┬áMio┬áJPY -6┬áMio┬áJPY	04/05/2024 14:18:06	T
2519	Web Developer	Japan	RGF Professional Recruitment Japan	Circa┬á6┬áMio┬áJPY -8┬áMio┬áJPY	04/05/2024 14:18:06	T
2520	Web Developer	Japan	Recruit (Japan)	Circa┬á7┬áMio┬áJPY -9┬áMio┬áJPY	04/05/2024 14:18:06	T
2521	Web Developer	Japan	NTT Communications	Circa┬á5┬áMio┬áJPY -5┬áMio┬áJPY	04/05/2024 14:18:06	T
2522	Web Developer	Japan	NOMURA SECURITIES	Circa┬á6┬áMio┬áJPY -7┬áMio┬áJPY	04/05/2024 14:18:06	T
2523	Web Developer	India	Tata Consultancy Services	81.300┬áUSD┬á/anno	04/05/2024 14:18:26	T
2524	Web Developer	India	Indiana Farm Bureau Insurance	92.082┬áUSD┬á/anno	04/05/2024 14:18:26	T
2525	Web Developer	India	Herff Jones	78.421┬áUSD┬á/anno	04/05/2024 14:18:26	T
2526	Web Developer	India	TrendyMinds	67.891┬áUSD┬á/anno	04/05/2024 14:18:26	T
2527	Web Developer	India	Matchbook Creative	64.980┬áUSD┬á/anno	04/05/2024 14:18:26	T
2528	Web Developer	India	IUPUI	30┬áUSD┬á/ora	04/05/2024 14:18:26	T
2529	Web Developer	India	Indiana University	63.938┬áUSD┬á/anno	04/05/2024 14:18:26	T
2530	Web Developer	India	Butler University	64.571┬áUSD┬á/anno	04/05/2024 14:18:26	T
2531	Web Developer	India	WebLink International	72.834┬áUSD┬á/anno	04/05/2024 14:18:26	T
2532	Web Developer	India	Lodge	59.145┬áUSD┬á/anno	04/05/2024 14:18:26	T
2533	Web Developer	India	Freelancer	83.315┬áUSD┬á/anno	04/05/2024 14:18:26	T
2534	Web Developer	India	Newcore Technology Group	80.584┬áUSD┬á/anno	04/05/2024 14:18:26	T
2535	Web Developer	India	Sharpen	66.844┬áUSD┬á/anno	04/05/2024 14:18:26	T
2536	Web Developer	India	Willow Marketing	66.920┬áUSD┬á/anno	04/05/2024 14:18:26	T
2537	Web Developer	India	Crowe LLP	97.925┬áUSD┬á/anno	04/05/2024 14:18:26	T
2538	Web Developer	India	Ithbat Development	77.216┬áUSD┬á/anno	04/05/2024 14:18:26	T
2539	Web Developer	India	Walker Information	83.191┬áUSD┬á/anno	04/05/2024 14:18:26	T
2540	Web Developer	India	Pinnacle Solutions	34┬áUSD┬á/ora	04/05/2024 14:18:26	T
2541	Web Developer	India	CMG Worldwide	72.440┬áUSD┬á/anno	04/05/2024 14:18:26	T
2542	Web Developer	India	Ascensus	100.280┬áUSD┬á/anno	04/05/2024 14:18:26	T
2543	Web Developer	United Kingdom	MTC Media	27.733┬á┬ú┬á/anno	04/05/2024 14:18:46	T
2544	Web Developer	United Kingdom	Google	69.231┬á┬ú┬á/anno	04/05/2024 14:18:46	T
2545	Web Developer	United Kingdom	Visualsoft	27.889┬á┬ú┬á/anno	04/05/2024 14:18:46	T
2546	Web Developer	United Kingdom	BBC	 xx.xxx┬á┬ú┬á/anno	04/05/2024 14:18:46	T
2547	Web Developer	United Kingdom	Equator	 xx.xxx┬á┬ú┬á/anno	04/05/2024 14:18:46	T
2548	Web Developer	United Kingdom	Twinkl Educational Publishing	 xx.xxx┬á┬ú┬á/anno	04/05/2024 14:18:46	T
2549	Web Developer	United Kingdom	Freelancer	 xx.xxx┬á┬ú┬á/anno	04/05/2024 14:18:46	T
2550	Web Developer	United Kingdom	Oscar Recruit	 xx.xxx┬á┬ú┬á/anno	04/05/2024 14:18:46	T
2551	Web Developer	United Kingdom	Holiday Extras	 xx.xxx┬á┬ú┬á/anno	04/05/2024 14:18:46	T
2552	Web Developer	United Kingdom	Sky	 xx.xxx┬á┬ú┬á/anno	04/05/2024 14:18:46	T
2553	Web Developer	United Kingdom	Xanda	 xx.xxx┬á┬ú┬á/anno	04/05/2024 14:18:46	T
2554	Web Developer	United Kingdom	SelfEmployed.com	 xx.xxx┬á┬ú┬á/anno	04/05/2024 14:18:46	T
2555	Web Developer	United Kingdom	Amazon	 xx.xxx┬á┬ú┬á/anno	04/05/2024 14:18:46	T
2556	Web Developer	United Kingdom	Opus Recruitment	 xx.xxx┬á┬ú┬á/anno	04/05/2024 14:18:46	T
2557	Web Developer	United Kingdom	HM Revenue and Customs	 xx.xxx┬á┬ú┬á/anno	04/05/2024 14:18:46	T
2558	Web Developer	United Kingdom	eRecruiter Nigeria	 xx.xxx┬á┬ú┬á/anno	04/05/2024 14:18:46	T
2559	Web Developer	United Kingdom	NatWest Group	 xx.xxx┬á┬ú┬á/anno	04/05/2024 14:18:46	T
2560	Web Developer	United Kingdom	NHS	 xx.xxx┬á┬ú┬á/anno	04/05/2024 14:18:46	T
2561	Web Developer	United Kingdom	Universal Web Design	 x.xxx┬á┬ú┬á/mese	04/05/2024 14:18:46	T
2562	Web Developer	United Kingdom	SelfEmployed.com	 xx.xxx┬á┬ú┬á/anno	04/05/2024 14:18:46	T
2563	Web Developer	France	Theodo	42.500┬áÔé¼┬á/anno	04/05/2024 14:19:05	T
2564	Web Developer	France	Sopra Steria	32.000┬áÔé¼┬á/anno	04/05/2024 14:19:05	T
2565	Web Developer	France	Klaxoon	241.300┬áÔé¼┬á/anno	04/05/2024 14:19:05	T
2566	Web Developer	France	VISEO	41.880┬áÔé¼┬á/anno	04/05/2024 14:19:05	T
2567	Web Developer	France	Capgemini	34.381┬áÔé¼┬á/anno	04/05/2024 14:19:05	T
2568	Web Developer	France	ALTEN	34.378┬áÔé¼┬á/anno	04/05/2024 14:19:05	T
2569	Web Developer	France	Neos-SDI	27.000┬áÔé¼┬á/anno	04/05/2024 14:19:05	T
2570	Web Developer	France	Sfeir	42.403┬áÔé¼┬á/anno	04/05/2024 14:19:05	T
2571	Web Developer	France	BNP Paribas	41.333┬áÔé¼┬á/anno	04/05/2024 14:19:05	T
2572	Web Developer	France	Innohub Technologies	2.633┬áÔé¼┬á/mese	04/05/2024 14:19:05	T
2573	Web Developer	France	Groupe SII	33.967┬áÔé¼┬á/anno	04/05/2024 14:19:05	T
2574	Web Developer	France	Carrefour	52.167┬áÔé¼┬á/anno	04/05/2024 14:19:05	T
2575	Web Developer	France	Itelios	Circa┬á30.026┬áÔé¼ -38.305┬áÔé¼	04/05/2024 14:19:05	T
2576	Web Developer	France	Microsoft	Circa┬á50.077┬áÔé¼ -83.582┬áÔé¼	04/05/2024 14:19:05	T
2577	Web Developer	France	Solutec Lyon	Circa┬á33.433┬áÔé¼ -38.607┬áÔé¼	04/05/2024 14:19:05	T
2578	Web Developer	France	TheraPanacea	Circa┬á42.014┬áÔé¼ -45.557┬áÔé¼	04/05/2024 14:19:05	T
2579	Web Developer	France	Web-atrio	Circa┬á28.509┬áÔé¼ -36.664┬áÔé¼	04/05/2024 14:19:05	T
2580	Web Developer	France	Degetel	Circa┬á28.717┬áÔé¼ -48.817┬áÔé¼	04/05/2024 14:19:05	T
2581	Web Developer	France	Eleven Labs	Circa┬á36.610┬áÔé¼ -45.791┬áÔé¼	04/05/2024 14:19:05	T
2582	Web Developer	France	Deezer	Circa┬á52.326┬áÔé¼ -71.453┬áÔé¼	04/05/2024 14:19:05	T
2583	Web Developer	Italy	Accenture	23.400┬áÔé¼┬á/anno	04/05/2024 14:19:41	T
2584	Web Developer	Italy	Boolean (Italy)	18.885┬áÔé¼┬á/anno	04/05/2024 14:19:41	T
2585	Web Developer	Italy	Deltatre	26.621┬áÔé¼┬á/anno	04/05/2024 14:19:41	T
2586	Web Developer	Italy	Contrader	1.670┬áÔé¼┬á/mese	04/05/2024 14:19:41	T
2587	Web Developer	Italy	ALTEN	27.514┬áÔé¼┬á/anno	04/05/2024 14:19:41	T
2588	Web Developer	Italy	Nessuna	24.160┬áÔé¼┬á/anno	04/05/2024 14:19:41	T
2589	Web Developer	Italy	YOOX NET-A-PORTER GROUP	39.347┬áÔé¼┬á/anno	04/05/2024 14:19:41	T
2590	Web Developer	Italy	H-FARM	25.899┬áÔé¼┬á/anno	04/05/2024 14:19:41	T
2591	Web Developer	Italy	Betacom	1.900┬áÔé¼┬á/mese	04/05/2024 14:19:41	T
2592	Web Developer	Italy	Reply	21.436┬áÔé¼┬á/anno	04/05/2024 14:19:41	T
2593	Web Developer	Italy	Abinsula	1.400┬áÔé¼┬á/mese	04/05/2024 14:19:41	T
2594	Web Developer	Italy	CINECA	30.793┬áÔé¼┬á/anno	04/05/2024 14:19:41	T
2595	Web Developer	Italy	AlmavivA	22.725┬áÔé¼┬á/anno	04/05/2024 14:19:41	T
2596	Web Developer	Italy	Spindox	31.947┬áÔé¼┬á/anno	04/05/2024 14:19:41	T
2597	Web Developer	Italy	Develon	27.750┬áÔé¼┬á/anno	04/05/2024 14:19:41	T
2598	Web Developer	Italy	DXC Technology	27.400┬áÔé¼┬á/anno	04/05/2024 14:19:41	T
2599	Web Developer	Italy	YourBiz	24.813┬áÔé¼┬á/anno	04/05/2024 14:19:41	T
2600	Web Developer	Italy	Sanmarco Informatica	26.421┬áÔé¼┬á/anno	04/05/2024 14:19:41	T
2601	Web Developer	Italy	Fides (Italy)	21.215┬áÔé¼┬á/anno	04/05/2024 14:19:41	T
2602	Web Developer	Italy	Nessuna	2.089┬áÔé¼┬á/mese	04/05/2024 14:19:41	T
2603	Analyst		Deloitte	26.078┬áÔé¼┬á/anno	05/05/2024 15:39:22	T
2604	Analyst		Accenture	25.378┬áÔé¼┬á/anno	05/05/2024 15:39:22	T
2605	Analyst		Deloitte	896┬áÔé¼┬á/mese	05/05/2024 15:39:22	T
2606	Analyst		Avanade	24.365┬áÔé¼┬á/anno	05/05/2024 15:39:22	T
2607	Analyst		Capgemini	24.990┬áÔé¼┬á/anno	05/05/2024 15:39:22	T
2608	Analyst		Intesa Sanpaolo	33.476┬áÔé¼┬á/anno	05/05/2024 15:39:22	T
2609	Analyst		Umbrella Corporation	37.257┬áÔé¼┬á/anno	05/05/2024 15:39:22	T
2610	Analyst		EY	28.445┬áÔé¼┬á/anno	05/05/2024 15:39:22	T
2611	Analyst		SDG Group	24.689┬áÔé¼┬á/anno	05/05/2024 15:39:22	T
2612	Analyst		KPMG	30.102┬áÔé¼┬á/anno	05/05/2024 15:39:22	T
2613	Analyst		UniCredit Group	38.982┬áÔé¼┬á/anno	05/05/2024 15:39:22	T
2614	Analyst		Deloitte	25.867┬áÔé¼┬á/anno	05/05/2024 15:39:22	T
2615	Analyst		Prometeia	29.281┬áÔé¼┬á/anno	05/05/2024 15:39:22	T
2616	Analyst		PwC	27.052┬áÔé¼┬á/anno	05/05/2024 15:39:22	T
2617	Analyst		Accenture	887┬áÔé¼┬á/mese	05/05/2024 15:39:22	T
2618	Analyst		Moviri	27.602┬áÔé¼┬á/anno	05/05/2024 15:39:22	T
2619	Analyst		Minsait	28.652┬áÔé¼┬á/anno	05/05/2024 15:39:22	T
2620	Analyst		Mediobanca	58.110┬áÔé¼┬á/anno	05/05/2024 15:39:22	T
2621	Analyst		IQVIA	33.394┬áÔé¼┬á/anno	05/05/2024 15:39:22	T
2622	Analyst		Enel	39.140┬áÔé¼┬á/anno	05/05/2024 15:39:22	T
2623	Analyst	Poland	Accenture	7.653┬áPLN┬á/mese	05/05/2024 15:39:22	T
2624	Analyst	Poland	Goldman Sachs	94.156┬áPLN┬á/anno	05/05/2024 15:39:22	T
2625	Analyst	Poland	Citi	7.353┬áPLN┬á/mese	05/05/2024 15:39:22	T
2626	Analyst	Poland	PwC	5.790┬áPLN┬á/mese	05/05/2024 15:39:22	T
2627	Analyst	Poland	BNY Mellon	6.329┬áPLN┬á/mese	05/05/2024 15:39:22	T
2628	Analyst	Poland	EY	6.793┬áPLN┬á/mese	05/05/2024 15:39:22	T
2629	Analyst	Poland	Deloitte	5.996┬áPLN┬á/mese	05/05/2024 15:39:22	T
2630	Analyst	Poland	Credit Suisse	6.489┬áPLN┬á/mese	05/05/2024 15:39:22	T
2631	Analyst	Poland	Mercer	6.841┬áPLN┬á/mese	05/05/2024 15:39:22	T
2632	Analyst	Poland	NatWest Group	5.585┬áPLN┬á/mese	05/05/2024 15:39:22	T
2633	Analyst	Poland	HSBC	6.992┬áPLN┬á/mese	05/05/2024 15:39:22	T
2634	Analyst	Poland	Thomson Reuters	4.194┬áPLN┬á/mese	05/05/2024 15:39:22	T
2635	Analyst	Poland	State Street	6.187┬áPLN┬á/mese	05/05/2024 15:39:22	T
2636	Analyst	Poland	Bain & Company	13.092┬áPLN┬á/mese	05/05/2024 15:39:22	T
2637	Analyst	Poland	AXA XL	7.163┬áPLN┬á/mese	05/05/2024 15:39:22	T
2638	Analyst	Poland	J.P. Morgan	9.947┬áPLN┬á/mese	05/05/2024 15:39:22	T
2639	Analyst	Poland	Jones Lang LaSalle	78.854┬áPLN┬á/anno	05/05/2024 15:39:22	T
2640	Analyst	Poland	HCLTech	5.648┬áPLN┬á/mese	05/05/2024 15:39:22	T
2641	Analyst	Poland	JPMorgan Chase & Co	10.352┬áPLN┬á/mese	05/05/2024 15:39:22	T
2642	Analyst	Poland	UBS	6.762┬áPLN┬á/mese	05/05/2024 15:39:22	T
2643	Project Manager	Poland	IBM	8.858┬áPLN┬á/mese	05/05/2024 16:55:28	T
2644	Project Manager	Poland	Lionbridge	7.699┬áPLN┬á/mese	05/05/2024 16:55:28	T
2645	Project Manager	Poland	Capgemini	12.278┬áPLN┬á/mese	05/05/2024 16:55:28	T
2646	Project Manager	Poland	Luxoft	16.932┬áPLN┬á/mese	05/05/2024 16:55:28	T
2647	Project Manager	Poland	Kyndryl	12.095┬áPLN┬á/mese	05/05/2024 16:55:28	T
2648	Project Manager	Poland	Orange	9.724┬áPLN┬á/mese	05/05/2024 16:55:28	T
2649	Project Manager	Poland	Cisco	11.991┬áPLN┬á/mese	05/05/2024 16:55:28	T
2650	Project Manager	Poland	EPAM Systems	17.782┬áPLN┬á/mese	05/05/2024 16:55:28	T
2651	Project Manager	Poland	UBS	11.437┬áPLN┬á/mese	05/05/2024 16:55:28	T
2652	Project Manager	Poland	Atos	10.831┬áPLN┬á/mese	05/05/2024 16:55:28	T
2653	Project Manager	Poland	Nokia	167.980┬áPLN┬á/anno	05/05/2024 16:55:28	T
2654	Project Manager	Poland	SoftServe	17.068┬áPLN┬á/mese	05/05/2024 16:55:28	T
2655	Project Manager	Poland	Procter & Gamble	11.949┬áPLN┬á/mese	05/05/2024 16:55:28	T
2656	Project Manager	Poland	Citi	12.369┬áPLN┬á/mese	05/05/2024 16:55:29	T
2657	Project Manager	Poland	Credit Suisse	118.487┬áPLN┬á/anno	05/05/2024 16:55:29	T
2658	Project Manager	Poland	HSBC	13.842┬áPLN┬á/mese	05/05/2024 16:55:29	T
2659	Project Manager	Poland	Comarch	11.855┬áPLN┬á/mese	05/05/2024 16:55:29	T
2660	Project Manager	Poland	Amazon	14.193┬áPLN┬á/mese	05/05/2024 16:55:29	T
2661	Project Manager	Poland	Netguru	7.202┬áPLN┬á/mese	05/05/2024 16:55:29	T
2662	Project Manager	Poland	Accenture	14.376┬áPLN┬á/mese	05/05/2024 16:55:29	T
2663	Analyst	Argentina	Accenture	254.375┬áARS┬á/mese	10/05/2024 14:33:27	T
2664	Analyst	Argentina	J.P. Morgan	292.495┬áARS┬á/mese	10/05/2024 14:33:27	T
2665	Analyst	Argentina	ExxonMobil	507.357┬áARS┬á/mese	10/05/2024 14:33:27	T
2666	Analyst	Argentina	JPMorgan Chase & Co	1.008.858┬áARS┬á/mese	10/05/2024 14:33:27	T
2667	Analyst	Argentina	EY	313.852┬áARS┬á/mese	10/05/2024 14:33:27	T
2668	Analyst	Argentina	Nielsen	180.779┬áARS┬á/mese	10/05/2024 14:33:27	T
2669	Analyst	Argentina	PwC	849.633┬áARS┬á/mese	10/05/2024 14:33:27	T
2670	Analyst	Argentina	BBVA	502.502┬áARS┬á/mese	10/05/2024 14:33:27	T
2671	Analyst	Argentina	Tenaris	695.804┬áARS┬á/mese	10/05/2024 14:33:27	T
2672	Analyst	Argentina	Ecolab	208.010┬áARS┬á/mese	10/05/2024 14:33:27	T
2673	Analyst	Argentina	Globant	277.186┬áARS┬á/mese	10/05/2024 14:33:27	T
2674	Analyst	Argentina	Mercado Livre	127.588┬áARS┬á/mese	10/05/2024 14:33:27	T
2675	Analyst	Argentina	ypf	374.593┬áARS┬á/mese	10/05/2024 14:33:27	T
2676	Analyst	Argentina	Avature	191.197┬áARS┬á/mese	10/05/2024 14:33:27	T
2677	Analyst	Argentina	Walt Disney Company	237.584┬áARS┬á/mese	10/05/2024 14:33:27	T
2678	Analyst	Argentina	IBM	564.333┬áARS┬á/mese	10/05/2024 14:33:27	T
2679	Analyst	Argentina	Telef├│nica	349.140┬áARS┬á/mese	10/05/2024 14:33:27	T
2680	Analyst	Argentina	Philip Morris International	624.904┬áARS┬á/mese	10/05/2024 14:33:27	T
2681	Analyst	Argentina	Global Shared Services	258.931┬áARS┬á/mese	10/05/2024 14:33:27	T
2682	Analyst	Argentina	Telecom Argentina	616.013┬áARS┬á/mese	10/05/2024 14:33:27	T
2683	Programmer	South Korea	SK Group	Circa┬á85┬áMio┬áKRW -156┬áMio┬áKRW	10/05/2024 15:09:36	T
2684	Programmer	South Korea	Samsung Electronics	Circa┬á55┬áMio┬áKRW -64┬áMio┬áKRW	10/05/2024 15:09:36	T
2685	Programmer	South Korea	Samsung Electronics	Circa┬á11┬áMio┬áKRW -13┬áMio┬áKRW	10/05/2024 15:09:36	T
2686	Programmer	South Korea	LG Electronics	Circa┬á37┬áMio┬áKRW -44┬áMio┬áKRW	10/05/2024 15:09:36	T
2687	Programmer	South Korea	Hyundai Motor	Circa┬á84┬áMio┬áKRW -98┬áMio┬áKRW	10/05/2024 15:09:36	T
2688	Programmer	South Korea	Samsung SDS	Circa┬á33┬áMio┬áKRW -39┬áMio┬áKRW	10/05/2024 15:09:36	T
2689	Programmer	South Korea	NCSOFT	Circa┬á85┬áMio┬áKRW -101┬áMio┬áKRW	10/05/2024 15:09:36	T
2690	Programmer	South Korea	LINE	Circa┬á237┬áMio┬áKRW -281┬áMio┬áKRW	10/05/2024 15:09:36	T
2691	Programmer	South Korea	ROKAF	Circa┬á914.294┬áKRW -1┬áMio┬áKRW	10/05/2024 15:09:36	T
2692	Programmer	South Korea	TmaxSoft	Circa┬á46┬áMio┬áKRW -54┬áMio┬áKRW	10/05/2024 15:09:36	T
2693	Programmer	South Korea	Com2uS	Circa┬á45┬áMio┬áKRW -55┬áMio┬áKRW	10/05/2024 15:09:36	T
2694	Programmer	South Korea	EMPLOYERS	Circa┬á4┬áMio┬áKRW -4┬áMio┬áKRW	10/05/2024 15:09:36	T
2695	Programmer	South Korea	Cafe24	Circa┬á2┬áMio┬áKRW -3┬áMio┬áKRW	10/05/2024 15:09:36	T
2696	Programmer	South Korea	Pearl Abyss	Circa┬á49┬áMio┬áKRW -57┬áMio┬áKRW	10/05/2024 15:09:36	T
2697	Programmer	South Korea	Bluehole Studio	Circa┬á34┬áMio┬áKRW -40┬áMio┬áKRW	10/05/2024 15:09:36	T
2698	Programmer	South Korea	Kisan Electronics	Circa┬á21┬áMio┬áKRW -25┬áMio┬áKRW	10/05/2024 15:09:36	T
2699	Programmer	South Korea	KFTC	Circa┬á111┬áMio┬áKRW -130┬áMio┬áKRW	10/05/2024 15:09:36	T
2700	Programmer	South Korea	Korea National University of Transportation	Circa┬á28┬áMio┬áKRW -32┬áMio┬áKRW	10/05/2024 15:09:36	T
2701	Programmer	South Korea	CITECH	Circa┬á2┬áMio┬áKRW -3┬áMio┬áKRW	10/05/2024 15:09:36	T
2702	Programmer	South Korea	Sheeps	Circa┬á2┬áMio┬áKRW -2┬áMio┬áKRW	10/05/2024 15:09:36	T
2703	Ing	India	Eli Lilly and Company	84.774┬áUSD┬á/anno	18/05/2024 18:09:48	T
\.


--
-- Name: results_id_seq; Type: SEQUENCE SET; Schema: results; Owner: postgres
--

SELECT pg_catalog.setval('results.results_id_seq', 143, true);


--
-- Name: salary_employers_id_seq; Type: SEQUENCE SET; Schema: results; Owner: postgres
--

SELECT pg_catalog.setval('results.salary_employers_id_seq', 2703, true);


--
-- Name: results pk_results; Type: CONSTRAINT; Schema: results; Owner: postgres
--

ALTER TABLE ONLY results.results
    ADD CONSTRAINT pk_results PRIMARY KEY (id);


--
-- Name: salary_employers pk_salary_employers; Type: CONSTRAINT; Schema: results; Owner: postgres
--

ALTER TABLE ONLY results.salary_employers
    ADD CONSTRAINT pk_salary_employers PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

