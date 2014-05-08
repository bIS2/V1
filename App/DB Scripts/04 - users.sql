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

ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
DROP SEQUENCE public.users_id_seq;
DROP TABLE public.users;
SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: users; Type: TABLE; Schema: public; Owner: bispgadmin; Tablespace: 
--

CREATE TABLE users (
    id integer NOT NULL,
    username character varying(255) DEFAULT NULL::character varying NOT NULL,
    email character varying(255) DEFAULT NULL::character varying NOT NULL,
    password character varying(255) DEFAULT NULL::character varying NOT NULL,
    confirmation_code character varying(255) DEFAULT NULL::character varying NOT NULL,
    confirmed boolean DEFAULT false NOT NULL,
    created_at timestamp(6) without time zone DEFAULT NULL::timestamp without time zone NOT NULL,
    updated_at timestamp(6) without time zone DEFAULT NULL::timestamp without time zone NOT NULL,
    name character varying(255) DEFAULT NULL::character varying,
    lastname character varying(255) DEFAULT NULL::character varying,
    library_id integer,
    disable boolean DEFAULT false NOT NULL,
    last_login timestamp without time zone
);


ALTER TABLE public.users OWNER TO bispgadmin;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: bispgadmin
--

CREATE SEQUENCE users_id_seq
    START WITH 3
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO bispgadmin;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bispgadmin
--

ALTER SEQUENCE users_id_seq OWNED BY users.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: bispgadmin
--

ALTER TABLE ONLY users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: bispgadmin
--

INSERT INTO users VALUES (15, 'bisadmin', 'admin@bis.trialog.ch', '$2y$08$S7Q9UY.NLckiK0tky3T9meVs3lBwefTMy7rYCPccjDkdx2oTcK6my', '4d469e71b87e1a291290c1af155e5363', true, '2013-11-12 02:37:17', '2013-11-12 02:37:17', NULL, NULL, NULL, false, NULL);

--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bispgadmin
--

SELECT pg_catalog.setval('users_id_seq', 83, true);


--
-- Name: users_pkey; Type: CONSTRAINT; Schema: public; Owner: bispgadmin; Tablespace: 
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: users; Type: ACL; Schema: public; Owner: bispgadmin
--

REVOKE ALL ON TABLE users FROM PUBLIC;
REVOKE ALL ON TABLE users FROM bispgadmin;
GRANT ALL ON TABLE users TO bispgadmin;


--
-- Name: users_id_seq; Type: ACL; Schema: public; Owner: bispgadmin
--

REVOKE ALL ON SEQUENCE users_id_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE users_id_seq FROM bispgadmin;
GRANT ALL ON SEQUENCE users_id_seq TO bispgadmin;


--
-- PostgreSQL database dump complete
--

