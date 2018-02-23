--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.11
-- Dumped by pg_dump version 9.5.11

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE ar_internal_metadata OWNER TO postgres;

--
-- Name: comments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE comments (
    id integer NOT NULL,
    content text,
    username character varying,
    email character varying,
    post_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE comments OWNER TO postgres;

--
-- Name: comments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE comments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE comments_id_seq OWNER TO postgres;

--
-- Name: comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE comments_id_seq OWNED BY comments.id;


--
-- Name: posts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE posts (
    id integer NOT NULL,
    title character varying,
    content text,
    author_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    banner_file_name character varying,
    banner_content_type character varying,
    banner_file_size integer,
    banner_updated_at timestamp without time zone
);


ALTER TABLE posts OWNER TO postgres;

--
-- Name: posts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE posts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE posts_id_seq OWNER TO postgres;

--
-- Name: posts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE posts_id_seq OWNED BY posts.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE schema_migrations OWNER TO postgres;

--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
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
    lastname character varying
);


ALTER TABLE users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE users_id_seq OWNED BY users.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY comments ALTER COLUMN id SET DEFAULT nextval('comments_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY posts ALTER COLUMN id SET DEFAULT nextval('posts_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2018-02-23 04:12:15.045523	2018-02-23 04:12:15.045523
\.


--
-- Data for Name: comments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY comments (id, content, username, email, post_id, created_at, updated_at) FROM stdin;
1	este es un comentario...	Rox	\N	1	2018-02-23 14:38:57.203034	2018-02-23 14:38:57.203034
2	este es un comentario... 2	Rox	\N	1	2018-02-23 14:48:14.995352	2018-02-23 14:48:14.995352
3	este es un comentario... 33	Rox	\N	1	2018-02-23 14:48:24.18108	2018-02-23 14:48:24.18108
4	este es un comentario...4	Rox	\N	1	2018-02-23 14:50:47.241574	2018-02-23 14:50:47.241574
5	vrregerg	lalallaa	\N	2	2018-02-23 14:52:31.139289	2018-02-23 14:52:31.139289
6	excelent	rox	\N	3	2018-02-23 14:56:53.955524	2018-02-23 14:56:53.955524
7	lorem ipsum	rox	\N	1	2018-02-23 16:17:40.3569	2018-02-23 16:17:40.3569
8	Excelente, me encanto!	Sofi	\N	11	2018-02-23 16:54:19.394604	2018-02-23 16:54:19.394604
9	:O lorem ipsum...	Beto	\N	8	2018-02-23 16:54:44.067887	2018-02-23 16:54:44.067887
\.


--
-- Name: comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('comments_id_seq', 9, true);


--
-- Data for Name: posts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY posts (id, title, content, author_id, created_at, updated_at, banner_file_name, banner_content_type, banner_file_size, banner_updated_at) FROM stdin;
11	Breadcrumbs - Util?	<p>Hablemos de breadcrumbs...</p><p>Crummy :D<br><br>Una opcion para poner “migajas de pan” en rails<br>Cómo se usa??<br><br>Facilisimo:<br><br>Ponemos la gema en nuestro Gemfile y bundle blabla…<br><br>Luego, en los controladores agregamos add_crumb ya sea en un before_filter o dentro de un método (También está disponible para visitas)</p><p><p><br></p><p><img style="width: 100px;" src="data:image/jpeg;base64,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" data-filename="huge_bandwagon.jpg"><br></p></p>	1	2018-02-23 16:54:04.511101	2018-02-23 16:54:04.511101	\N	\N	\N	\N
8	Lorem ipsum	<h2>Qué es Lorem Ipsum?</h2>\r\n                        <p><strong>Lorem Ipsum</strong> es simplemente el texto de relleno de \r\n                        las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de \r\n                        relleno estándar de las industrias desde el año 1500, cuando un impresor\r\n                         (N. del T. persona que se dedica a la imprenta) desconocido usó una \r\n                        galería de textos y los mezcló de tal manera que logró hacer un libro de\r\n                         textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó\r\n                         como texto de relleno en documentos electrónicos, quedando \r\n                        esencialmente igual al original. Fue popularizado en los 60s con la \r\n                        creación de las hojas "Letraset", las cuales contenian pasajes de Lorem \r\n                        Ipsum, y más recientemente con software de autoedición, como por ejemplo\r\n                         Aldus  PageMaker, el cual incluye versiones de Lorem Ipsum. Lalalala llalala eidtion<br></p>	1	2018-02-23 16:35:20.594942	2018-02-23 16:56:02.964801	\N	\N	\N	\N
\.


--
-- Name: posts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('posts_id_seq', 11, true);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY schema_migrations (version) FROM stdin;
20180223040524
20180223041418
20180223041619
20180223132908
20180223140058
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at, name, lastname) FROM stdin;
2	roxigo@hotmail.com	$2a$11$6cZtRQmZtHxk1GMkgjCo8.8MmvbhzXTCjJYyJZpZKwkt6eOCbUPdK	\N	\N	\N	4	2018-02-23 16:01:48.029416	2018-02-23 16:01:19.572446	127.0.0.1	127.0.0.1	2018-02-23 15:57:06.531405	2018-02-23 16:01:48.030641	\N	\N
1	roxana.gonzalez21@gmail.com	$2a$11$tEgNe01hTmMSsSPKSlWNzuK2jLvrDz3/eXEuWmbooe9EUtuU.gSte	\N	\N	\N	6	2018-02-23 17:02:50.361778	2018-02-23 16:06:49.218391	127.0.0.1	127.0.0.1	2018-02-23 05:02:08.079847	2018-02-23 17:02:50.363087	Roxana	González
\.


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('users_id_seq', 2, true);


--
-- Name: ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: comments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY comments
    ADD CONSTRAINT comments_pkey PRIMARY KEY (id);


--
-- Name: posts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_users_on_email ON users USING btree (email);


--
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_users_on_reset_password_token ON users USING btree (reset_password_token);


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

