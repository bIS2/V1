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

DROP TABLE public.tit_freq;
SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: tit_freq; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tit_freq (
    f245a character varying,
    occ integer
);


ALTER TABLE public.tit_freq OWNER TO postgres;

--
-- Data for Name: tit_freq; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO tit_freq VALUES ('jahresbericht', 3696);
INSERT INTO tit_freq VALUES ('geschäftsbericht', 2215);
INSERT INTO tit_freq VALUES ('bulletin', 457);
INSERT INTO tit_freq VALUES ('tätigkeitsbericht', 267);
INSERT INTO tit_freq VALUES ('jahrbuch', 210);
INSERT INTO tit_freq VALUES ('länderbericht', 169);
INSERT INTO tit_freq VALUES ('mitteilungen', 147);
INSERT INTO tit_freq VALUES ('bericht', 142);
INSERT INTO tit_freq VALUES ('katalog', 132);
INSERT INTO tit_freq VALUES ('rechenschaftsbericht', 115);
INSERT INTO tit_freq VALUES ('catalogue', 105);
INSERT INTO tit_freq VALUES ('voranschlag', 103);
INSERT INTO tit_freq VALUES ('mitteilungsblatt', 87);
INSERT INTO tit_freq VALUES ('auktion', 79);
INSERT INTO tit_freq VALUES ('exercice', 77);
INSERT INTO tit_freq VALUES ('rechnung', 65);
INSERT INTO tit_freq VALUES ('annuaire', 65);
INSERT INTO tit_freq VALUES ('rapport', 62);
INSERT INTO tit_freq VALUES ('report', 59);
INSERT INTO tit_freq VALUES ('jahresrechnung', 58);
INSERT INTO tit_freq VALUES ('info', 55);
INSERT INTO tit_freq VALUES ('jahresberichte', 50);
INSERT INTO tit_freq VALUES ('forschungsbericht', 48);
INSERT INTO tit_freq VALUES ('newsletter', 47);
INSERT INTO tit_freq VALUES ('vorlesungsverzeichnis', 45);
INSERT INTO tit_freq VALUES ('mitgliederverzeichnis', 44);
INSERT INTO tit_freq VALUES ('annali', 40);
INSERT INTO tit_freq VALUES ('annuario', 34);
INSERT INTO tit_freq VALUES ('programm', 32);
INSERT INTO tit_freq VALUES ('information', 30);
INSERT INTO tit_freq VALUES ('kompass', 30);
INSERT INTO tit_freq VALUES ('forum', 27);
INSERT INTO tit_freq VALUES ('geschäftsjahr', 27);
INSERT INTO tit_freq VALUES ('journal', 27);
INSERT INTO tit_freq VALUES ('magazin', 27);
INSERT INTO tit_freq VALUES ('yearbook', 26);
INSERT INTO tit_freq VALUES ('session', 25);
INSERT INTO tit_freq VALUES ('minerva', 24);
INSERT INTO tit_freq VALUES ('antiquariatskatalog', 23);
INSERT INTO tit_freq VALUES ('helvetia', 23);
INSERT INTO tit_freq VALUES ('nachrichten', 23);
INSERT INTO tit_freq VALUES ('årsbok', 21);
INSERT INTO tit_freq VALUES ('rendiconti', 21);
INSERT INTO tit_freq VALUES ('informationen', 20);
INSERT INTO tit_freq VALUES ('proceedings', 20);
INSERT INTO tit_freq VALUES ('voranschläge', 20);
INSERT INTO tit_freq VALUES ('panorama', 20);
INSERT INTO tit_freq VALUES ('kursprogramm', 20);
INSERT INTO tit_freq VALUES ('monatsbericht', 20);
INSERT INTO tit_freq VALUES ('news', 19);
INSERT INTO tit_freq VALUES ('clubnachrichten', 19);
INSERT INTO tit_freq VALUES ('dialog', 19);
INSERT INTO tit_freq VALUES ('budget', 19);
INSERT INTO tit_freq VALUES ('jaarverslag', 19);
INSERT INTO tit_freq VALUES ('swb', 19);
INSERT INTO tit_freq VALUES ('neujahrsblatt', 19);
INSERT INTO tit_freq VALUES ('calendar', 18);
INSERT INTO tit_freq VALUES ('aktuell', 18);
INSERT INTO tit_freq VALUES ('bilanz', 17);
INSERT INTO tit_freq VALUES ('francis', 17);
INSERT INTO tit_freq VALUES ('årbok', 17);
INSERT INTO tit_freq VALUES ('annales', 17);
INSERT INTO tit_freq VALUES ('geschäftsberichte', 16);
INSERT INTO tit_freq VALUES ('bollettino', 16);
INSERT INTO tit_freq VALUES ('physica', 16);
INSERT INTO tit_freq VALUES ('catalogo', 16);
INSERT INTO tit_freq VALUES ('almanach', 16);
INSERT INTO tit_freq VALUES ('jaarboek', 16);
INSERT INTO tit_freq VALUES ('flugblatt', 16);
INSERT INTO tit_freq VALUES ('umweltbericht', 15);
INSERT INTO tit_freq VALUES ('staatsrechnung', 15);
INSERT INTO tit_freq VALUES ('alpina', 15);
INSERT INTO tit_freq VALUES ('circular', 14);
INSERT INTO tit_freq VALUES ('rundbrief', 14);
INSERT INTO tit_freq VALUES ('europa', 14);
INSERT INTO tit_freq VALUES ('jahresprogramm', 14);
INSERT INTO tit_freq VALUES ('sitzungsberichte', 14);
INSERT INTO tit_freq VALUES ('dokumentation', 14);
INSERT INTO tit_freq VALUES ('staatskalender', 13);
INSERT INTO tit_freq VALUES ('publications', 13);
INSERT INTO tit_freq VALUES ('verwaltungsbericht', 13);
INSERT INTO tit_freq VALUES ('årsberetning', 13);
INSERT INTO tit_freq VALUES ('praxis', 13);
INSERT INTO tit_freq VALUES ('perspektiven', 13);
INSERT INTO tit_freq VALUES ('logos', 12);
INSERT INTO tit_freq VALUES ('contact', 12);
INSERT INTO tit_freq VALUES ('zoom', 12);
INSERT INTO tit_freq VALUES ('memoria', 11);
INSERT INTO tit_freq VALUES ('germania', 11);
INSERT INTO tit_freq VALUES ('hauszeitung', 11);
INSERT INTO tit_freq VALUES ('informationsblatt', 11);
INSERT INTO tit_freq VALUES ('horizonte', 11);
INSERT INTO tit_freq VALUES ('isis', 11);
INSERT INTO tit_freq VALUES ('berichte', 11);
INSERT INTO tit_freq VALUES ('sphinx', 11);
INSERT INTO tit_freq VALUES ('echo', 11);
INSERT INTO tit_freq VALUES ('vision', 11);
INSERT INTO tit_freq VALUES ('psyche', 11);
INSERT INTO tit_freq VALUES ('film', 11);
INSERT INTO tit_freq VALUES ('annual report', 785);
INSERT INTO tit_freq VALUES ('rapport annuel', 328);
INSERT INTO tit_freq VALUES ('bulletin signalétique', 107);
INSERT INTO tit_freq VALUES ('excerpta medica', 76);
INSERT INTO tit_freq VALUES ('antiquariats katalog', 33);
INSERT INTO tit_freq VALUES ('deutsche bibliographie', 25);
INSERT INTO tit_freq VALUES ('year book', 24);
INSERT INTO tit_freq VALUES ('bulletin mensuel', 21);
INSERT INTO tit_freq VALUES ('die schweiz', 20);
INSERT INTO tit_freq VALUES ('jahresbericht jahresrechnung', 20);
INSERT INTO tit_freq VALUES ('acta radiologica', 20);
INSERT INTO tit_freq VALUES ('deutsche nationalbibliographie', 17);
INSERT INTO tit_freq VALUES ('club nachrichten', 17);
INSERT INTO tit_freq VALUES ('virchows archiv', 16);
INSERT INTO tit_freq VALUES ('čechoslovakische statistik', 16);
INSERT INTO tit_freq VALUES ('wissenschaftliche zeitschrift', 15);
INSERT INTO tit_freq VALUES ('statistisches jahrbuch', 15);
INSERT INTO tit_freq VALUES ('geographical abstracts', 15);
INSERT INTO tit_freq VALUES ('bulletin trimestriel', 15);
INSERT INTO tit_freq VALUES ('statistical yearbook', 14);
INSERT INTO tit_freq VALUES ('annual review', 14);
INSERT INTO tit_freq VALUES ('der kinderfreund', 13);
INSERT INTO tit_freq VALUES ('europäische wirtschaft', 13);
INSERT INTO tit_freq VALUES ('procès verbal', 13);
INSERT INTO tit_freq VALUES ('njw fundhefte', 13);
INSERT INTO tit_freq VALUES ('technische mitteilungen', 13);
INSERT INTO tit_freq VALUES ('country profile', 13);
INSERT INTO tit_freq VALUES ('schweizerische aussenhandelsstatistik', 13);
INSERT INTO tit_freq VALUES ('der spiegel', 12);
INSERT INTO tit_freq VALUES ('jahres bericht', 12);
INSERT INTO tit_freq VALUES ('geschäfts bericht', 12);
INSERT INTO tit_freq VALUES ('die zeit', 12);
INSERT INTO tit_freq VALUES ('byzantinische zeitschrift', 11);
INSERT INTO tit_freq VALUES ('die sammlung', 11);
INSERT INTO tit_freq VALUES ('die alpen', 11);
INSERT INTO tit_freq VALUES ('zeitschriften bestandsverzeichnisse', 11);
INSERT INTO tit_freq VALUES ('jahresbericht pro', 11);
INSERT INTO tit_freq VALUES ('deutsche nationalbibliografie', 11);
INSERT INTO tit_freq VALUES ('unsere heimat', 11);
INSERT INTO tit_freq VALUES ('transportation research', 11);
INSERT INTO tit_freq VALUES ('zoologische jahrbücher', 11);
INSERT INTO tit_freq VALUES ('die horen', 11);
INSERT INTO tit_freq VALUES ('oecd economic surveys', 132);
INSERT INTO tit_freq VALUES ('trade policy review', 121);
INSERT INTO tit_freq VALUES ('rapport de gestion', 98);
INSERT INTO tit_freq VALUES ('jahresbericht und jahresrechnung', 83);
INSERT INTO tit_freq VALUES ('jahresbericht und rechnung', 70);
INSERT INTO tit_freq VALUES ('geschäftsbericht und jahresrechnung', 62);
INSERT INTO tit_freq VALUES ('rapport d activité', 59);
INSERT INTO tit_freq VALUES ('bericht und rechnung', 50);
INSERT INTO tit_freq VALUES ('report and accounts', 46);
INSERT INTO tit_freq VALUES ('environmental performance reviews', 33);
INSERT INTO tit_freq VALUES ('analele universităţii bucureşti', 32);
INSERT INTO tit_freq VALUES ('geschäftsbericht und rechnung', 28);
INSERT INTO tit_freq VALUES ('personal und vorlesungsverzeichnis', 27);
INSERT INTO tit_freq VALUES ('zeitschrift für naturforschung', 26);
INSERT INTO tit_freq VALUES ('official records session', 24);
INSERT INTO tit_freq VALUES ('bulletin d information', 21);
INSERT INTO tit_freq VALUES ('programme des cours', 21);
INSERT INTO tit_freq VALUES ('journal des tribunaux', 20);
INSERT INTO tit_freq VALUES ('deutsches meteorologisches jahrbuch', 19);
INSERT INTO tit_freq VALUES ('acta universitatis szegediensis', 19);
INSERT INTO tit_freq VALUES ('american economic journal', 16);
INSERT INTO tit_freq VALUES ('zeitschrift für physik', 16);
INSERT INTO tit_freq VALUES ('jahresbericht des präsidenten', 15);
INSERT INTO tit_freq VALUES ('latvijas universitātes raksti', 14);
INSERT INTO tit_freq VALUES ('analele universitaţii bucureşti', 14);
INSERT INTO tit_freq VALUES ('statistik des auslandes', 14);
INSERT INTO tit_freq VALUES ('bericht des verwaltungsrates', 14);
INSERT INTO tit_freq VALUES ('jahrbuch der dissertationen', 13);
INSERT INTO tit_freq VALUES ('das schweizer buch', 12);
INSERT INTO tit_freq VALUES ('european law review', 12);
INSERT INTO tit_freq VALUES ('acta universitatis carolinae', 11);
INSERT INTO tit_freq VALUES ('annales universitatis saraviensis', 11);
INSERT INTO tit_freq VALUES ('bibliographie nationale française', 11);


--
-- PostgreSQL database dump complete
--

