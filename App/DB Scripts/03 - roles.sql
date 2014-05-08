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

ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pkey;
ALTER TABLE public.roles ALTER COLUMN id DROP DEFAULT;
DROP SEQUENCE public.roles_id_seq;
DROP TABLE public.roles;
SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: roles; Type: TABLE; Schema: public; Owner: bispgadmin; Tablespace: 
--

CREATE TABLE roles (
    id integer NOT NULL,
    name character varying(255) DEFAULT NULL::character varying NOT NULL,
    created_at timestamp(6) without time zone DEFAULT NULL::timestamp without time zone NOT NULL,
    updated_at timestamp(6) without time zone DEFAULT NULL::timestamp without time zone NOT NULL,
    description character varying(255)
);


ALTER TABLE public.roles OWNER TO bispgadmin;

--
-- Name: roles_id_seq; Type: SEQUENCE; Schema: public; Owner: bispgadmin
--

CREATE SEQUENCE roles_id_seq
    START WITH 9
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.roles_id_seq OWNER TO bispgadmin;

--
-- Name: roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bispgadmin
--

ALTER SEQUENCE roles_id_seq OWNED BY roles.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: bispgadmin
--

ALTER TABLE ONLY roles ALTER COLUMN id SET DEFAULT nextval('roles_id_seq'::regclass);


--
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: bispgadmin
--

INSERT INTO roles VALUES (41, 'sysadmin', '2013-11-12 02:37:17', '2013-11-12 02:37:17', 'System Administrator');
INSERT INTO roles VALUES (42, 'superuser', '2013-11-12 02:37:17', '2013-11-12 02:37:17', 'Super user');
INSERT INTO roles VALUES (43, 'bibuser', '2013-11-12 02:37:17', '2013-11-12 02:37:17', 'Librarian');
INSERT INTO roles VALUES (44, 'resuser', '2013-11-12 02:37:17', '2013-11-12 02:37:17', 'Librarian that decides over the retention of Holdings');
INSERT INTO roles VALUES (45, 'magvuser', '2013-11-12 02:37:17', '2013-11-12 02:37:17', 'Storage manager');
INSERT INTO roles VALUES (46, 'maguser', '2013-11-12 02:37:17', '2013-11-12 02:37:17', 'Storage worker');
INSERT INTO roles VALUES (47, 'postuser', '2013-11-12 02:37:17', '2013-11-12 02:37:17', 'Post office worker ');
INSERT INTO roles VALUES (48, 'speichuser', '2013-11-12 02:37:17', '2013-11-12 02:37:17', 'Collaborator of the storage library');


--
-- Name: roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bispgadmin
--

SELECT pg_catalog.setval('roles_id_seq', 48, true);


--
-- Name: roles_pkey; Type: CONSTRAINT; Schema: public; Owner: bispgadmin; Tablespace: 
--

ALTER TABLE ONLY roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);


--
-- Name: roles; Type: ACL; Schema: public; Owner: bispgadmin
--

REVOKE ALL ON TABLE roles FROM PUBLIC;
REVOKE ALL ON TABLE roles FROM bispgadmin;
GRANT ALL ON TABLE roles TO bispgadmin;


--
-- Name: roles_id_seq; Type: ACL; Schema: public; Owner: bispgadmin
--

REVOKE ALL ON SEQUENCE roles_id_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE roles_id_seq FROM bispgadmin;
GRANT ALL ON SEQUENCE roles_id_seq TO bispgadmin;


--
-- PostgreSQL database dump complete
--

