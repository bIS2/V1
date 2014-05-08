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

ALTER TABLE ONLY public.permission_role DROP CONSTRAINT permission_role_role_id_fkey;
ALTER TABLE ONLY public.permission_role DROP CONSTRAINT permission_role_permission_id_fkey;
ALTER TABLE ONLY public.notes DROP CONSTRAINT holding_tag_tag_id_foreign;
ALTER TABLE ONLY public.hlist_holding DROP CONSTRAINT hlist_holding_hlist_id_foreign;
ALTER TABLE ONLY public.assigned_roles DROP CONSTRAINT assigned_roles_user_id_fkey;
ALTER TABLE ONLY public.assigned_roles DROP CONSTRAINT assigned_roles_role_id_fkey;
DROP INDEX public.permission_role_role_id_index;
DROP INDEX public.permission_role_permission_id_index;
DROP INDEX public.holdingssets_state;
DROP INDEX public.holdingsset_id_state;
DROP INDEX public.holdingsset_id_c;
DROP INDEX public.holdingsset_id;
DROP INDEX public.holdings_state;
DROP INDEX public.holding_tag_tag_id_index;
DROP INDEX public.holding_tag_holding_id_index;
DROP INDEX public.hlist_holding_holding_id_index;
DROP INDEX public.hlist_holding_hlist_id_index;
DROP INDEX public.f_tit_gin;
DROP INDEX public.f_tit_e_gin;
DROP INDEX public.f866a_gin;
DROP INDEX public.f866a;
DROP INDEX public.f852h_gin;
DROP INDEX public.f852h;
DROP INDEX public.f852a_gin;
DROP INDEX public.f785t_gin;
DROP INDEX public.f785t_e_gin;
DROP INDEX public.f780t_gin;
DROP INDEX public.f780t_e_gin;
DROP INDEX public.f780t;
DROP INDEX public.f770t_gin;
DROP INDEX public.f770t;
DROP INDEX public.f710a_gin;
DROP INDEX public.f710a_e_gin;
DROP INDEX public.f710a;
DROP INDEX public.f362a_gin;
DROP INDEX public.f362a;
DROP INDEX public.f310a_gin;
DROP INDEX public.f310a;
DROP INDEX public.f260c_gin;
DROP INDEX public.f260c;
DROP INDEX public.f260b_gin;
DROP INDEX public.f260b_e_gin;
DROP INDEX public.f260b;
DROP INDEX public.f260a_gin;
DROP INDEX public.f260a_e_gin;
DROP INDEX public.f260a;
DROP INDEX public.f245c_gin;
DROP INDEX public.f245c_e_gin;
DROP INDEX public.f245c;
DROP INDEX public.f245b_gin;
DROP INDEX public.f245b_e_gin;
DROP INDEX public.f245b;
DROP INDEX public.f245a_gin;
DROP INDEX public.f245a_e_gin;
DROP INDEX public.f245a;
DROP INDEX public.f022a_gin;
DROP INDEX public.f022a;
DROP INDEX public.f008y;
DROP INDEX public.f008x;
DROP INDEX public.assigned_roles_user_id_index;
DROP INDEX public.assigned_roles_role_id_index;
ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
ALTER TABLE ONLY public.traces DROP CONSTRAINT traces_pkey;
ALTER TABLE ONLY public.tags DROP CONSTRAINT tags_pkey;
ALTER TABLE ONLY public.states DROP CONSTRAINT states_pkey;
ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pkey;
ALTER TABLE ONLY public.reviseds DROP CONSTRAINT reviseds_pkey;
ALTER TABLE ONLY public.reserves DROP CONSTRAINT reserves_pkey;
ALTER TABLE ONLY public.receiveds DROP CONSTRAINT receiveds_pkey;
ALTER TABLE ONLY public.permissions DROP CONSTRAINT permissions_pkey;
ALTER TABLE ONLY public.permissions DROP CONSTRAINT permissions_name_key;
ALTER TABLE ONLY public.permissions DROP CONSTRAINT permissions_display_name_key;
ALTER TABLE ONLY public.permission_role DROP CONSTRAINT permission_role_pkey;
ALTER TABLE ONLY public.permission_role DROP CONSTRAINT permission_role_permission_id_role_id_key;
ALTER TABLE ONLY public.oks DROP CONSTRAINT oks_pkey;
ALTER TABLE ONLY public.lockeds DROP CONSTRAINT lockeds_pkey;
ALTER TABLE ONLY public.hlists DROP CONSTRAINT lists_pkey;
ALTER TABLE ONLY public.libraries DROP CONSTRAINT libraries_pkey;
ALTER TABLE ONLY public.incorrects DROP CONSTRAINT incorrects_pkey;
ALTER TABLE ONLY public.holdingssets DROP CONSTRAINT holdingssets1_pkey;
ALTER TABLE ONLY public.holdings DROP CONSTRAINT holdings1_pkey;
ALTER TABLE ONLY public.notes DROP CONSTRAINT holding_tag_pkey;
ALTER TABLE ONLY public.hol_values DROP CONSTRAINT hol_values_use_model_srch_key;
ALTER TABLE ONLY public.hol_out_ptrn DROP CONSTRAINT hol_out_ptrn_sys1_sys2_g_key1;
ALTER TABLE ONLY public.hlist_holding DROP CONSTRAINT hlist_holding_pkey;
ALTER TABLE ONLY public.groups DROP CONSTRAINT groups_pkey;
ALTER TABLE ONLY public.group_holdingsset DROP CONSTRAINT group_holdingsset_pkey;
ALTER TABLE ONLY public.feedbacks DROP CONSTRAINT feedbacks_pkey;
ALTER TABLE ONLY public.deliveries DROP CONSTRAINT deliveries_pkey;
ALTER TABLE ONLY public.confirms DROP CONSTRAINT confirms_pkey;
ALTER TABLE ONLY public.comments DROP CONSTRAINT comments_pkey;
ALTER TABLE ONLY public.comments_categories DROP CONSTRAINT comments_categories_pkey;
ALTER TABLE ONLY public.assigned_roles DROP CONSTRAINT assigned_roles_pkey;
ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.traces ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.tags ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.states ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.roles ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.reviseds ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.reserves ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.receiveds ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.permissions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.permission_role ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.oks ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.notes ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.lockeds ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.libraries ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.incorrects ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.hol_values ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.hlists ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.hlist_holding ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.groups ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.group_holdingsset ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.feedbacks ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.deliveries ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.confirms ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.comments_categories ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.comments ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.assigned_roles ALTER COLUMN id DROP DEFAULT;
DROP SEQUENCE public.users_id_seq;
DROP TABLE public.users;
DROP SEQUENCE public.traces_id_seq;
DROP TABLE public.traces;
DROP TABLE public.tit_freq;
DROP SEQUENCE public.tags_id_seq;
DROP TABLE public.tags;
DROP TABLE public.ta_sim;
DROP SEQUENCE public.states_id_seq;
DROP TABLE public.states;
DROP SEQUENCE public.roles_id_seq;
DROP TABLE public.roles;
DROP SEQUENCE public.reviseds_id_seq;
DROP TABLE public.reviseds;
DROP SEQUENCE public.reserves_id_seq;
DROP TABLE public.reserves;
DROP SEQUENCE public.receiveds_id_seq;
DROP TABLE public.receiveds;
DROP SEQUENCE public.permissions_id_seq;
DROP TABLE public.permissions;
DROP SEQUENCE public.permission_role_id_seq;
DROP TABLE public.permission_role;
DROP TABLE public.password_reminders;
DROP SEQUENCE public.oks_id_seq;
DROP TABLE public.oks;
DROP TABLE public.migrations;
DROP SEQUENCE public.lockeds_id_seq;
DROP TABLE public.lockeds;
DROP SEQUENCE public.lists_id_seq;
DROP SEQUENCE public.libraries_id_seq;
DROP TABLE public.libraries;
DROP SEQUENCE public.incorrects_id_seq;
DROP TABLE public.incorrects;
DROP TABLE public.holdingssets;
DROP TABLE public.holdings;
DROP SEQUENCE public.holding_tag_id_seq;
DROP TABLE public.notes;
DROP SEQUENCE public.hol_values_id_seq;
DROP TABLE public.hol_values;
DROP TABLE public.hol_out_ptrn;
DROP TABLE public.hol_out;
DROP TABLE public.hlists;
DROP SEQUENCE public.hlist_holding_id_seq;
DROP TABLE public.hlist_holding;
DROP SEQUENCE public.groups_id_seq;
DROP TABLE public.groups;
DROP SEQUENCE public.group_holdingsset_id_seq;
DROP TABLE public.group_holdingsset;
DROP SEQUENCE public.feedbacks_id_seq;
DROP TABLE public.feedbacks;
DROP SEQUENCE public.deliveries_id_seq;
DROP TABLE public.deliveries;
DROP SEQUENCE public.confirms_id_seq;
DROP TABLE public.confirms;
DROP SEQUENCE public.comments_id_seq;
DROP SEQUENCE public.comments_categories_id_seq;
DROP TABLE public.comments_categories;
DROP TABLE public.comments;
DROP SEQUENCE public.assigned_roles_id_seq;
DROP TABLE public.assigned_roles;
DROP EXTENSION pg_trgm;
DROP EXTENSION plpgsql;
DROP SCHEMA public;
--
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO postgres;

--
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS 'standard public schema';


--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--
-- Name: pg_trgm; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS pg_trgm WITH SCHEMA public;


--
-- Name: EXTENSION pg_trgm; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pg_trgm IS 'text similarity measurement and index searching based on trigrams';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: assigned_roles; Type: TABLE; Schema: public; Owner: bispgadmin; Tablespace: 
--

CREATE TABLE assigned_roles (
    id integer NOT NULL,
    user_id integer NOT NULL,
    role_id integer NOT NULL
);


ALTER TABLE public.assigned_roles OWNER TO bispgadmin;

--
-- Name: assigned_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: bispgadmin
--

CREATE SEQUENCE assigned_roles_id_seq
    START WITH 3
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.assigned_roles_id_seq OWNER TO bispgadmin;

--
-- Name: assigned_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bispgadmin
--

ALTER SEQUENCE assigned_roles_id_seq OWNED BY assigned_roles.id;


--
-- Name: comments; Type: TABLE; Schema: public; Owner: bispgadmin; Tablespace: 
--

CREATE TABLE comments (
    id integer NOT NULL,
    user_id integer NOT NULL,
    holding_id integer NOT NULL,
    content text NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.comments OWNER TO bispgadmin;

--
-- Name: comments_categories; Type: TABLE; Schema: public; Owner: bispgadmin; Tablespace: 
--

CREATE TABLE comments_categories (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.comments_categories OWNER TO bispgadmin;

--
-- Name: comments_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: bispgadmin
--

CREATE SEQUENCE comments_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comments_categories_id_seq OWNER TO bispgadmin;

--
-- Name: comments_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bispgadmin
--

ALTER SEQUENCE comments_categories_id_seq OWNED BY comments_categories.id;


--
-- Name: comments_id_seq; Type: SEQUENCE; Schema: public; Owner: bispgadmin
--

CREATE SEQUENCE comments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comments_id_seq OWNER TO bispgadmin;

--
-- Name: comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bispgadmin
--

ALTER SEQUENCE comments_id_seq OWNED BY comments.id;


--
-- Name: confirms; Type: TABLE; Schema: public; Owner: bispgadmin; Tablespace: 
--

CREATE TABLE confirms (
    id integer NOT NULL,
    holdingsset_id integer NOT NULL,
    user_id integer NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.confirms OWNER TO bispgadmin;

--
-- Name: confirms_id_seq; Type: SEQUENCE; Schema: public; Owner: bispgadmin
--

CREATE SEQUENCE confirms_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.confirms_id_seq OWNER TO bispgadmin;

--
-- Name: confirms_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bispgadmin
--

ALTER SEQUENCE confirms_id_seq OWNED BY confirms.id;


--
-- Name: deliveries; Type: TABLE; Schema: public; Owner: bispgadmin; Tablespace: 
--

CREATE TABLE deliveries (
    id integer NOT NULL,
    hlist_id integer NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    user_id integer,
    received boolean DEFAULT false NOT NULL
);


ALTER TABLE public.deliveries OWNER TO bispgadmin;

--
-- Name: deliveries_id_seq; Type: SEQUENCE; Schema: public; Owner: bispgadmin
--

CREATE SEQUENCE deliveries_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.deliveries_id_seq OWNER TO bispgadmin;

--
-- Name: deliveries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bispgadmin
--

ALTER SEQUENCE deliveries_id_seq OWNED BY deliveries.id;


--
-- Name: feedbacks; Type: TABLE; Schema: public; Owner: bispgadmin; Tablespace: 
--

CREATE TABLE feedbacks (
    id integer NOT NULL,
    user_id integer NOT NULL,
    client character varying(255) NOT NULL,
    content text NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    url character varying(255)
);


ALTER TABLE public.feedbacks OWNER TO bispgadmin;

--
-- Name: feedbacks_id_seq; Type: SEQUENCE; Schema: public; Owner: bispgadmin
--

CREATE SEQUENCE feedbacks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.feedbacks_id_seq OWNER TO bispgadmin;

--
-- Name: feedbacks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bispgadmin
--

ALTER SEQUENCE feedbacks_id_seq OWNED BY feedbacks.id;


--
-- Name: group_holdingsset; Type: TABLE; Schema: public; Owner: bispgadmin; Tablespace: 
--

CREATE TABLE group_holdingsset (
    id integer NOT NULL,
    group_id integer NOT NULL,
    holdingsset_id integer NOT NULL,
    created_at timestamp(6) without time zone DEFAULT NULL::timestamp without time zone NOT NULL,
    updated_at timestamp(6) without time zone DEFAULT NULL::timestamp without time zone NOT NULL
);


ALTER TABLE public.group_holdingsset OWNER TO bispgadmin;

--
-- Name: group_holdingsset_id_seq; Type: SEQUENCE; Schema: public; Owner: bispgadmin
--

CREATE SEQUENCE group_holdingsset_id_seq
    START WITH 15
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.group_holdingsset_id_seq OWNER TO bispgadmin;

--
-- Name: group_holdingsset_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bispgadmin
--

ALTER SEQUENCE group_holdingsset_id_seq OWNED BY group_holdingsset.id;


--
-- Name: groups; Type: TABLE; Schema: public; Owner: bispgadmin; Tablespace: 
--

CREATE TABLE groups (
    id integer NOT NULL,
    name character varying(255) DEFAULT NULL::character varying NOT NULL,
    user_id integer NOT NULL,
    created_at timestamp(6) without time zone DEFAULT NULL::timestamp without time zone NOT NULL,
    updated_at timestamp(6) without time zone DEFAULT NULL::timestamp without time zone NOT NULL
);


ALTER TABLE public.groups OWNER TO bispgadmin;

--
-- Name: groups_id_seq; Type: SEQUENCE; Schema: public; Owner: bispgadmin
--

CREATE SEQUENCE groups_id_seq
    START WITH 20
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.groups_id_seq OWNER TO bispgadmin;

--
-- Name: groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bispgadmin
--

ALTER SEQUENCE groups_id_seq OWNED BY groups.id;


--
-- Name: hlist_holding; Type: TABLE; Schema: public; Owner: bispgadmin; Tablespace: 
--

CREATE TABLE hlist_holding (
    id integer NOT NULL,
    hlist_id integer NOT NULL,
    holding_id integer NOT NULL
);


ALTER TABLE public.hlist_holding OWNER TO bispgadmin;

--
-- Name: hlist_holding_id_seq; Type: SEQUENCE; Schema: public; Owner: bispgadmin
--

CREATE SEQUENCE hlist_holding_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hlist_holding_id_seq OWNER TO bispgadmin;

--
-- Name: hlist_holding_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bispgadmin
--

ALTER SEQUENCE hlist_holding_id_seq OWNED BY hlist_holding.id;


--
-- Name: hlists; Type: TABLE; Schema: public; Owner: bispgadmin; Tablespace: 
--

CREATE TABLE hlists (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    user_id integer NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    worker_id integer,
    revised boolean DEFAULT false NOT NULL,
    type character varying(255) DEFAULT 'control'::character varying NOT NULL
);


ALTER TABLE public.hlists OWNER TO bispgadmin;

--
-- Name: hol_out; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE hol_out (
    sys1 character varying,
    sys2 character varying,
    g integer,
    f008x character varying,
    f008y character varying,
    f022a character varying,
    f072a character varying,
    f245a character varying,
    f245b character varying,
    f245c character varying,
    f245n character varying,
    f245p character varying,
    f246a character varying,
    f260a character varying,
    f260b character varying,
    f300a character varying,
    f300b character varying,
    f300c character varying,
    f310a character varying,
    f362a character varying,
    f500a character varying,
    f505a character varying,
    f710a character varying,
    f770t character varying,
    f772t character varying,
    f780t character varying,
    f785t character varying,
    f852a character varying,
    f852b character varying,
    f852h character varying,
    f852j character varying,
    f866a character varying,
    f866c character varying,
    f866h character varying,
    f866z character varying,
    aux_ptrn character varying,
    exists_online boolean,
    years integer,
    flag character(1),
    force_aux boolean,
    force_owner boolean,
    has_incomplete_vols boolean,
    hbib character varying(255),
    hol_nrm character varying,
    i character(1),
    is_aux boolean,
    is_current boolean,
    is_owner boolean,
    is_pref character varying(5),
    j_ptrn character varying,
    library_id integer,
    locked boolean DEFAULT false NOT NULL,
    ocrr_nr integer,
    ocrr_ptrn character varying,
    ok2 boolean,
    pot_owner boolean,
    ptrn character varying,
    score real,
    size real DEFAULT (0)::real NOT NULL,
    tag_id integer,
    weight real,
    f_tit character varying,
    f260c character varying,
    f710b character varying,
    f245a_e character varying,
    f245b_e character varying,
    f245c_e character varying,
    f_tit_e character varying,
    f260a_e character varying,
    f260b_e character varying,
    f310a_e character varying,
    f362a_e character varying,
    f710a_e character varying,
    f780t_e character varying,
    f785t_e character varying,
    f852h_e character varying
);


ALTER TABLE public.hol_out OWNER TO postgres;

--
-- Name: hol_out_ptrn; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE hol_out_ptrn (
    sys1 character(13),
    sys2 character(13),
    g integer,
    is_owner boolean,
    ptrn character varying,
    ocrr_ptrn character varying,
    aux_ptrn character varying,
    j_ptrn character varying,
    weight real,
    ocrr_nr integer,
    is_aux boolean,
    pot_owner boolean
);


ALTER TABLE public.hol_out_ptrn OWNER TO postgres;

--
-- Name: hol_values; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE hol_values (
    id integer NOT NULL,
    use character(1),
    model character varying,
    prio character(1),
    upper character(1),
    srch_a character varying,
    srch character varying,
    repl character varying,
    write_val character varying,
    occ integer,
    lng character(2) DEFAULT '--'::bpchar,
    comment character varying,
    modtime timestamp without time zone DEFAULT now()
);


ALTER TABLE public.hol_values OWNER TO postgres;

--
-- Name: hol_values_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE hol_values_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hol_values_id_seq OWNER TO postgres;

--
-- Name: hol_values_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE hol_values_id_seq OWNED BY hol_values.id;


--
-- Name: notes; Type: TABLE; Schema: public; Owner: bispgadmin; Tablespace: 
--

CREATE TABLE notes (
    id integer NOT NULL,
    holding_id integer NOT NULL,
    tag_id integer NOT NULL,
    content character varying(255),
    user_id integer,
    created_at timestamp without time zone DEFAULT '2013-11-19 01:05:51'::timestamp without time zone NOT NULL,
    updated_at timestamp without time zone DEFAULT '2013-11-19 01:05:51'::timestamp without time zone NOT NULL
);


ALTER TABLE public.notes OWNER TO bispgadmin;

--
-- Name: holding_tag_id_seq; Type: SEQUENCE; Schema: public; Owner: bispgadmin
--

CREATE SEQUENCE holding_tag_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.holding_tag_id_seq OWNER TO bispgadmin;

--
-- Name: holding_tag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bispgadmin
--

ALTER SEQUENCE holding_tag_id_seq OWNED BY notes.id;


--
-- Name: holdings; Type: TABLE; Schema: public; Owner: bispgadmin; Tablespace: 
--

CREATE TABLE holdings (
    id integer NOT NULL,
    holdingsset_id integer,
    library_id integer,
    sys2 text,
    g integer,
    f022a character varying,
    f245a character varying,
    f245b character varying,
    f245c character varying,
    f260a character varying,
    score real,
    flag character(1),
    f260b character varying,
    f310a character varying,
    f710a character varying,
    f780t character varying,
    f785t character varying,
    f852b character varying,
    hol_nrm character varying,
    probability character varying,
    f008x character(4),
    f008y character(4),
    f362a character varying,
    f866a character varying,
    f866z character varying,
    f852h character varying,
    i character(1),
    is_owner boolean,
    ptrn text,
    ocrr_ptrn character varying,
    aux_ptrn character varying,
    j_ptrn character varying,
    weight real,
    ocrr_nr integer,
    is_aux boolean,
    pot_owner boolean,
    hbib character varying,
    f246a character varying,
    f300a character varying,
    f300b character varying,
    f300c character varying,
    f500a character varying,
    f505a character varying,
    f770t character varying,
    f772t character varying,
    f852a character varying,
    f852j character varying,
    f866c character varying,
    f866h character varying,
    exists_online boolean DEFAULT false,
    is_current boolean DEFAULT false,
    has_incomplete_vols boolean DEFAULT false,
    size real DEFAULT (0)::real NOT NULL,
    force_owner boolean,
    force_aux boolean,
    f866aupdated character varying,
    f866aupdatedby integer,
    delivered boolean DEFAULT false NOT NULL,
    received boolean DEFAULT false NOT NULL,
    f_tit character varying,
    f260c character varying,
    f710b character varying,
    f245a_e character varying,
    f245b_e character varying,
    f245c_e character varying,
    f_tit_e character varying,
    f260a_e character varying,
    f260b_e character varying,
    f310a_e character varying,
    f362a_e character varying,
    f710a_e character varying,
    f780t_e character varying,
    f785t_e character varying,
    state character varying(255) DEFAULT 'blank'::character varying NOT NULL,
    is_pref boolean DEFAULT false,
    force_blue boolean DEFAULT false NOT NULL,
    f245p character varying,
    f245n character varying,
    f852h_e character varying,
    years integer,
    f072a character varying
);


ALTER TABLE public.holdings OWNER TO bispgadmin;

--
-- Name: holdingssets; Type: TABLE; Schema: public; Owner: bispgadmin; Tablespace: 
--

CREATE TABLE holdingssets (
    id integer NOT NULL,
    sys1 character varying(500) DEFAULT NULL::character varying,
    f245a text DEFAULT NULL::character varying,
    ptrn text DEFAULT NULL::character varying,
    f008x character varying(4),
    holdings_number integer DEFAULT 0 NOT NULL,
    groups_number integer DEFAULT 0 NOT NULL,
    state character varying(255) DEFAULT 'blank'::character varying NOT NULL,
    locked integer,
    f852h_e character varying(255),
    recalled integer DEFAULT 0,
    autoconfirm integer
);


ALTER TABLE public.holdingssets OWNER TO bispgadmin;

--
-- Name: incorrects; Type: TABLE; Schema: public; Owner: bispgadmin; Tablespace: 
--

CREATE TABLE incorrects (
    id integer NOT NULL,
    holdingsset_id integer NOT NULL,
    user_id integer NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.incorrects OWNER TO bispgadmin;

--
-- Name: incorrects_id_seq; Type: SEQUENCE; Schema: public; Owner: bispgadmin
--

CREATE SEQUENCE incorrects_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.incorrects_id_seq OWNER TO bispgadmin;

--
-- Name: incorrects_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bispgadmin
--

ALTER SEQUENCE incorrects_id_seq OWNED BY incorrects.id;


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
-- Name: lists_id_seq; Type: SEQUENCE; Schema: public; Owner: bispgadmin
--

CREATE SEQUENCE lists_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.lists_id_seq OWNER TO bispgadmin;

--
-- Name: lists_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bispgadmin
--

ALTER SEQUENCE lists_id_seq OWNED BY hlists.id;


--
-- Name: lockeds; Type: TABLE; Schema: public; Owner: bispgadmin; Tablespace: 
--

CREATE TABLE lockeds (
    id integer NOT NULL,
    holding_id integer NOT NULL,
    user_id integer NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    comments character varying(255)
);


ALTER TABLE public.lockeds OWNER TO bispgadmin;

--
-- Name: lockeds_id_seq; Type: SEQUENCE; Schema: public; Owner: bispgadmin
--

CREATE SEQUENCE lockeds_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.lockeds_id_seq OWNER TO bispgadmin;

--
-- Name: lockeds_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bispgadmin
--

ALTER SEQUENCE lockeds_id_seq OWNED BY lockeds.id;


--
-- Name: migrations; Type: TABLE; Schema: public; Owner: bispgadmin; Tablespace: 
--

CREATE TABLE migrations (
    migration character varying(255) DEFAULT NULL::character varying NOT NULL,
    batch integer NOT NULL
);


ALTER TABLE public.migrations OWNER TO bispgadmin;

--
-- Name: oks; Type: TABLE; Schema: public; Owner: bispgadmin; Tablespace: 
--

CREATE TABLE oks (
    id integer NOT NULL,
    holding_id integer NOT NULL,
    user_id integer NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.oks OWNER TO bispgadmin;

--
-- Name: oks_id_seq; Type: SEQUENCE; Schema: public; Owner: bispgadmin
--

CREATE SEQUENCE oks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.oks_id_seq OWNER TO bispgadmin;

--
-- Name: oks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bispgadmin
--

ALTER SEQUENCE oks_id_seq OWNED BY oks.id;


--
-- Name: password_reminders; Type: TABLE; Schema: public; Owner: bispgadmin; Tablespace: 
--

CREATE TABLE password_reminders (
    email character varying(255) DEFAULT NULL::character varying NOT NULL,
    token character varying(255) DEFAULT NULL::character varying NOT NULL,
    created_at timestamp(6) without time zone DEFAULT NULL::timestamp without time zone NOT NULL
);


ALTER TABLE public.password_reminders OWNER TO bispgadmin;

--
-- Name: permission_role; Type: TABLE; Schema: public; Owner: bispgadmin; Tablespace: 
--

CREATE TABLE permission_role (
    id integer NOT NULL,
    permission_id integer NOT NULL,
    role_id integer NOT NULL
);


ALTER TABLE public.permission_role OWNER TO bispgadmin;

--
-- Name: permission_role_id_seq; Type: SEQUENCE; Schema: public; Owner: bispgadmin
--

CREATE SEQUENCE permission_role_id_seq
    START WITH 8
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.permission_role_id_seq OWNER TO bispgadmin;

--
-- Name: permission_role_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bispgadmin
--

ALTER SEQUENCE permission_role_id_seq OWNED BY permission_role.id;


--
-- Name: permissions; Type: TABLE; Schema: public; Owner: bispgadmin; Tablespace: 
--

CREATE TABLE permissions (
    id integer NOT NULL,
    name character varying(255) DEFAULT NULL::character varying NOT NULL,
    display_name character varying(255) DEFAULT NULL::character varying NOT NULL
);


ALTER TABLE public.permissions OWNER TO bispgadmin;

--
-- Name: permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: bispgadmin
--

CREATE SEQUENCE permissions_id_seq
    START WITH 10
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.permissions_id_seq OWNER TO bispgadmin;

--
-- Name: permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bispgadmin
--

ALTER SEQUENCE permissions_id_seq OWNED BY permissions.id;


--
-- Name: receiveds; Type: TABLE; Schema: public; Owner: bispgadmin; Tablespace: 
--

CREATE TABLE receiveds (
    id integer NOT NULL,
    holding_id integer NOT NULL,
    user_id integer NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.receiveds OWNER TO bispgadmin;

--
-- Name: receiveds_id_seq; Type: SEQUENCE; Schema: public; Owner: bispgadmin
--

CREATE SEQUENCE receiveds_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.receiveds_id_seq OWNER TO bispgadmin;

--
-- Name: receiveds_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bispgadmin
--

ALTER SEQUENCE receiveds_id_seq OWNED BY receiveds.id;


--
-- Name: reserves; Type: TABLE; Schema: public; Owner: bispgadmin; Tablespace: 
--

CREATE TABLE reserves (
    id integer NOT NULL,
    holding_id integer NOT NULL,
    user_id integer NOT NULL,
    description text NOT NULL,
    created_at timestamp(6) without time zone DEFAULT NULL::timestamp without time zone NOT NULL,
    updated_at timestamp(6) without time zone DEFAULT NULL::timestamp without time zone NOT NULL
);


ALTER TABLE public.reserves OWNER TO bispgadmin;

--
-- Name: reserves_id_seq; Type: SEQUENCE; Schema: public; Owner: bispgadmin
--

CREATE SEQUENCE reserves_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.reserves_id_seq OWNER TO bispgadmin;

--
-- Name: reserves_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bispgadmin
--

ALTER SEQUENCE reserves_id_seq OWNED BY reserves.id;


--
-- Name: reviseds; Type: TABLE; Schema: public; Owner: bispgadmin; Tablespace: 
--

CREATE TABLE reviseds (
    id integer NOT NULL,
    holding_id integer NOT NULL,
    user_id integer NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.reviseds OWNER TO bispgadmin;

--
-- Name: reviseds_id_seq; Type: SEQUENCE; Schema: public; Owner: bispgadmin
--

CREATE SEQUENCE reviseds_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.reviseds_id_seq OWNER TO bispgadmin;

--
-- Name: reviseds_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bispgadmin
--

ALTER SEQUENCE reviseds_id_seq OWNED BY reviseds.id;


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
-- Name: states; Type: TABLE; Schema: public; Owner: bispgadmin; Tablespace: 
--

CREATE TABLE states (
    id integer NOT NULL,
    holding_id integer NOT NULL,
    user_id integer NOT NULL,
    state character varying(255) NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.states OWNER TO bispgadmin;

--
-- Name: states_id_seq; Type: SEQUENCE; Schema: public; Owner: bispgadmin
--

CREATE SEQUENCE states_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.states_id_seq OWNER TO bispgadmin;

--
-- Name: states_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bispgadmin
--

ALTER SEQUENCE states_id_seq OWNED BY states.id;


--
-- Name: ta_sim; Type: TABLE; Schema: public; Owner: bispgadmin; Tablespace: 
--

CREATE TABLE ta_sim (
    sys1 character(10),
    sys2 character(10),
    score integer,
    flag character(1),
    upd timestamp without time zone
);


ALTER TABLE public.ta_sim OWNER TO bispgadmin;

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
-- Name: tit_freq; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tit_freq (
    f245a character varying,
    occ integer
);


ALTER TABLE public.tit_freq OWNER TO postgres;

--
-- Name: traces; Type: TABLE; Schema: public; Owner: bispgadmin; Tablespace: 
--

CREATE TABLE traces (
    id integer NOT NULL,
    user_id integer NOT NULL,
    action character varying(255) NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    object_type text,
    object_id integer
);


ALTER TABLE public.traces OWNER TO bispgadmin;

--
-- Name: traces_id_seq; Type: SEQUENCE; Schema: public; Owner: bispgadmin
--

CREATE SEQUENCE traces_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.traces_id_seq OWNER TO bispgadmin;

--
-- Name: traces_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bispgadmin
--

ALTER SEQUENCE traces_id_seq OWNED BY traces.id;


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

ALTER TABLE ONLY assigned_roles ALTER COLUMN id SET DEFAULT nextval('assigned_roles_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: bispgadmin
--

ALTER TABLE ONLY comments ALTER COLUMN id SET DEFAULT nextval('comments_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: bispgadmin
--

ALTER TABLE ONLY comments_categories ALTER COLUMN id SET DEFAULT nextval('comments_categories_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: bispgadmin
--

ALTER TABLE ONLY confirms ALTER COLUMN id SET DEFAULT nextval('confirms_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: bispgadmin
--

ALTER TABLE ONLY deliveries ALTER COLUMN id SET DEFAULT nextval('deliveries_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: bispgadmin
--

ALTER TABLE ONLY feedbacks ALTER COLUMN id SET DEFAULT nextval('feedbacks_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: bispgadmin
--

ALTER TABLE ONLY group_holdingsset ALTER COLUMN id SET DEFAULT nextval('group_holdingsset_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: bispgadmin
--

ALTER TABLE ONLY groups ALTER COLUMN id SET DEFAULT nextval('groups_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: bispgadmin
--

ALTER TABLE ONLY hlist_holding ALTER COLUMN id SET DEFAULT nextval('hlist_holding_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: bispgadmin
--

ALTER TABLE ONLY hlists ALTER COLUMN id SET DEFAULT nextval('lists_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY hol_values ALTER COLUMN id SET DEFAULT nextval('hol_values_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: bispgadmin
--

ALTER TABLE ONLY incorrects ALTER COLUMN id SET DEFAULT nextval('incorrects_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: bispgadmin
--

ALTER TABLE ONLY libraries ALTER COLUMN id SET DEFAULT nextval('libraries_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: bispgadmin
--

ALTER TABLE ONLY lockeds ALTER COLUMN id SET DEFAULT nextval('lockeds_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: bispgadmin
--

ALTER TABLE ONLY notes ALTER COLUMN id SET DEFAULT nextval('holding_tag_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: bispgadmin
--

ALTER TABLE ONLY oks ALTER COLUMN id SET DEFAULT nextval('oks_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: bispgadmin
--

ALTER TABLE ONLY permission_role ALTER COLUMN id SET DEFAULT nextval('permission_role_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: bispgadmin
--

ALTER TABLE ONLY permissions ALTER COLUMN id SET DEFAULT nextval('permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: bispgadmin
--

ALTER TABLE ONLY receiveds ALTER COLUMN id SET DEFAULT nextval('receiveds_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: bispgadmin
--

ALTER TABLE ONLY reserves ALTER COLUMN id SET DEFAULT nextval('reserves_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: bispgadmin
--

ALTER TABLE ONLY reviseds ALTER COLUMN id SET DEFAULT nextval('reviseds_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: bispgadmin
--

ALTER TABLE ONLY roles ALTER COLUMN id SET DEFAULT nextval('roles_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: bispgadmin
--

ALTER TABLE ONLY states ALTER COLUMN id SET DEFAULT nextval('states_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: bispgadmin
--

ALTER TABLE ONLY tags ALTER COLUMN id SET DEFAULT nextval('tags_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: bispgadmin
--

ALTER TABLE ONLY traces ALTER COLUMN id SET DEFAULT nextval('traces_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: bispgadmin
--

ALTER TABLE ONLY users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);


--
-- Name: assigned_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: bispgadmin; Tablespace: 
--

ALTER TABLE ONLY assigned_roles
    ADD CONSTRAINT assigned_roles_pkey PRIMARY KEY (id);


--
-- Name: comments_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: bispgadmin; Tablespace: 
--

ALTER TABLE ONLY comments_categories
    ADD CONSTRAINT comments_categories_pkey PRIMARY KEY (id);


--
-- Name: comments_pkey; Type: CONSTRAINT; Schema: public; Owner: bispgadmin; Tablespace: 
--

ALTER TABLE ONLY comments
    ADD CONSTRAINT comments_pkey PRIMARY KEY (id);


--
-- Name: confirms_pkey; Type: CONSTRAINT; Schema: public; Owner: bispgadmin; Tablespace: 
--

ALTER TABLE ONLY confirms
    ADD CONSTRAINT confirms_pkey PRIMARY KEY (id);


--
-- Name: deliveries_pkey; Type: CONSTRAINT; Schema: public; Owner: bispgadmin; Tablespace: 
--

ALTER TABLE ONLY deliveries
    ADD CONSTRAINT deliveries_pkey PRIMARY KEY (id);


--
-- Name: feedbacks_pkey; Type: CONSTRAINT; Schema: public; Owner: bispgadmin; Tablespace: 
--

ALTER TABLE ONLY feedbacks
    ADD CONSTRAINT feedbacks_pkey PRIMARY KEY (id);


--
-- Name: group_holdingsset_pkey; Type: CONSTRAINT; Schema: public; Owner: bispgadmin; Tablespace: 
--

ALTER TABLE ONLY group_holdingsset
    ADD CONSTRAINT group_holdingsset_pkey PRIMARY KEY (id);


--
-- Name: groups_pkey; Type: CONSTRAINT; Schema: public; Owner: bispgadmin; Tablespace: 
--

ALTER TABLE ONLY groups
    ADD CONSTRAINT groups_pkey PRIMARY KEY (id);


--
-- Name: hlist_holding_pkey; Type: CONSTRAINT; Schema: public; Owner: bispgadmin; Tablespace: 
--

ALTER TABLE ONLY hlist_holding
    ADD CONSTRAINT hlist_holding_pkey PRIMARY KEY (id);


--
-- Name: hol_out_ptrn_sys1_sys2_g_key1; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY hol_out_ptrn
    ADD CONSTRAINT hol_out_ptrn_sys1_sys2_g_key1 UNIQUE (sys1, sys2, g);


--
-- Name: hol_values_use_model_srch_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY hol_values
    ADD CONSTRAINT hol_values_use_model_srch_key UNIQUE (use, model, srch);


--
-- Name: holding_tag_pkey; Type: CONSTRAINT; Schema: public; Owner: bispgadmin; Tablespace: 
--

ALTER TABLE ONLY notes
    ADD CONSTRAINT holding_tag_pkey PRIMARY KEY (id);


--
-- Name: holdings1_pkey; Type: CONSTRAINT; Schema: public; Owner: bispgadmin; Tablespace: 
--

ALTER TABLE ONLY holdings
    ADD CONSTRAINT holdings1_pkey PRIMARY KEY (id);


--
-- Name: holdingssets1_pkey; Type: CONSTRAINT; Schema: public; Owner: bispgadmin; Tablespace: 
--

ALTER TABLE ONLY holdingssets
    ADD CONSTRAINT holdingssets1_pkey PRIMARY KEY (id);


--
-- Name: incorrects_pkey; Type: CONSTRAINT; Schema: public; Owner: bispgadmin; Tablespace: 
--

ALTER TABLE ONLY incorrects
    ADD CONSTRAINT incorrects_pkey PRIMARY KEY (id);


--
-- Name: libraries_pkey; Type: CONSTRAINT; Schema: public; Owner: bispgadmin; Tablespace: 
--

ALTER TABLE ONLY libraries
    ADD CONSTRAINT libraries_pkey PRIMARY KEY (id);


--
-- Name: lists_pkey; Type: CONSTRAINT; Schema: public; Owner: bispgadmin; Tablespace: 
--

ALTER TABLE ONLY hlists
    ADD CONSTRAINT lists_pkey PRIMARY KEY (id);


--
-- Name: lockeds_pkey; Type: CONSTRAINT; Schema: public; Owner: bispgadmin; Tablespace: 
--

ALTER TABLE ONLY lockeds
    ADD CONSTRAINT lockeds_pkey PRIMARY KEY (id);


--
-- Name: oks_pkey; Type: CONSTRAINT; Schema: public; Owner: bispgadmin; Tablespace: 
--

ALTER TABLE ONLY oks
    ADD CONSTRAINT oks_pkey PRIMARY KEY (id);


--
-- Name: permission_role_permission_id_role_id_key; Type: CONSTRAINT; Schema: public; Owner: bispgadmin; Tablespace: 
--

ALTER TABLE ONLY permission_role
    ADD CONSTRAINT permission_role_permission_id_role_id_key UNIQUE (permission_id, role_id);


--
-- Name: permission_role_pkey; Type: CONSTRAINT; Schema: public; Owner: bispgadmin; Tablespace: 
--

ALTER TABLE ONLY permission_role
    ADD CONSTRAINT permission_role_pkey PRIMARY KEY (id);


--
-- Name: permissions_display_name_key; Type: CONSTRAINT; Schema: public; Owner: bispgadmin; Tablespace: 
--

ALTER TABLE ONLY permissions
    ADD CONSTRAINT permissions_display_name_key UNIQUE (display_name);


--
-- Name: permissions_name_key; Type: CONSTRAINT; Schema: public; Owner: bispgadmin; Tablespace: 
--

ALTER TABLE ONLY permissions
    ADD CONSTRAINT permissions_name_key UNIQUE (name);


--
-- Name: permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: bispgadmin; Tablespace: 
--

ALTER TABLE ONLY permissions
    ADD CONSTRAINT permissions_pkey PRIMARY KEY (id);


--
-- Name: receiveds_pkey; Type: CONSTRAINT; Schema: public; Owner: bispgadmin; Tablespace: 
--

ALTER TABLE ONLY receiveds
    ADD CONSTRAINT receiveds_pkey PRIMARY KEY (id);


--
-- Name: reserves_pkey; Type: CONSTRAINT; Schema: public; Owner: bispgadmin; Tablespace: 
--

ALTER TABLE ONLY reserves
    ADD CONSTRAINT reserves_pkey PRIMARY KEY (id);


--
-- Name: reviseds_pkey; Type: CONSTRAINT; Schema: public; Owner: bispgadmin; Tablespace: 
--

ALTER TABLE ONLY reviseds
    ADD CONSTRAINT reviseds_pkey PRIMARY KEY (id);


--
-- Name: roles_pkey; Type: CONSTRAINT; Schema: public; Owner: bispgadmin; Tablespace: 
--

ALTER TABLE ONLY roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);


--
-- Name: states_pkey; Type: CONSTRAINT; Schema: public; Owner: bispgadmin; Tablespace: 
--

ALTER TABLE ONLY states
    ADD CONSTRAINT states_pkey PRIMARY KEY (id);


--
-- Name: tags_pkey; Type: CONSTRAINT; Schema: public; Owner: bispgadmin; Tablespace: 
--

ALTER TABLE ONLY tags
    ADD CONSTRAINT tags_pkey PRIMARY KEY (id);


--
-- Name: traces_pkey; Type: CONSTRAINT; Schema: public; Owner: bispgadmin; Tablespace: 
--

ALTER TABLE ONLY traces
    ADD CONSTRAINT traces_pkey PRIMARY KEY (id);


--
-- Name: users_pkey; Type: CONSTRAINT; Schema: public; Owner: bispgadmin; Tablespace: 
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: assigned_roles_role_id_index; Type: INDEX; Schema: public; Owner: bispgadmin; Tablespace: 
--

CREATE INDEX assigned_roles_role_id_index ON assigned_roles USING btree (role_id);


--
-- Name: assigned_roles_user_id_index; Type: INDEX; Schema: public; Owner: bispgadmin; Tablespace: 
--

CREATE INDEX assigned_roles_user_id_index ON assigned_roles USING btree (user_id);


--
-- Name: f008x; Type: INDEX; Schema: public; Owner: bispgadmin; Tablespace: 
--

CREATE INDEX f008x ON holdings USING btree (f008x);


--
-- Name: f008y; Type: INDEX; Schema: public; Owner: bispgadmin; Tablespace: 
--

CREATE INDEX f008y ON holdings USING btree (f008y);


--
-- Name: f022a; Type: INDEX; Schema: public; Owner: bispgadmin; Tablespace: 
--

CREATE INDEX f022a ON holdings USING btree (f022a);


--
-- Name: f022a_gin; Type: INDEX; Schema: public; Owner: bispgadmin; Tablespace: 
--

CREATE INDEX f022a_gin ON holdings USING gin (to_tsvector('german'::regconfig, (f022a)::text));


--
-- Name: f245a; Type: INDEX; Schema: public; Owner: bispgadmin; Tablespace: 
--

CREATE INDEX f245a ON holdings USING btree (f245a);


--
-- Name: f245a_e_gin; Type: INDEX; Schema: public; Owner: bispgadmin; Tablespace: 
--

CREATE INDEX f245a_e_gin ON holdings USING gin (to_tsvector('german'::regconfig, (f245a_e)::text));


--
-- Name: f245a_gin; Type: INDEX; Schema: public; Owner: bispgadmin; Tablespace: 
--

CREATE INDEX f245a_gin ON holdings USING gin (to_tsvector('german'::regconfig, (f245a)::text));


--
-- Name: f245b; Type: INDEX; Schema: public; Owner: bispgadmin; Tablespace: 
--

CREATE INDEX f245b ON holdings USING btree (f245b);


--
-- Name: f245b_e_gin; Type: INDEX; Schema: public; Owner: bispgadmin; Tablespace: 
--

CREATE INDEX f245b_e_gin ON holdings USING gin (to_tsvector('german'::regconfig, (f245b_e)::text));


--
-- Name: f245b_gin; Type: INDEX; Schema: public; Owner: bispgadmin; Tablespace: 
--

CREATE INDEX f245b_gin ON holdings USING gin (to_tsvector('german'::regconfig, (f245b)::text));


--
-- Name: f245c; Type: INDEX; Schema: public; Owner: bispgadmin; Tablespace: 
--

CREATE INDEX f245c ON holdings USING btree (f245c);


--
-- Name: f245c_e_gin; Type: INDEX; Schema: public; Owner: bispgadmin; Tablespace: 
--

CREATE INDEX f245c_e_gin ON holdings USING gin (to_tsvector('german'::regconfig, (f245c_e)::text));


--
-- Name: f245c_gin; Type: INDEX; Schema: public; Owner: bispgadmin; Tablespace: 
--

CREATE INDEX f245c_gin ON holdings USING gin (to_tsvector('german'::regconfig, (f245c)::text));


--
-- Name: f260a; Type: INDEX; Schema: public; Owner: bispgadmin; Tablespace: 
--

CREATE INDEX f260a ON holdings USING btree (f260a);


--
-- Name: f260a_e_gin; Type: INDEX; Schema: public; Owner: bispgadmin; Tablespace: 
--

CREATE INDEX f260a_e_gin ON holdings USING gin (to_tsvector('german'::regconfig, (f260a_e)::text));


--
-- Name: f260a_gin; Type: INDEX; Schema: public; Owner: bispgadmin; Tablespace: 
--

CREATE INDEX f260a_gin ON holdings USING gin (to_tsvector('german'::regconfig, (f260a)::text));


--
-- Name: f260b; Type: INDEX; Schema: public; Owner: bispgadmin; Tablespace: 
--

CREATE INDEX f260b ON holdings USING btree (f260b);


--
-- Name: f260b_e_gin; Type: INDEX; Schema: public; Owner: bispgadmin; Tablespace: 
--

CREATE INDEX f260b_e_gin ON holdings USING gin (to_tsvector('german'::regconfig, (f260b_e)::text));


--
-- Name: f260b_gin; Type: INDEX; Schema: public; Owner: bispgadmin; Tablespace: 
--

CREATE INDEX f260b_gin ON holdings USING gin (to_tsvector('german'::regconfig, (f260b)::text));


--
-- Name: f260c; Type: INDEX; Schema: public; Owner: bispgadmin; Tablespace: 
--

CREATE INDEX f260c ON holdings USING btree (f260c);


--
-- Name: f260c_gin; Type: INDEX; Schema: public; Owner: bispgadmin; Tablespace: 
--

CREATE INDEX f260c_gin ON holdings USING gin (to_tsvector('german'::regconfig, (f260c)::text));


--
-- Name: f310a; Type: INDEX; Schema: public; Owner: bispgadmin; Tablespace: 
--

CREATE INDEX f310a ON holdings USING btree (f310a);


--
-- Name: f310a_gin; Type: INDEX; Schema: public; Owner: bispgadmin; Tablespace: 
--

CREATE INDEX f310a_gin ON holdings USING gin (to_tsvector('german'::regconfig, (f310a)::text));


--
-- Name: f362a; Type: INDEX; Schema: public; Owner: bispgadmin; Tablespace: 
--

CREATE INDEX f362a ON holdings USING btree (f362a);


--
-- Name: f362a_gin; Type: INDEX; Schema: public; Owner: bispgadmin; Tablespace: 
--

CREATE INDEX f362a_gin ON holdings USING gin (to_tsvector('german'::regconfig, (f362a)::text));


--
-- Name: f710a; Type: INDEX; Schema: public; Owner: bispgadmin; Tablespace: 
--

CREATE INDEX f710a ON holdings USING btree (f710a);


--
-- Name: f710a_e_gin; Type: INDEX; Schema: public; Owner: bispgadmin; Tablespace: 
--

CREATE INDEX f710a_e_gin ON holdings USING gin (to_tsvector('german'::regconfig, (f710a_e)::text));


--
-- Name: f710a_gin; Type: INDEX; Schema: public; Owner: bispgadmin; Tablespace: 
--

CREATE INDEX f710a_gin ON holdings USING gin (to_tsvector('german'::regconfig, (f710a)::text));


--
-- Name: f770t; Type: INDEX; Schema: public; Owner: bispgadmin; Tablespace: 
--

CREATE INDEX f770t ON holdings USING btree (f770t);


--
-- Name: f770t_gin; Type: INDEX; Schema: public; Owner: bispgadmin; Tablespace: 
--

CREATE INDEX f770t_gin ON holdings USING gin (to_tsvector('german'::regconfig, (f770t)::text));


--
-- Name: f780t; Type: INDEX; Schema: public; Owner: bispgadmin; Tablespace: 
--

CREATE INDEX f780t ON holdings USING btree (f780t);


--
-- Name: f780t_e_gin; Type: INDEX; Schema: public; Owner: bispgadmin; Tablespace: 
--

CREATE INDEX f780t_e_gin ON holdings USING gin (to_tsvector('german'::regconfig, (f780t_e)::text));


--
-- Name: f780t_gin; Type: INDEX; Schema: public; Owner: bispgadmin; Tablespace: 
--

CREATE INDEX f780t_gin ON holdings USING gin (to_tsvector('german'::regconfig, (f780t)::text));


--
-- Name: f785t_e_gin; Type: INDEX; Schema: public; Owner: bispgadmin; Tablespace: 
--

CREATE INDEX f785t_e_gin ON holdings USING gin (to_tsvector('german'::regconfig, (f785t_e)::text));


--
-- Name: f785t_gin; Type: INDEX; Schema: public; Owner: bispgadmin; Tablespace: 
--

CREATE INDEX f785t_gin ON holdings USING gin (to_tsvector('german'::regconfig, (f785t)::text));


--
-- Name: f852a_gin; Type: INDEX; Schema: public; Owner: bispgadmin; Tablespace: 
--

CREATE INDEX f852a_gin ON holdings USING gin (to_tsvector('german'::regconfig, (f852a)::text));


--
-- Name: f852h; Type: INDEX; Schema: public; Owner: bispgadmin; Tablespace: 
--

CREATE INDEX f852h ON holdings USING btree (f852h);


--
-- Name: f852h_gin; Type: INDEX; Schema: public; Owner: bispgadmin; Tablespace: 
--

CREATE INDEX f852h_gin ON holdings USING gin (to_tsvector('german'::regconfig, (f852h)::text));


--
-- Name: f866a; Type: INDEX; Schema: public; Owner: bispgadmin; Tablespace: 
--

CREATE INDEX f866a ON holdings USING btree (f866a);


--
-- Name: f866a_gin; Type: INDEX; Schema: public; Owner: bispgadmin; Tablespace: 
--

CREATE INDEX f866a_gin ON holdings USING gin (to_tsvector('german'::regconfig, (f866a)::text));


--
-- Name: f_tit_e_gin; Type: INDEX; Schema: public; Owner: bispgadmin; Tablespace: 
--

CREATE INDEX f_tit_e_gin ON holdings USING gin (to_tsvector('german'::regconfig, (f_tit_e)::text));


--
-- Name: f_tit_gin; Type: INDEX; Schema: public; Owner: bispgadmin; Tablespace: 
--

CREATE INDEX f_tit_gin ON holdings USING gin (to_tsvector('german'::regconfig, (f_tit)::text));


--
-- Name: hlist_holding_hlist_id_index; Type: INDEX; Schema: public; Owner: bispgadmin; Tablespace: 
--

CREATE INDEX hlist_holding_hlist_id_index ON hlist_holding USING btree (hlist_id);


--
-- Name: hlist_holding_holding_id_index; Type: INDEX; Schema: public; Owner: bispgadmin; Tablespace: 
--

CREATE INDEX hlist_holding_holding_id_index ON hlist_holding USING btree (holding_id);


--
-- Name: holding_tag_holding_id_index; Type: INDEX; Schema: public; Owner: bispgadmin; Tablespace: 
--

CREATE INDEX holding_tag_holding_id_index ON notes USING btree (holding_id);


--
-- Name: holding_tag_tag_id_index; Type: INDEX; Schema: public; Owner: bispgadmin; Tablespace: 
--

CREATE INDEX holding_tag_tag_id_index ON notes USING btree (tag_id);


--
-- Name: holdings_state; Type: INDEX; Schema: public; Owner: bispgadmin; Tablespace: 
--

CREATE INDEX holdings_state ON holdings USING btree (state);


--
-- Name: holdingsset_id; Type: INDEX; Schema: public; Owner: bispgadmin; Tablespace: 
--

CREATE INDEX holdingsset_id ON holdings USING btree (holdingsset_id);


--
-- Name: holdingsset_id_c; Type: INDEX; Schema: public; Owner: bispgadmin; Tablespace: 
--

CREATE INDEX holdingsset_id_c ON confirms USING btree (holdingsset_id);


--
-- Name: holdingsset_id_state; Type: INDEX; Schema: public; Owner: bispgadmin; Tablespace: 
--

CREATE INDEX holdingsset_id_state ON holdings USING btree (holdingsset_id, state);


--
-- Name: holdingssets_state; Type: INDEX; Schema: public; Owner: bispgadmin; Tablespace: 
--

CREATE INDEX holdingssets_state ON holdingssets USING btree (state);


--
-- Name: permission_role_permission_id_index; Type: INDEX; Schema: public; Owner: bispgadmin; Tablespace: 
--

CREATE INDEX permission_role_permission_id_index ON permission_role USING btree (permission_id);


--
-- Name: permission_role_role_id_index; Type: INDEX; Schema: public; Owner: bispgadmin; Tablespace: 
--

CREATE INDEX permission_role_role_id_index ON permission_role USING btree (role_id);


--
-- Name: assigned_roles_role_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: bispgadmin
--

ALTER TABLE ONLY assigned_roles
    ADD CONSTRAINT assigned_roles_role_id_fkey FOREIGN KEY (role_id) REFERENCES roles(id);


--
-- Name: assigned_roles_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: bispgadmin
--

ALTER TABLE ONLY assigned_roles
    ADD CONSTRAINT assigned_roles_user_id_fkey FOREIGN KEY (user_id) REFERENCES users(id);


--
-- Name: hlist_holding_hlist_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: bispgadmin
--

ALTER TABLE ONLY hlist_holding
    ADD CONSTRAINT hlist_holding_hlist_id_foreign FOREIGN KEY (hlist_id) REFERENCES hlists(id) ON DELETE CASCADE;


--
-- Name: holding_tag_tag_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: bispgadmin
--

ALTER TABLE ONLY notes
    ADD CONSTRAINT holding_tag_tag_id_foreign FOREIGN KEY (tag_id) REFERENCES tags(id) ON DELETE CASCADE;


--
-- Name: permission_role_permission_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: bispgadmin
--

ALTER TABLE ONLY permission_role
    ADD CONSTRAINT permission_role_permission_id_fkey FOREIGN KEY (permission_id) REFERENCES permissions(id);


--
-- Name: permission_role_role_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: bispgadmin
--

ALTER TABLE ONLY permission_role
    ADD CONSTRAINT permission_role_role_id_fkey FOREIGN KEY (role_id) REFERENCES roles(id);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;
GRANT ALL ON SCHEMA public TO bispgadmin;


--
-- Name: assigned_roles; Type: ACL; Schema: public; Owner: bispgadmin
--

REVOKE ALL ON TABLE assigned_roles FROM PUBLIC;
REVOKE ALL ON TABLE assigned_roles FROM bispgadmin;
GRANT ALL ON TABLE assigned_roles TO bispgadmin;


--
-- Name: assigned_roles_id_seq; Type: ACL; Schema: public; Owner: bispgadmin
--

REVOKE ALL ON SEQUENCE assigned_roles_id_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE assigned_roles_id_seq FROM bispgadmin;
GRANT ALL ON SEQUENCE assigned_roles_id_seq TO bispgadmin;


--
-- Name: comments; Type: ACL; Schema: public; Owner: bispgadmin
--

REVOKE ALL ON TABLE comments FROM PUBLIC;
REVOKE ALL ON TABLE comments FROM bispgadmin;
GRANT ALL ON TABLE comments TO bispgadmin;


--
-- Name: comments_categories; Type: ACL; Schema: public; Owner: bispgadmin
--

REVOKE ALL ON TABLE comments_categories FROM PUBLIC;
REVOKE ALL ON TABLE comments_categories FROM bispgadmin;
GRANT ALL ON TABLE comments_categories TO bispgadmin;


--
-- Name: comments_categories_id_seq; Type: ACL; Schema: public; Owner: bispgadmin
--

REVOKE ALL ON SEQUENCE comments_categories_id_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE comments_categories_id_seq FROM bispgadmin;
GRANT ALL ON SEQUENCE comments_categories_id_seq TO bispgadmin;


--
-- Name: comments_id_seq; Type: ACL; Schema: public; Owner: bispgadmin
--

REVOKE ALL ON SEQUENCE comments_id_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE comments_id_seq FROM bispgadmin;
GRANT ALL ON SEQUENCE comments_id_seq TO bispgadmin;


--
-- Name: confirms; Type: ACL; Schema: public; Owner: bispgadmin
--

REVOKE ALL ON TABLE confirms FROM PUBLIC;
REVOKE ALL ON TABLE confirms FROM bispgadmin;
GRANT ALL ON TABLE confirms TO bispgadmin;


--
-- Name: confirms_id_seq; Type: ACL; Schema: public; Owner: bispgadmin
--

REVOKE ALL ON SEQUENCE confirms_id_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE confirms_id_seq FROM bispgadmin;
GRANT ALL ON SEQUENCE confirms_id_seq TO bispgadmin;


--
-- Name: deliveries; Type: ACL; Schema: public; Owner: bispgadmin
--

REVOKE ALL ON TABLE deliveries FROM PUBLIC;
REVOKE ALL ON TABLE deliveries FROM bispgadmin;
GRANT ALL ON TABLE deliveries TO bispgadmin;


--
-- Name: deliveries_id_seq; Type: ACL; Schema: public; Owner: bispgadmin
--

REVOKE ALL ON SEQUENCE deliveries_id_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE deliveries_id_seq FROM bispgadmin;
GRANT ALL ON SEQUENCE deliveries_id_seq TO bispgadmin;


--
-- Name: feedbacks; Type: ACL; Schema: public; Owner: bispgadmin
--

REVOKE ALL ON TABLE feedbacks FROM PUBLIC;
REVOKE ALL ON TABLE feedbacks FROM bispgadmin;
GRANT ALL ON TABLE feedbacks TO bispgadmin;


--
-- Name: feedbacks_id_seq; Type: ACL; Schema: public; Owner: bispgadmin
--

REVOKE ALL ON SEQUENCE feedbacks_id_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE feedbacks_id_seq FROM bispgadmin;
GRANT ALL ON SEQUENCE feedbacks_id_seq TO bispgadmin;


--
-- Name: group_holdingsset; Type: ACL; Schema: public; Owner: bispgadmin
--

REVOKE ALL ON TABLE group_holdingsset FROM PUBLIC;
REVOKE ALL ON TABLE group_holdingsset FROM bispgadmin;
GRANT ALL ON TABLE group_holdingsset TO bispgadmin;


--
-- Name: group_holdingsset_id_seq; Type: ACL; Schema: public; Owner: bispgadmin
--

REVOKE ALL ON SEQUENCE group_holdingsset_id_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE group_holdingsset_id_seq FROM bispgadmin;
GRANT ALL ON SEQUENCE group_holdingsset_id_seq TO bispgadmin;


--
-- Name: groups; Type: ACL; Schema: public; Owner: bispgadmin
--

REVOKE ALL ON TABLE groups FROM PUBLIC;
REVOKE ALL ON TABLE groups FROM bispgadmin;
GRANT ALL ON TABLE groups TO bispgadmin;


--
-- Name: groups_id_seq; Type: ACL; Schema: public; Owner: bispgadmin
--

REVOKE ALL ON SEQUENCE groups_id_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE groups_id_seq FROM bispgadmin;
GRANT ALL ON SEQUENCE groups_id_seq TO bispgadmin;


--
-- Name: hlist_holding; Type: ACL; Schema: public; Owner: bispgadmin
--

REVOKE ALL ON TABLE hlist_holding FROM PUBLIC;
REVOKE ALL ON TABLE hlist_holding FROM bispgadmin;
GRANT ALL ON TABLE hlist_holding TO bispgadmin;


--
-- Name: hlist_holding_id_seq; Type: ACL; Schema: public; Owner: bispgadmin
--

REVOKE ALL ON SEQUENCE hlist_holding_id_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE hlist_holding_id_seq FROM bispgadmin;
GRANT ALL ON SEQUENCE hlist_holding_id_seq TO bispgadmin;


--
-- Name: hlists; Type: ACL; Schema: public; Owner: bispgadmin
--

REVOKE ALL ON TABLE hlists FROM PUBLIC;
REVOKE ALL ON TABLE hlists FROM bispgadmin;
GRANT ALL ON TABLE hlists TO bispgadmin;


--
-- Name: notes; Type: ACL; Schema: public; Owner: bispgadmin
--

REVOKE ALL ON TABLE notes FROM PUBLIC;
REVOKE ALL ON TABLE notes FROM bispgadmin;
GRANT ALL ON TABLE notes TO bispgadmin;


--
-- Name: holding_tag_id_seq; Type: ACL; Schema: public; Owner: bispgadmin
--

REVOKE ALL ON SEQUENCE holding_tag_id_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE holding_tag_id_seq FROM bispgadmin;
GRANT ALL ON SEQUENCE holding_tag_id_seq TO bispgadmin;


--
-- Name: holdings; Type: ACL; Schema: public; Owner: bispgadmin
--

REVOKE ALL ON TABLE holdings FROM PUBLIC;
REVOKE ALL ON TABLE holdings FROM bispgadmin;
GRANT ALL ON TABLE holdings TO bispgadmin;


--
-- Name: holdingssets; Type: ACL; Schema: public; Owner: bispgadmin
--

REVOKE ALL ON TABLE holdingssets FROM PUBLIC;
REVOKE ALL ON TABLE holdingssets FROM bispgadmin;
GRANT ALL ON TABLE holdingssets TO bispgadmin;


--
-- Name: incorrects; Type: ACL; Schema: public; Owner: bispgadmin
--

REVOKE ALL ON TABLE incorrects FROM PUBLIC;
REVOKE ALL ON TABLE incorrects FROM bispgadmin;
GRANT ALL ON TABLE incorrects TO bispgadmin;


--
-- Name: incorrects_id_seq; Type: ACL; Schema: public; Owner: bispgadmin
--

REVOKE ALL ON SEQUENCE incorrects_id_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE incorrects_id_seq FROM bispgadmin;
GRANT ALL ON SEQUENCE incorrects_id_seq TO bispgadmin;


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
-- Name: lists_id_seq; Type: ACL; Schema: public; Owner: bispgadmin
--

REVOKE ALL ON SEQUENCE lists_id_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE lists_id_seq FROM bispgadmin;
GRANT ALL ON SEQUENCE lists_id_seq TO bispgadmin;


--
-- Name: lockeds; Type: ACL; Schema: public; Owner: bispgadmin
--

REVOKE ALL ON TABLE lockeds FROM PUBLIC;
REVOKE ALL ON TABLE lockeds FROM bispgadmin;
GRANT ALL ON TABLE lockeds TO bispgadmin;


--
-- Name: lockeds_id_seq; Type: ACL; Schema: public; Owner: bispgadmin
--

REVOKE ALL ON SEQUENCE lockeds_id_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE lockeds_id_seq FROM bispgadmin;
GRANT ALL ON SEQUENCE lockeds_id_seq TO bispgadmin;


--
-- Name: migrations; Type: ACL; Schema: public; Owner: bispgadmin
--

REVOKE ALL ON TABLE migrations FROM PUBLIC;
REVOKE ALL ON TABLE migrations FROM bispgadmin;
GRANT ALL ON TABLE migrations TO bispgadmin;


--
-- Name: oks; Type: ACL; Schema: public; Owner: bispgadmin
--

REVOKE ALL ON TABLE oks FROM PUBLIC;
REVOKE ALL ON TABLE oks FROM bispgadmin;
GRANT ALL ON TABLE oks TO bispgadmin;


--
-- Name: oks_id_seq; Type: ACL; Schema: public; Owner: bispgadmin
--

REVOKE ALL ON SEQUENCE oks_id_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE oks_id_seq FROM bispgadmin;
GRANT ALL ON SEQUENCE oks_id_seq TO bispgadmin;


--
-- Name: password_reminders; Type: ACL; Schema: public; Owner: bispgadmin
--

REVOKE ALL ON TABLE password_reminders FROM PUBLIC;
REVOKE ALL ON TABLE password_reminders FROM bispgadmin;
GRANT ALL ON TABLE password_reminders TO bispgadmin;


--
-- Name: permission_role; Type: ACL; Schema: public; Owner: bispgadmin
--

REVOKE ALL ON TABLE permission_role FROM PUBLIC;
REVOKE ALL ON TABLE permission_role FROM bispgadmin;
GRANT ALL ON TABLE permission_role TO bispgadmin;


--
-- Name: permission_role_id_seq; Type: ACL; Schema: public; Owner: bispgadmin
--

REVOKE ALL ON SEQUENCE permission_role_id_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE permission_role_id_seq FROM bispgadmin;
GRANT ALL ON SEQUENCE permission_role_id_seq TO bispgadmin;


--
-- Name: permissions; Type: ACL; Schema: public; Owner: bispgadmin
--

REVOKE ALL ON TABLE permissions FROM PUBLIC;
REVOKE ALL ON TABLE permissions FROM bispgadmin;
GRANT ALL ON TABLE permissions TO bispgadmin;


--
-- Name: permissions_id_seq; Type: ACL; Schema: public; Owner: bispgadmin
--

REVOKE ALL ON SEQUENCE permissions_id_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE permissions_id_seq FROM bispgadmin;
GRANT ALL ON SEQUENCE permissions_id_seq TO bispgadmin;


--
-- Name: receiveds; Type: ACL; Schema: public; Owner: bispgadmin
--

REVOKE ALL ON TABLE receiveds FROM PUBLIC;
REVOKE ALL ON TABLE receiveds FROM bispgadmin;
GRANT ALL ON TABLE receiveds TO bispgadmin;


--
-- Name: receiveds_id_seq; Type: ACL; Schema: public; Owner: bispgadmin
--

REVOKE ALL ON SEQUENCE receiveds_id_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE receiveds_id_seq FROM bispgadmin;
GRANT ALL ON SEQUENCE receiveds_id_seq TO bispgadmin;


--
-- Name: reserves; Type: ACL; Schema: public; Owner: bispgadmin
--

REVOKE ALL ON TABLE reserves FROM PUBLIC;
REVOKE ALL ON TABLE reserves FROM bispgadmin;
GRANT ALL ON TABLE reserves TO bispgadmin;


--
-- Name: reserves_id_seq; Type: ACL; Schema: public; Owner: bispgadmin
--

REVOKE ALL ON SEQUENCE reserves_id_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE reserves_id_seq FROM bispgadmin;
GRANT ALL ON SEQUENCE reserves_id_seq TO bispgadmin;


--
-- Name: reviseds; Type: ACL; Schema: public; Owner: bispgadmin
--

REVOKE ALL ON TABLE reviseds FROM PUBLIC;
REVOKE ALL ON TABLE reviseds FROM bispgadmin;
GRANT ALL ON TABLE reviseds TO bispgadmin;


--
-- Name: reviseds_id_seq; Type: ACL; Schema: public; Owner: bispgadmin
--

REVOKE ALL ON SEQUENCE reviseds_id_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE reviseds_id_seq FROM bispgadmin;
GRANT ALL ON SEQUENCE reviseds_id_seq TO bispgadmin;


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
-- Name: states; Type: ACL; Schema: public; Owner: bispgadmin
--

REVOKE ALL ON TABLE states FROM PUBLIC;
REVOKE ALL ON TABLE states FROM bispgadmin;
GRANT ALL ON TABLE states TO bispgadmin;


--
-- Name: states_id_seq; Type: ACL; Schema: public; Owner: bispgadmin
--

REVOKE ALL ON SEQUENCE states_id_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE states_id_seq FROM bispgadmin;
GRANT ALL ON SEQUENCE states_id_seq TO bispgadmin;


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
-- Name: traces; Type: ACL; Schema: public; Owner: bispgadmin
--

REVOKE ALL ON TABLE traces FROM PUBLIC;
REVOKE ALL ON TABLE traces FROM bispgadmin;
GRANT ALL ON TABLE traces TO bispgadmin;


--
-- Name: traces_id_seq; Type: ACL; Schema: public; Owner: bispgadmin
--

REVOKE ALL ON SEQUENCE traces_id_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE traces_id_seq FROM bispgadmin;
GRANT ALL ON SEQUENCE traces_id_seq TO bispgadmin;


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

