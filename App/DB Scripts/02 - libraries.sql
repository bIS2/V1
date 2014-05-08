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

ALTER TABLE ONLY public.libraries DROP CONSTRAINT libraries_pkey;
ALTER TABLE public.libraries ALTER COLUMN id DROP DEFAULT;
DROP SEQUENCE public.libraries_id_seq;
DROP TABLE public.libraries;
SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: libraries; Type: TABLE; Schema: public; Owner: bispgadmin; Tablespace: 
--

CREATE TABLE libraries (
    id integer NOT NULL,
    name character varying(255) DEFAULT NULL::character varying NOT NULL,
    created_at timestamp(6) without time zone DEFAULT NULL::timestamp without time zone NOT NULL,
    updated_at timestamp(6) without time zone DEFAULT NULL::timestamp without time zone NOT NULL,
    code character varying(255),
    externalurl character varying(255),
    sublibraries character varying(255)
);


ALTER TABLE public.libraries OWNER TO bispgadmin;

--
-- Name: libraries_id_seq; Type: SEQUENCE; Schema: public; Owner: bispgadmin
--

CREATE SEQUENCE libraries_id_seq
    START WITH 5
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.libraries_id_seq OWNER TO bispgadmin;

--
-- Name: libraries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bispgadmin
--

ALTER SEQUENCE libraries_id_seq OWNED BY libraries.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: bispgadmin
--

ALTER TABLE ONLY libraries ALTER COLUMN id SET DEFAULT nextval('libraries_id_seq'::regclass);


--
-- Data for Name: libraries; Type: TABLE DATA; Schema: public; Owner: bispgadmin
--

INSERT INTO libraries VALUES (9, 'Zentralbibliothek Zürich', '2013-11-12 02:37:17', '2013-11-12 02:37:17', 'ZBZ', 'http://opac.nebis.ch/F/?local_base=NEBIS&CON_LNG=GER&func=find-b&find_code=SYS&request=', 'Z01');
INSERT INTO libraries VALUES (5, 'Kantonsbibliothek Aargau', '2013-11-12 02:37:17', '2013-11-12 02:37:17', 'AGK', 'http://aleph.ag.ch/F/?/&func=find-b&find_code=SYS&request=', 'AKB');
INSERT INTO libraries VALUES (7, 'Zentralbibliothek Luzern', '2013-11-12 02:37:17', '2013-11-12 02:37:17', 'ZHB', 'http://ilu.zhbluzern.ch/F/?/&func=find-b&find_code=SYS&request=', 'LUZHB,LUUHL,LUNI3,LUKIL,LUPHL');
INSERT INTO libraries VALUES (10, 'Speicherbibliothek 1', '2013-11-12 02:37:17', '2014-02-12 17:33:42', 'SPB', '', NULL);
INSERT INTO libraries VALUES (8, 'Universitätsbibliothek Zürich', '2013-11-12 02:37:17', '2013-11-12 02:37:17', 'HBZ', 'http://opac.nebis.ch/F/?local_base=NEBIS&CON_LNG=GER&func=find-b&find_code=SYS&request=', 'UMBC,UMHIZ,UMLS,UPSYC,UROSE,UTS,UVMZ,Z16,Z19,UBFB,UBOT,UDS,UECON,UFBI,UIH,UIRG,UKOMP,UHS');
INSERT INTO libraries VALUES (6, 'Universitätsbibliothek Basel', '2013-11-12 02:37:17', '2013-11-12 02:37:17', 'UBB', 'ttp://aleph.unibas.ch/F/?local_base=DSV01&CON_LNG=GER&func=find-b&find_code=SYS&request=', 'A100,A125,A130,A140');


--
-- Name: libraries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bispgadmin
--

SELECT pg_catalog.setval('libraries_id_seq', 10, true);


--
-- Name: libraries_pkey; Type: CONSTRAINT; Schema: public; Owner: bispgadmin; Tablespace: 
--

ALTER TABLE ONLY libraries
    ADD CONSTRAINT libraries_pkey PRIMARY KEY (id);


--
-- Name: libraries; Type: ACL; Schema: public; Owner: bispgadmin
--

REVOKE ALL ON TABLE libraries FROM PUBLIC;
REVOKE ALL ON TABLE libraries FROM bispgadmin;
GRANT ALL ON TABLE libraries TO bispgadmin;


--
-- Name: libraries_id_seq; Type: ACL; Schema: public; Owner: bispgadmin
--

REVOKE ALL ON SEQUENCE libraries_id_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE libraries_id_seq FROM bispgadmin;
GRANT ALL ON SEQUENCE libraries_id_seq TO bispgadmin;


--
-- PostgreSQL database dump complete
--

