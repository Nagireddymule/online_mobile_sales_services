--
-- PostgreSQL database dump
--

-- Dumped from database version 9.3.10
-- Dumped by pg_dump version 9.3.10
-- Started on 2016-06-29 00:19:34 IST

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- TOC entry 179 (class 3079 OID 11787)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2028 (class 0 OID 0)
-- Dependencies: 179
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 176 (class 1259 OID 24926)
-- Name: delars; Type: TABLE; Schema: public; Owner: cortex; Tablespace: 
--

CREATE TABLE delars (
    id integer NOT NULL,
    name character varying,
    contact bigint,
    address character varying,
    city character varying,
    state character varying,
    country character varying,
    pincode integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.delars OWNER TO cortex;

--
-- TOC entry 175 (class 1259 OID 24924)
-- Name: delars_id_seq; Type: SEQUENCE; Schema: public; Owner: cortex
--

CREATE SEQUENCE delars_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.delars_id_seq OWNER TO cortex;

--
-- TOC entry 2029 (class 0 OID 0)
-- Dependencies: 175
-- Name: delars_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cortex
--

ALTER SEQUENCE delars_id_seq OWNED BY delars.id;


--
-- TOC entry 174 (class 1259 OID 24915)
-- Name: mobiles; Type: TABLE; Schema: public; Owner: cortex; Tablespace: 
--

CREATE TABLE mobiles (
    id integer NOT NULL,
    mobile_name character varying,
    brand_name character varying,
    price integer,
    mobile_type character varying,
    top_os character varying,
    battery_capacity character varying,
    screen_size character varying,
    ram character varying,
    resolution_type character varying,
    internet_features character varying,
    sim_type character varying,
    primary_camera character varying,
    os_version_name character varying,
    secondary_camera character varying,
    network_type character varying,
    clock_speed character varying,
    features character varying,
    number_of_cores character varying,
    availability character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    image_file_name character varying,
    image_content_type character varying,
    image_file_size integer,
    image_updated_at timestamp without time zone
);


ALTER TABLE public.mobiles OWNER TO cortex;

--
-- TOC entry 178 (class 1259 OID 24937)
-- Name: mobiles_delars; Type: TABLE; Schema: public; Owner: cortex; Tablespace: 
--

CREATE TABLE mobiles_delars (
    id integer NOT NULL,
    delar_id integer,
    mobile_id integer
);


ALTER TABLE public.mobiles_delars OWNER TO cortex;

--
-- TOC entry 177 (class 1259 OID 24935)
-- Name: mobiles_delars_id_seq; Type: SEQUENCE; Schema: public; Owner: cortex
--

CREATE SEQUENCE mobiles_delars_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mobiles_delars_id_seq OWNER TO cortex;

--
-- TOC entry 2030 (class 0 OID 0)
-- Dependencies: 177
-- Name: mobiles_delars_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cortex
--

ALTER SEQUENCE mobiles_delars_id_seq OWNED BY mobiles_delars.id;


--
-- TOC entry 173 (class 1259 OID 24913)
-- Name: mobiles_id_seq; Type: SEQUENCE; Schema: public; Owner: cortex
--

CREATE SEQUENCE mobiles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mobiles_id_seq OWNER TO cortex;

--
-- TOC entry 2031 (class 0 OID 0)
-- Dependencies: 173
-- Name: mobiles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cortex
--

ALTER SEQUENCE mobiles_id_seq OWNED BY mobiles.id;


--
-- TOC entry 170 (class 1259 OID 24890)
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: cortex; Tablespace: 
--

CREATE TABLE schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO cortex;

--
-- TOC entry 172 (class 1259 OID 24899)
-- Name: users; Type: TABLE; Schema: public; Owner: cortex; Tablespace: 
--

CREATE TABLE users (
    id integer NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    sign_in_count integer DEFAULT 0 NOT NULL,
    current_sign_in_at timestamp without time zone,
    last_sign_in_at timestamp without time zone,
    current_sign_in_ip inet,
    last_sign_in_ip inet,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    name character varying,
    role integer,
    contact_number bigint,
    address character varying,
    city character varying,
    state character varying,
    country character varying,
    pincode integer
);


ALTER TABLE public.users OWNER TO cortex;

--
-- TOC entry 171 (class 1259 OID 24897)
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: cortex
--

CREATE SEQUENCE users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO cortex;

--
-- TOC entry 2032 (class 0 OID 0)
-- Dependencies: 171
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cortex
--

ALTER SEQUENCE users_id_seq OWNED BY users.id;


--
-- TOC entry 1890 (class 2604 OID 24929)
-- Name: id; Type: DEFAULT; Schema: public; Owner: cortex
--

ALTER TABLE ONLY delars ALTER COLUMN id SET DEFAULT nextval('delars_id_seq'::regclass);


--
-- TOC entry 1889 (class 2604 OID 24918)
-- Name: id; Type: DEFAULT; Schema: public; Owner: cortex
--

ALTER TABLE ONLY mobiles ALTER COLUMN id SET DEFAULT nextval('mobiles_id_seq'::regclass);


--
-- TOC entry 1891 (class 2604 OID 24940)
-- Name: id; Type: DEFAULT; Schema: public; Owner: cortex
--

ALTER TABLE ONLY mobiles_delars ALTER COLUMN id SET DEFAULT nextval('mobiles_delars_id_seq'::regclass);


--
-- TOC entry 1885 (class 2604 OID 24902)
-- Name: id; Type: DEFAULT; Schema: public; Owner: cortex
--

ALTER TABLE ONLY users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);


--
-- TOC entry 2018 (class 0 OID 24926)
-- Dependencies: 176
-- Data for Name: delars; Type: TABLE DATA; Schema: public; Owner: cortex
--

COPY delars (id, name, contact, address, city, state, country, pincode, created_at, updated_at) FROM stdin;
1	Ws Retailer	7204890276	#877, 3rd floor, 9th cross, 16th main	Bangalore	Karnataka	India	560076	2016-06-28 09:13:24.667057	2016-06-28 09:13:24.667057
2	shaik shavali	7204890276	kothapeta	Anantapur	Andhra Pradesh	India	515671	2016-06-28 14:16:26.716312	2016-06-28 14:16:26.716312
\.


--
-- TOC entry 2033 (class 0 OID 0)
-- Dependencies: 175
-- Name: delars_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cortex
--

SELECT pg_catalog.setval('delars_id_seq', 2, true);


--
-- TOC entry 2016 (class 0 OID 24915)
-- Dependencies: 174
-- Data for Name: mobiles; Type: TABLE DATA; Schema: public; Owner: cortex
--

COPY mobiles (id, mobile_name, brand_name, price, mobile_type, top_os, battery_capacity, screen_size, ram, resolution_type, internet_features, sim_type, primary_camera, os_version_name, secondary_camera, network_type, clock_speed, features, number_of_cores, availability, created_at, updated_at, image_file_name, image_content_type, image_file_size, image_updated_at) FROM stdin;
4	LeEco Le 1s Eco(Gold, 32 GB)	LeEco	9999	Smart phone	Android	3000mAh	5.5 inch	3 GB	Full HD	4G	Dual	13 MP	Android v5.0.2 with EUI 5.5	5 MP	4G	2 GHz	Bluetooth, FM, Wifi	Octa Core	yes	2016-06-28 09:51:01.30463	2016-06-28 09:51:01.30463	letv-le-1s-eco-na-400x400-imaegcqyaamyt9gx.jpeg	image/jpeg	24796	2016-06-28 09:51:01.199093
1	Moto X Play(With Turbo Charger)	Motorola	15499	Smart phone	Android	3000mAh	5.5 inch	2 GB	HD	3G,  4G	Dual	13 MP	Marshmallow	5 MP	4G	2 GHz	Bluetooth, FM, Wifi	Octa Core	Yes	2016-06-28 09:09:17.012827	2016-06-28 09:51:19.922564	motorola-moto-x-play-with-turbo-charger-xt1562-400x400-imaefrd46nmdtgza.jpeg	image/jpeg	24786	2016-06-28 09:09:16.379548
2	SAMSUNG Galaxy J7 - 6 (New 2016 Edition)(Gold, 16 GB)	Samsung	15990	Smart phone	Android	3300 mAh	5.5 inch	2 GB	Full HD	4G	Dual	13 MP	Marshmallow	5 MP	4G	2 GHz	HD Recording, WiFi	Octa Core	Yes	2016-06-28 09:43:12.429526	2016-06-28 09:51:53.000653	samsung-galaxy-j7-2016-sm-j710fzduins-400x400-imaeg8cxjhaueqwg.jpeg	image/jpeg	18887	2016-06-28 09:43:12.307904
3	Lenovo VIBE P1m(Black, 16 GB)	Lenovo	6999	Smart phone	Android	3900 mAh	5 inch	2 GB	HD	4G	Dual	8 MP	Lollipop	5 MP	4G	2 GHz	HD Recording, WiFi	Quad core	Yes	2016-06-28 09:46:32.228482	2016-06-28 09:52:05.253502	lenovo-vibe-p1m-pa1g0035in-400x400-imaec3g2ghmtg4vz.jpeg	image/jpeg	21225	2016-06-28 09:46:32.130599
\.


--
-- TOC entry 2020 (class 0 OID 24937)
-- Dependencies: 178
-- Data for Name: mobiles_delars; Type: TABLE DATA; Schema: public; Owner: cortex
--

COPY mobiles_delars (id, delar_id, mobile_id) FROM stdin;
1	1	1
2	1	2
3	1	3
4	1	4
5	2	1
6	2	2
\.


--
-- TOC entry 2034 (class 0 OID 0)
-- Dependencies: 177
-- Name: mobiles_delars_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cortex
--

SELECT pg_catalog.setval('mobiles_delars_id_seq', 6, true);


--
-- TOC entry 2035 (class 0 OID 0)
-- Dependencies: 173
-- Name: mobiles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cortex
--

SELECT pg_catalog.setval('mobiles_id_seq', 4, true);


--
-- TOC entry 2012 (class 0 OID 24890)
-- Dependencies: 170
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: cortex
--

COPY schema_migrations (version) FROM stdin;
20160626145738
20160626145740
20160626145744
20160628081543
20160628081740
20160628081848
20160628082913
20160628130852
\.


--
-- TOC entry 2014 (class 0 OID 24899)
-- Dependencies: 172
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: cortex
--

COPY users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at, name, role, contact_number, address, city, state, country, pincode) FROM stdin;
1	user@example.com	$2a$11$qnOBBvKYddS4hjK1Hu0UH.ujGbQYd/PrjNIirG7bwHtJ0cUTGHCGe	\N	\N	\N	5	2016-06-28 18:29:41.553338	2016-06-28 17:51:31.212789	127.0.0.1	127.0.0.1	2016-06-28 09:02:41.299416	2016-06-28 18:29:41.554665	Shaik	2	7204890276	BTM Layout	Bangalore	Karnataka	India	560076
\.


--
-- TOC entry 2036 (class 0 OID 0)
-- Dependencies: 171
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cortex
--

SELECT pg_catalog.setval('users_id_seq', 1, true);


--
-- TOC entry 1900 (class 2606 OID 24934)
-- Name: delars_pkey; Type: CONSTRAINT; Schema: public; Owner: cortex; Tablespace: 
--

ALTER TABLE ONLY delars
    ADD CONSTRAINT delars_pkey PRIMARY KEY (id);


--
-- TOC entry 1904 (class 2606 OID 24942)
-- Name: mobiles_delars_pkey; Type: CONSTRAINT; Schema: public; Owner: cortex; Tablespace: 
--

ALTER TABLE ONLY mobiles_delars
    ADD CONSTRAINT mobiles_delars_pkey PRIMARY KEY (id);


--
-- TOC entry 1898 (class 2606 OID 24923)
-- Name: mobiles_pkey; Type: CONSTRAINT; Schema: public; Owner: cortex; Tablespace: 
--

ALTER TABLE ONLY mobiles
    ADD CONSTRAINT mobiles_pkey PRIMARY KEY (id);


--
-- TOC entry 1896 (class 2606 OID 24910)
-- Name: users_pkey; Type: CONSTRAINT; Schema: public; Owner: cortex; Tablespace: 
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 1901 (class 1259 OID 24943)
-- Name: index_mobiles_delars_on_delar_id; Type: INDEX; Schema: public; Owner: cortex; Tablespace: 
--

CREATE INDEX index_mobiles_delars_on_delar_id ON mobiles_delars USING btree (delar_id);


--
-- TOC entry 1902 (class 1259 OID 24944)
-- Name: index_mobiles_delars_on_mobile_id; Type: INDEX; Schema: public; Owner: cortex; Tablespace: 
--

CREATE INDEX index_mobiles_delars_on_mobile_id ON mobiles_delars USING btree (mobile_id);


--
-- TOC entry 1893 (class 1259 OID 24911)
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: cortex; Tablespace: 
--

CREATE UNIQUE INDEX index_users_on_email ON users USING btree (email);


--
-- TOC entry 1894 (class 1259 OID 24912)
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: cortex; Tablespace: 
--

CREATE UNIQUE INDEX index_users_on_reset_password_token ON users USING btree (reset_password_token);


--
-- TOC entry 1892 (class 1259 OID 24896)
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: cortex; Tablespace: 
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- TOC entry 2027 (class 0 OID 0)
-- Dependencies: 5
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2016-06-29 00:19:35 IST

--
-- PostgreSQL database dump complete
--

