--
-- PostgreSQL database dump
--

-- Dumped from database version 16.6
-- Dumped by pg_dump version 17.1

-- Started on 2025-02-10 20:54:50

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 4 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: pg_database_owner
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO pg_database_owner;

--
-- TOC entry 3332 (class 0 OID 0)
-- Dependencies: 4
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: pg_database_owner
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 216 (class 1259 OID 1589252)
-- Name: reservas; Type: TABLE; Schema: public; Owner: Comfe_owner
--

CREATE TABLE public.reservas (
    id integer NOT NULL,
    cliente_nombre character varying(100) NOT NULL,
    habitacion_id integer NOT NULL,
    fecha_entrada date NOT NULL,
    fecha_salida date NOT NULL,
    estado_reserva character varying(20) NOT NULL,
    total numeric(10,2) NOT NULL,
    CONSTRAINT reservas_estado_reserva_check CHECK (((estado_reserva)::text = ANY ((ARRAY['Confirmada'::character varying, 'Cancelada'::character varying, 'Pendiente'::character varying])::text[])))
);


ALTER TABLE public.reservas OWNER TO "Comfe_owner";

--
-- TOC entry 215 (class 1259 OID 1589251)
-- Name: reservas_id_seq; Type: SEQUENCE; Schema: public; Owner: Comfe_owner
--

CREATE SEQUENCE public.reservas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.reservas_id_seq OWNER TO "Comfe_owner";

--
-- TOC entry 3333 (class 0 OID 0)
-- Dependencies: 215
-- Name: reservas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Comfe_owner
--

ALTER SEQUENCE public.reservas_id_seq OWNED BY public.reservas.id;


--
-- TOC entry 3178 (class 2604 OID 1589255)
-- Name: reservas id; Type: DEFAULT; Schema: public; Owner: Comfe_owner
--

ALTER TABLE ONLY public.reservas ALTER COLUMN id SET DEFAULT nextval('public.reservas_id_seq'::regclass);


--
-- TOC entry 3326 (class 0 OID 1589252)
-- Dependencies: 216
-- Data for Name: reservas; Type: TABLE DATA; Schema: public; Owner: Comfe_owner
--

COPY public.reservas (id, cliente_nombre, habitacion_id, fecha_entrada, fecha_salida, estado_reserva, total) FROM stdin;
1	Juan Pérez	1	2024-02-01	2024-02-05	Confirmada	200.00
2	Ana López	2	2024-02-03	2024-02-07	Confirmada	300.00
3	Carlos Gómez	3	2024-02-10	2024-02-15	Pendiente	600.00
4	María Sánchez	4	2024-02-12	2024-02-16	Confirmada	360.00
5	Pedro Ramírez	5	2024-02-20	2024-02-25	Cancelada	0.00
6	Juan Pérez	2	2024-02-15	2024-02-18	Confirmada	225.00
7	Ana López	3	2024-03-01	2024-03-05	Pendiente	480.00
8	Carlos Gómez	4	2024-03-05	2024-03-10	Confirmada	450.00
9	María Sánchez	5	2024-03-10	2024-03-15	Cancelada	0.00
10	Pedro Ramírez	1	2024-03-15	2024-03-20	Confirmada	250.00
11	Juan Pérez	3	2024-03-20	2024-03-25	Pendiente	600.00
12	Ana López	4	2024-03-25	2024-03-30	Confirmada	450.00
13	Carlos Gómez	5	2024-04-01	2024-04-05	Cancelada	0.00
14	María Sánchez	2	2024-04-05	2024-04-10	Confirmada	400.00
15	Pedro Ramírez	3	2024-04-10	2024-04-15	Pendiente	600.00
16	Juan Pérez	4	2024-04-15	2024-04-20	Confirmada	450.00
17	Ana López	5	2024-04-20	2024-04-25	Cancelada	0.00
18	Carlos Gómez	1	2024-04-25	2024-04-30	Confirmada	250.00
19	María Sánchez	2	2024-05-01	2024-05-05	Confirmada	400.00
20	Pedro Ramírez	3	2024-05-05	2024-05-10	Pendiente	600.00
21	Juan Pérez	4	2024-05-10	2024-05-15	Confirmada	450.00
22	Ana López	5	2024-05-15	2024-05-20	Cancelada	0.00
23	Carlos Gómez	1	2024-05-20	2024-05-25	Confirmada	250.00
24	María Sánchez	2	2024-05-25	2024-05-30	Confirmada	400.00
25	Pedro Ramírez	3	2024-06-01	2024-06-05	Pendiente	600.00
26	Juan Pérez	4	2024-06-05	2024-06-10	Confirmada	450.00
27	Ana López	5	2024-06-10	2024-06-15	Cancelada	0.00
28	Carlos Gómez	1	2024-06-15	2024-06-20	Confirmada	250.00
29	María Sánchez	2	2024-06-20	2024-06-25	Confirmada	400.00
30	Pedro Ramírez	3	2024-06-25	2024-06-30	Pendiente	600.00
31	Juan Pérez	5	2024-07-01	2024-07-05	Confirmada	500.00
32	Ana López	1	2024-07-05	2024-07-10	Pendiente	250.00
33	Carlos Gómez	2	2024-07-10	2024-07-15	Confirmada	400.00
34	María Sánchez	3	2024-07-15	2024-07-20	Cancelada	0.00
35	Pedro Ramírez	4	2024-07-20	2024-07-25	Confirmada	450.00
36	Juan Pérez	5	2024-07-25	2024-07-30	Pendiente	500.00
37	Ana López	1	2024-08-01	2024-08-05	Confirmada	250.00
38	Carlos Gómez	2	2024-08-05	2024-08-10	Pendiente	400.00
39	María Sánchez	3	2024-08-10	2024-08-15	Confirmada	600.00
40	Pedro Ramírez	4	2024-08-15	2024-08-20	Cancelada	0.00
\.


--
-- TOC entry 3334 (class 0 OID 0)
-- Dependencies: 215
-- Name: reservas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Comfe_owner
--

SELECT pg_catalog.setval('public.reservas_id_seq', 40, true);


--
-- TOC entry 3181 (class 2606 OID 1589258)
-- Name: reservas reservas_pkey; Type: CONSTRAINT; Schema: public; Owner: Comfe_owner
--

ALTER TABLE ONLY public.reservas
    ADD CONSTRAINT reservas_pkey PRIMARY KEY (id);


-- Completed on 2025-02-10 20:54:58

--
-- PostgreSQL database dump complete
--

