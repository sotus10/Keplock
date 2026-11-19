--
-- PostgreSQL database dump
--

\restrict v8JYTMHLy68pKDqrUWwkw1SdlXUMaVvtV5CQhRY6TYMePcXmseTgPDkVhP5mRDb

-- Dumped from database version 17.6
-- Dumped by pg_dump version 17.12

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
-- Data for Name: admin; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.admin VALUES (1, 'Joseph Joestar', 'purplehaze@universidad.edu', 'everybodygoingintothecar', '4933467766');


--
-- Data for Name: locker; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.locker VALUES (2, 'L-002', 'disponible');
INSERT INTO public.locker VALUES (3, 'L-003', 'disponible');
INSERT INTO public.locker VALUES (1, 'L-001', 'disponible');


--
-- Data for Name: audit_log; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: estudiante; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.estudiante VALUES (1, 'Tyrion Lannister', 'elgranenano@universidad.edu', 'pulgarcito3030', '5678989177');
INSERT INTO public.estudiante VALUES (2, 'Elmo', 'amigodelcomegalletas@universidad.edu', 'tengodinerotengoflow', '7788994522');
INSERT INTO public.estudiante VALUES (3, 'Jesse Pinkman', 'jessepinkman@universidad.edu', 'speakintothemicbeach', '9905512577');


--
-- Data for Name: reserva; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.reserva VALUES (1, 1, 1, '2026-10-01 20:30:00', '2026-10-01 23:30:00', 'activa', NULL);
INSERT INTO public.reserva VALUES (4, 1, 2, '2026-10-30 10:00:00', '2026-10-30 14:00:00', 'activa', NULL);
INSERT INTO public.reserva VALUES (6, 2, 3, '2026-10-31 11:00:00', '2026-10-31 13:00:00', 'activa', NULL);
INSERT INTO public.reserva VALUES (9, 2, 2, '2026-10-31 08:00:00', '2026-10-31 10:00:00', 'activa', NULL);
INSERT INTO public.reserva VALUES (12, 2, 3, '2026-10-29 08:00:00', '2026-10-31 06:00:00', 'activa', NULL);


--
-- Name: Student_estudiante_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."Student_estudiante_id_seq"', 3, true);


--
-- Name: admin_admin_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.admin_admin_id_seq', 1, true);


--
-- Name: audit_log_audit_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.audit_log_audit_log_id_seq', 1, false);


--
-- Name: locker_locker_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.locker_locker_id_seq', 3, true);


--
-- Name: reserva_reserva_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.reserva_reserva_id_seq', 13, true);


--
-- PostgreSQL database dump complete
--

\unrestrict v8JYTMHLy68pKDqrUWwkw1SdlXUMaVvtV5CQhRY6TYMePcXmseTgPDkVhP5mRDb

