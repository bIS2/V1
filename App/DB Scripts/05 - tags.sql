--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

ALTER TABLE ONLY public.tags DROP CONSTRAINT tags_pkey;
ALTER TABLE public.tags ALTER COLUMN id DROP DEFAULT;
DROP SEQUENCE public.tags_id_seq;
DROP TABLE public.tags;
SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: tags; Type: TABLE; Schema: public; Owner: bispgadmin; Tablespace: 
--

CREATE TABLE tags (
    id integer NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE public.tags OWNER TO bispgadmin;

--
-- Name: tags_id_seq; Type: SEQUENCE; Schema: public; Owner: bispgadmin
--

CREATE SEQUENCE tags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tags_id_seq OWNER TO bispgadmin;

--
-- Name: tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bispgadmin
--

ALTER SEQUENCE tags_id_seq OWNED BY tags.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: bispgadmin
--

ALTER TABLE ONLY tags ALTER COLUMN id SET DEFAULT nextval('tags_id_seq'::regclass);


--
-- Data for Name: tags; Type: TABLE DATA; Schema: public; Owner: bispgadmin
--

INSERT INTO tags VALUES (34, 'missing');
INSERT INTO tags VALUES (35, 'aditional');
INSERT INTO tags VALUES (36, 'bad');
INSERT INTO tags VALUES (37, 'remarks');


--
-- Name: tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bispgadmin
--

SELECT pg_catalog.setval('tags_id_seq', 37, true);


--
-- Name: tags_pkey; Type: CONSTRAINT; Schema: public; Owner: bispgadmin; Tablespace: 
--

ALTER TABLE ONLY tags
    ADD CONSTRAINT tags_pkey PRIMARY KEY (id);


--
-- Name: tags; Type: ACL; Schema: public; Owner: bispgadmin
--

REVOKE ALL ON TABLE tags FROM PUBLIC;
REVOKE ALL ON TABLE tags FROM bispgadmin;
GRANT ALL ON TABLE tags TO bispgadmin;


--
-- Name: tags_id_seq; Type: ACL; Schema: public; Owner: bispgadmin
--

REVOKE ALL ON SEQUENCE tags_id_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE tags_id_seq FROM bispgadmin;
GRANT ALL ON SEQUENCE tags_id_seq TO bispgadmin;


--
-- PostgreSQL database dump complete
--

