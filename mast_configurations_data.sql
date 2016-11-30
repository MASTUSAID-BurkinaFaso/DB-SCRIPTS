--
-- PostgreSQL database dump
--

-- Dumped from database version 9.3.6
-- Dumped by pg_dump version 9.3.6
-- Started on 2016-11-29 11:39:41

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

--
-- TOC entry 3649 (class 0 OID 64740)
-- Dependencies: 189
-- Data for Name: action; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO action VALUES ('Default', NULL, 5, NULL);


--
-- TOC entry 3650 (class 0 OID 64746)
-- Dependencies: 190
-- Data for Name: action_tools; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO action_tools VALUES (2, 'Edit Attributes', 8, ',1,2,10,11,', 'Modifier les attributs');
INSERT INTO action_tools VALUES (3, 'Approve', 8, ',1,2,3,5,6,7,8,10,11,12,13,', 'Valider');
INSERT INTO action_tools VALUES (4, 'Reject', 8, ',1,2,3,5,6,7,8,10,11,12,13,', 'Rejeter');
INSERT INTO action_tools VALUES (6, 'View Parcel Number', 8, ',1,2,', 'Visualiser le numéro parcellaire');
INSERT INTO action_tools VALUES (7, 'View Map', 9, 'A', 'Visualiser le plan');
INSERT INTO action_tools VALUES (8, 'View Attributes', 9, 'A', 'Visualiser les attributs');
INSERT INTO action_tools VALUES (9, 'Approve', 9, 'A', 'Valider');
INSERT INTO action_tools VALUES (10, 'Reject', 9, 'A', 'Rejeter');
INSERT INTO action_tools VALUES (11, 'Generate Map', 9, 'A', 'Créer le plan');
INSERT INTO action_tools VALUES (13, 'View Attributes', 7, ',1,2,10,11,', 'Visualiser les attributs');
INSERT INTO action_tools VALUES (14, 'View Map', 7, ',1,2,10,11,', 'Visualiser le plan');
INSERT INTO action_tools VALUES (15, 'Generate Map', 7, ',2,5,3,', 'Créer le plan');
INSERT INTO action_tools VALUES (16, 'Approve', 7, ',1,2,3,5,6,7,8,10,11,12,13,', 'Valider');
INSERT INTO action_tools VALUES (17, 'Reject', 7, ',1,2,3,5,6,7,8,10,11,12,13,', 'Rejeter');
INSERT INTO action_tools VALUES (20, 'Edit Attributes', 1, ',1,2,10,11,', 'Modifier les attributs');
INSERT INTO action_tools VALUES (21, 'Approve', 1, ',1,2,3,5,6,7,8,10,11,12,13,', 'Valider');
INSERT INTO action_tools VALUES (22, 'Reject', 1, ',1,2,3,5,6,7,8,10,11,12,13,', 'Rejeter');
INSERT INTO action_tools VALUES (26, 'View Parcel Number', 1, ',1,2,', 'Visualiser le numéro parcellaire');
INSERT INTO action_tools VALUES (27, 'Payment Info', 8, ',8,13,', 'Info paiement');
INSERT INTO action_tools VALUES (28, 'Payment Info', 1, ',8,13,', 'Info paiement');
INSERT INTO action_tools VALUES (29, 'Payment Info', 7, ',8,13,', 'Info paiement');
INSERT INTO action_tools VALUES (30, 'Signatory Info', 8, ',8,13,', 'Info signature');
INSERT INTO action_tools VALUES (31, 'Signatory Info', 1, ',8,13,', 'Info signature');
INSERT INTO action_tools VALUES (32, 'Signatory Info', 7, ',8,13,', 'Info signature');
INSERT INTO action_tools VALUES (5, 'Generate Map', 8, ',2,5,3,9,14,', 'Créer le plan');
INSERT INTO action_tools VALUES (23, 'Generate Map', 1, ',2,5,3,9,14,', 'Créer le plan');
INSERT INTO action_tools VALUES (12, 'View Attributes', 8, ',1,2,10,11,9,14,', 'Visualiser les attributs');
INSERT INTO action_tools VALUES (19, 'View Attributes', 1, ',1,2,10,11,9,14,', 'Visualiser les attributs');
INSERT INTO action_tools VALUES (1, 'View Map', 8, ',1,2,10,11,9,14,', 'Visualiser le plan');
INSERT INTO action_tools VALUES (18, 'View Map', 1, ',1,2,10,11,9,14,', 'Visualiser le plan');
INSERT INTO action_tools VALUES (24, 'Generate Forms', 1, ',2,5,7,13,9,14,', 'Créer les formulaires');
INSERT INTO action_tools VALUES (25, 'Generate Forms', 8, ',2,5,7,13,9,14,', 'Créer les formulaires');



-- TOC entry 3653 (class 0 OID 64763)
-- Dependencies: 194
-- Data for Name: attribute_category; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO attribute_category VALUES (1, 'General', 'Général');
INSERT INTO attribute_category VALUES (2, 'Natural Person', 'Personne physique');
INSERT INTO attribute_category VALUES (3, 'Multimedia', 'Multimédia');
INSERT INTO attribute_category VALUES (4, 'Tenure', 'Tenure');
INSERT INTO attribute_category VALUES (5, 'Non Natural Person', 'Non Natural Person');
INSERT INTO attribute_category VALUES (6, 'Custom', 'Personnalisé');
INSERT INTO attribute_category VALUES (7, 'General(Property)', 'Général (Propriété)');
INSERT INTO attribute_category VALUES (8, 'Person of Interest', 'Ayant-droit');


--
-- TOC entry 3654 (class 0 OID 64788)
-- Dependencies: 200
-- Data for Name: baselayer; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO baselayer VALUES (3, 'Google_Satellite', 'Satellite');
INSERT INTO baselayer VALUES (4, 'Google_Streets', 'Streets');
INSERT INTO baselayer VALUES (4, 'Bing_Road', 'Road');
INSERT INTO baselayer VALUES (5, 'Bing_Aerial', 'Aerial');
INSERT INTO baselayer VALUES (6, 'Google_Hybrid', 'Hybrid');
INSERT INTO baselayer VALUES (7, 'Google_Physical', 'Physical');
INSERT INTO baselayer VALUES (8, 'Open_Street_Map', 'OSM');
INSERT INTO baselayer VALUES (9, 'MapQuest_OSM', 'MapQuest');


--
-- TOC entry 3656 (class 0 OID 64806)
-- Dependencies: 205
-- Data for Name: country; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO country VALUES (1, 'Burkina Faso');


--
-- TOC entry 3678 (class 0 OID 65091)
-- Dependencies: 278
-- Data for Name: region; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO region VALUES (1, 'PLATEAU CENTRAL', 'PLATEAU CENTRAL', 1);


--
-- TOC entry 3677 (class 0 OID 65088)
-- Dependencies: 277
-- Data for Name: province; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO province VALUES (1, 'GANZOURGOU', 'GANZOURGOU', 1);
INSERT INTO province VALUES (2, 'KOURWEOGO', 'KOURWEOGO', 1);
INSERT INTO province VALUES (3, 'OUBRITENGA', 'OUBRITENGA', 1);


--
-- TOC entry 3655 (class 0 OID 64803)
-- Dependencies: 204
-- Data for Name: commune; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO commune VALUES (1, 'BOUDRY', 'BOUDRY', 1);
INSERT INTO commune VALUES (2, 'KOGHO', 'KOGHO', 1);
INSERT INTO commune VALUES (3, 'MEGUET', 'MEGUET', 1);
INSERT INTO commune VALUES (4, 'MOGTEDO', 'MOGTEDO', 1);
INSERT INTO commune VALUES (5, 'SALOGO', 'SALOGO', 1);
INSERT INTO commune VALUES (6, 'ZAM', 'ZAM', 1);
INSERT INTO commune VALUES (7, 'ZORGHO', 'ZORGHO', 1);
INSERT INTO commune VALUES (8, 'ZOUNGOU', 'ZOUNGOU', 1);
INSERT INTO commune VALUES (9, 'BOUSSE', 'BOUSSE', 2);
INSERT INTO commune VALUES (10, 'LAYE', 'LAYE', 2);
INSERT INTO commune VALUES (11, 'NIOU', 'NIOU', 2);
INSERT INTO commune VALUES (12, 'SOURGOUBILA', 'SOURGOUBILA', 2);
INSERT INTO commune VALUES (13, 'TOEGHIN', 'TOEGHIN', 2);
INSERT INTO commune VALUES (14, 'ABSOUYA', 'ABSOUYA', 3);
INSERT INTO commune VALUES (15, 'DAPELOGO', 'DAPELOGO', 3);
INSERT INTO commune VALUES (16, 'LOUMBILA', 'LOUMBILA', 3);
INSERT INTO commune VALUES (17, 'NAGREONGO', 'NAGREONGO', 3);
INSERT INTO commune VALUES (18, 'OURGOU-MANEGA', 'OURGOU-MANEGA', 3);
INSERT INTO commune VALUES (19, 'ZINIARÉ', 'ZINIARÉ', 3);
INSERT INTO commune VALUES (20, 'ZITENGA', 'ZITENGA', 3);


--
-- TOC entry 3657 (class 0 OID 64809)
-- Dependencies: 206
-- Data for Name: datatype_id; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO datatype_id VALUES (1, 'String', 'Série');
INSERT INTO datatype_id VALUES (2, 'Date', 'Date');
INSERT INTO datatype_id VALUES (3, 'Boolean', 'Booléen');
INSERT INTO datatype_id VALUES (4, 'Number', 'Numéro');
INSERT INTO datatype_id VALUES (5, 'Dropdown', 'Dropdown');
INSERT INTO datatype_id VALUES (6, 'Multiselect', 'Mutiselect');


--
-- TOC entry 3658 (class 0 OID 64814)
-- Dependencies: 208
-- Data for Name: education_level; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO education_level VALUES (1, 'None');
INSERT INTO education_level VALUES (2, 'Primary');
INSERT INTO education_level VALUES (3, 'Secondary');
INSERT INTO education_level VALUES (4, 'University');


--
-- TOC entry 3659 (class 0 OID 64820)
-- Dependencies: 209
-- Data for Name: gender; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO gender VALUES (1, 'Male', 'Homme');
INSERT INTO gender VALUES (2, 'Female', 'Femme');


--
-- TOC entry 3660 (class 0 OID 64833)
-- Dependencies: 213
-- Data for Name: group_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO group_type VALUES (5, 'Other', 'Nyengine');
INSERT INTO group_type VALUES (4, 'Cooperative', 'Shirika');
INSERT INTO group_type VALUES (3, 'Association', 'Taasisi za kielimu');
INSERT INTO group_type VALUES (2, 'Mosque', 'Taasisi za kidini');
INSERT INTO group_type VALUES (1, 'Civic', 'Taasisi ya kiraia');


--
-- TOC entry 3661 (class 0 OID 64836)
-- Dependencies: 214
-- Data for Name: land_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO land_type VALUES (1, 'Flat/Plain', 'Tambarare');
INSERT INTO land_type VALUES (2, 'Sloping', 'Mteremko');
INSERT INTO land_type VALUES (3, 'Mountainous', 'Milima');
INSERT INTO land_type VALUES (4, 'Valley', 'Bonde');


--
-- TOC entry 3662 (class 0 OID 64839)
-- Dependencies: 215
-- Data for Name: land_use_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO land_use_type VALUES (1, 'Agriculture', 'Agricole');
INSERT INTO land_use_type VALUES (2, 'Pastoral', 'Pastorale');
INSERT INTO land_use_type VALUES (3, 'Sylvicultural', 'Sylvicole');
INSERT INTO land_use_type VALUES (4, 'AquaCultural', 'Aquacole');
INSERT INTO land_use_type VALUES (5, 'Fauna', 'Faunique');
INSERT INTO land_use_type VALUES (6, 'Others', 'Autre (préciser)');


--
-- TOC entry 3663 (class 0 OID 64902)
-- Dependencies: 226
-- Data for Name: marital_status; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO marital_status VALUES (1, 'Single', 'Célibataire');
INSERT INTO marital_status VALUES (2, 'married', 'Marié(e)');
INSERT INTO marital_status VALUES (3, 'divorced', 'Divorcé(e)');
INSERT INTO marital_status VALUES (4, 'widow', 'Veuf(ve)');
INSERT INTO marital_status VALUES (5, 'widower', 'Veuf(ve)');


--
-- TOC entry 3664 (class 0 OID 64910)
-- Dependencies: 228
-- Data for Name: module; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO module VALUES ('dynalayer', NULL, NULL, 24);
INSERT INTO module VALUES ('fileupload', NULL, NULL, 25);
INSERT INTO module VALUES ('textstyle', NULL, NULL, 26);
INSERT INTO module VALUES ('editing', NULL, NULL, 27);
INSERT INTO module VALUES ('clear_selection', NULL, NULL, 28);
INSERT INTO module VALUES ('saveproject', NULL, NULL, 29);
INSERT INTO module VALUES ('openproject', NULL, NULL, 30);
INSERT INTO module VALUES ('geoprocessing', NULL, NULL, 32);
INSERT INTO module VALUES ('zoomout', NULL, NULL, 3);
INSERT INTO module VALUES ('zoomin', NULL, NULL, 2);
INSERT INTO module VALUES ('thematic', NULL, NULL, 21);
INSERT INTO module VALUES ('export', NULL, NULL, 22);
INSERT INTO module VALUES ('markup', NULL, NULL, 23);
INSERT INTO module VALUES ('info', NULL, NULL, 11);
INSERT INTO module VALUES ('measurelength', NULL, NULL, 12);
INSERT INTO module VALUES ('zoomprevious', NULL, NULL, 8);
INSERT INTO module VALUES ('fixedzoomin', NULL, NULL, 6);
INSERT INTO module VALUES ('zoomnext', NULL, NULL, 9);
INSERT INTO module VALUES ('fullview', NULL, NULL, 10);
INSERT INTO module VALUES ('zoomtolayer', NULL, NULL, 5);
INSERT INTO module VALUES ('fixedzoomout', NULL, NULL, 7);
INSERT INTO module VALUES ('complaint', NULL, NULL, 33);
INSERT INTO module VALUES ('bookmark', NULL, NULL, 20);
INSERT INTO module VALUES ('query', NULL, NULL, 19);
INSERT INTO module VALUES ('print', NULL, NULL, 18);
INSERT INTO module VALUES ('zoomtoxy', NULL, NULL, 17);
INSERT INTO module VALUES ('search', NULL, NULL, 16);
INSERT INTO module VALUES ('selectpolygon', NULL, NULL, 15);
INSERT INTO module VALUES ('selectbox', NULL, NULL, 14);
INSERT INTO module VALUES ('selectfeature', NULL, NULL, 13);
INSERT INTO module VALUES ('report', NULL, NULL, 34);
INSERT INTO module VALUES ('importdata', NULL, NULL, 35);
INSERT INTO module VALUES ('radiometric', NULL, NULL, 36);
INSERT INTO module VALUES ('magnetic', NULL, NULL, 37);
INSERT INTO module VALUES ('pan', 'Map Pan ', NULL, 4);
INSERT INTO module VALUES ('intersection', NULL, NULL, 38);


--
-- TOC entry 3665 (class 0 OID 64913)
-- Dependencies: 229
-- Data for Name: module_action; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO module_action VALUES ('Default', 'bookmark', 89, NULL);
INSERT INTO module_action VALUES ('Default', 'fixedzoomin', 90, NULL);
INSERT INTO module_action VALUES ('Default', 'fixedzoomout', 91, NULL);
INSERT INTO module_action VALUES ('Default', 'fullview', 92, NULL);
INSERT INTO module_action VALUES ('Default', 'info', 93, NULL);
INSERT INTO module_action VALUES ('Default', 'measurelength', 94, NULL);
INSERT INTO module_action VALUES ('Default', 'pan', 95, NULL);
INSERT INTO module_action VALUES ('Default', 'search', 96, NULL);
INSERT INTO module_action VALUES ('Default', 'zoomin', 97, NULL);
INSERT INTO module_action VALUES ('Default', 'zoomnext', 98, NULL);
INSERT INTO module_action VALUES ('Default', 'zoomout', 99, NULL);
INSERT INTO module_action VALUES ('Default', 'zoomprevious', 100, NULL);
INSERT INTO module_action VALUES ('Default', 'zoomtolayer', 101, NULL);
INSERT INTO module_action VALUES ('Default', 'zoomtoxy', 102, NULL);
INSERT INTO module_action VALUES ('Default', 'clear_selection', 103, NULL);
INSERT INTO module_action VALUES ('Default', 'markup', 104, NULL);
INSERT INTO module_action VALUES ('Default', 'print', 105, NULL);
INSERT INTO module_action VALUES ('Default', 'selectbox', 106, NULL);
INSERT INTO module_action VALUES ('Default', 'selectfeature', 107, NULL);
INSERT INTO module_action VALUES ('Default', 'selectpolygon', 108, NULL);
INSERT INTO module_action VALUES ('Default', 'textstyle', 109, NULL);
INSERT INTO module_action VALUES ('Default', 'editing', 110, NULL);
INSERT INTO module_action VALUES ('Default', 'complaint', 111, NULL);
INSERT INTO module_action VALUES ('Default', 'dynalayer', 112, NULL);
INSERT INTO module_action VALUES ('Default', 'export', 113, NULL);
INSERT INTO module_action VALUES ('Default', 'fileupload', 114, NULL);
INSERT INTO module_action VALUES ('Default', 'geoprocessing', 115, NULL);
INSERT INTO module_action VALUES ('Default', 'importdata', 116, NULL);
INSERT INTO module_action VALUES ('Default', 'openproject', 117, NULL);
INSERT INTO module_action VALUES ('Default', 'query', 118, NULL);
INSERT INTO module_action VALUES ('Default', 'report', 119, NULL);
INSERT INTO module_action VALUES ('Default', 'saveproject', 120, NULL);
INSERT INTO module_action VALUES ('Default', 'thematic', 121, NULL);
INSERT INTO module_action VALUES ('Default', 'magnetic', 122, NULL);
INSERT INTO module_action VALUES ('Default', 'radiometric', 123, NULL);
INSERT INTO module_action VALUES ('Default', 'intersection', 128, NULL);


--
-- TOC entry 3691 (class 0 OID 0)
-- Dependencies: 230
-- Name: module_action_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('module_action_id_seq', 123, true);


--
-- TOC entry 3692 (class 0 OID 0)
-- Dependencies: 231
-- Name: module_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('module_id_seq', 37, true);


--
-- TOC entry 3668 (class 0 OID 64940)
-- Dependencies: 236
-- Data for Name: nature_of_application; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO nature_of_application VALUES (1, 'Written', 'Written');
INSERT INTO nature_of_application VALUES (2, 'Verbal', 'Verbal');


--
-- TOC entry 3669 (class 0 OID 64943)
-- Dependencies: 237
-- Data for Name: nature_of_power; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO nature_of_power VALUES (1, 'None', 'Aucun');
INSERT INTO nature_of_power VALUES (2, 'Mandate', 'Mandat');
INSERT INTO nature_of_power VALUES (3, 'Power of Attorney', 'Procuration');


--
-- TOC entry 3670 (class 0 OID 64972)
-- Dependencies: 244
-- Data for Name: outputformat; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO outputformat VALUES ('image/png', 'image/png', 1, '1');
INSERT INTO outputformat VALUES ('image/gif', 'image/gif', 6, '1');
INSERT INTO outputformat VALUES ('image/jpeg', 'image/jpeg', 7, '1');
INSERT INTO outputformat VALUES ('image/png24', 'image/png24', 11, '1');
INSERT INTO outputformat VALUES ('image/png32', 'image/png32', 12, '1');
INSERT INTO outputformat VALUES ('image/png8', 'image/png8', 13, '1');
INSERT INTO outputformat VALUES ('GML', 'GML', 14, NULL);


--
-- TOC entry 3693 (class 0 OID 0)
-- Dependencies: 245
-- Name: outputformat_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('outputformat_id_seq', 14, true);


--
-- TOC entry 3672 (class 0 OID 64985)
-- Dependencies: 248
-- Data for Name: parcel_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO parcel_type VALUES (1, 'New', 'Nouveau');
INSERT INTO parcel_type VALUES (2, 'Existing', 'Existant');


--
-- TOC entry 3673 (class 0 OID 64988)
-- Dependencies: 249
-- Data for Name: parcelcount; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO parcelcount VALUES ('Registration', 5, 0);
INSERT INTO parcelcount VALUES ('Parcel', 3, 13);
INSERT INTO parcelcount VALUES ('PV', 2, 32);
INSERT INTO parcelcount VALUES ('Application', 1, 67);
INSERT INTO parcelcount VALUES ('APFR', 4, 42);





--
-- TOC entry 3675 (class 0 OID 65083)
-- Dependencies: 275
-- Data for Name: projection; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO projection VALUES ('EPSG:27700', 'British National Grid Projection', 3, '1');
INSERT INTO projection VALUES ('EPSG:900913', 'SphericalMercator', 4, '1');
INSERT INTO projection VALUES ('EPSG:32643', 'EPSG:32643', 5, '1');
INSERT INTO projection VALUES ('EPSG:4326', 'EPSG:4326', 6, '1');
INSERT INTO projection VALUES ('EPSG:32733', 'EPSG:32733', 6, NULL);
INSERT INTO projection VALUES ('EPSG:21036', 'Arc1960_Zone36South', 1, NULL);


--
-- TOC entry 3694 (class 0 OID 0)
-- Dependencies: 276
-- Name: projection_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('projection_id_seq', 6, true);


--
-- TOC entry 3679 (class 0 OID 65094)
-- Dependencies: 279
-- Data for Name: role; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO role VALUES ('ROLE_ADMIN', 'System Administrator', 1, NULL, 'Administrateur système');
INSERT INTO role VALUES ('ROLE_DPI', 'DPI Land Official', 9, NULL, 'Agent du cadastre régional');
INSERT INTO role VALUES ('ROLE_PM', 'Project Manager', 7, NULL, 'Chef de projet');
INSERT INTO role VALUES ('ROLE_PUBLICUSER', 'Public User', 3, NULL, 'Utilisateur publique');
INSERT INTO role VALUES ('ROLE_SFR', 'SFR Land Official', 8, NULL, 'Agent Domanial');
INSERT INTO role VALUES ('ROLE_USER', 'User', 2, NULL, 'User');
INSERT INTO role VALUES ('ROLE_TRUSTED_INTERMEDIARY', 'CFV Agent', 4, NULL, 'Agent CFV');


--
-- TOC entry 3695 (class 0 OID 0)
-- Dependencies: 281
-- Name: roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('roles_id_seq', 27, true);


--


--
-- TOC entry 3682 (class 0 OID 65121)
-- Dependencies: 286
-- Data for Name: slope_values; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO slope_values VALUES (1, '0-2%');
INSERT INTO slope_values VALUES (2, '2-5%');
INSERT INTO slope_values VALUES (3, '5-10%');
INSERT INTO slope_values VALUES (4, '10-20%');
INSERT INTO slope_values VALUES (5, '10-50%');


--
-- TOC entry 3452 (class 0 OID 63686)
-- Dependencies: 171
-- Data for Name: spatial_ref_sys; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3683 (class 0 OID 65196)
-- Dependencies: 306
-- Data for Name: sunit_status; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO sunit_status VALUES (1, 'New', 'Nouveau');
INSERT INTO sunit_status VALUES (4, 'Approved', 'Validée');
INSERT INTO sunit_status VALUES (5, 'Rejected', 'Rejetée');
INSERT INTO sunit_status VALUES (7, 'Final', 'Final');
INSERT INTO sunit_status VALUES (8, 'Pending', 'En attente');


--
-- TOC entry 3684 (class 0 OID 65263)
-- Dependencies: 324
-- Data for Name: village; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO village VALUES (45, 'Ouayalgui V5', 'Ouayalgui V5', 1, false, NULL);
INSERT INTO village VALUES (1, 'Bagzan', 'Bagzan', 1, false, NULL);
INSERT INTO village VALUES (2, 'Boéna', 'Boéna', 1, false, NULL);
INSERT INTO village VALUES (3, 'Bolma', 'Bolma', 1, false, NULL);
INSERT INTO village VALUES (4, 'Boudry-Peulh', 'Boudry-Peulh', 1, false, NULL);
INSERT INTO village VALUES (5, 'Bourma', 'Bourma', 1, false, NULL);
INSERT INTO village VALUES (6, 'Bingré', 'Bingré', 1, false, NULL);
INSERT INTO village VALUES (7, 'Dikomtinga', 'Dikomtinga', 1, false, NULL);
INSERT INTO village VALUES (8, 'Douré', 'Douré', 1, false, NULL);
INSERT INTO village VALUES (9, 'Foulgo', 'Foulgo', 1, false, NULL);
INSERT INTO village VALUES (10, 'Gondré', 'Gondré', 1, false, NULL);
INSERT INTO village VALUES (11, 'Gouingo', 'Gouingo', 1, false, NULL);
INSERT INTO village VALUES (12, 'Gounghin', 'Gounghin', 1, false, NULL);
INSERT INTO village VALUES (13, 'Ibogo', 'Ibogo', 1, false, NULL);
INSERT INTO village VALUES (14, 'Koankin', 'Koankin', 1, false, NULL);
INSERT INTO village VALUES (15, 'Kostenga', 'Kostenga', 1, false, NULL);
INSERT INTO village VALUES (16, 'Kolonkomé', 'Kolonkomé', 1, false, NULL);
INSERT INTO village VALUES (17, 'Liguidmalguéma', 'Liguidmalguéma', 1, false, NULL);
INSERT INTO village VALUES (18, 'Lelkom', 'Lelkom', 1, false, NULL);
INSERT INTO village VALUES (19, 'Limsèga', 'Limsèga', 1, false, NULL);
INSERT INTO village VALUES (20, 'Manéssé', 'Manéssé', 1, false, NULL);
INSERT INTO village VALUES (21, 'MankargaTraditionnel', 'MankargaTraditionnel', 1, false, NULL);
INSERT INTO village VALUES (22, 'MankargaV1', 'MankargaV1', 1, false, NULL);
INSERT INTO village VALUES (23, 'MankargaV3', 'MankargaV3', 1, false, NULL);
INSERT INTO village VALUES (24, 'MankargaV4', 'MankargaV4', 1, false, NULL);
INSERT INTO village VALUES (25, 'MankargaV5', 'MankargaV5', 1, false, NULL);
INSERT INTO village VALUES (26, 'MankargaV6', 'MankargaV6', 1, false, NULL);
INSERT INTO village VALUES (27, 'MankargaV7', 'MankargaV7', 1, false, NULL);
INSERT INTO village VALUES (28, 'MankargaV8', 'MankargaV8', 1, false, NULL);
INSERT INTO village VALUES (29, 'MankargaV9', 'MankargaV9', 1, false, NULL);
INSERT INTO village VALUES (30, 'MankargaV10', 'MankargaV10', 1, false, NULL);
INSERT INTO village VALUES (31, 'MankargaV11', 'MankargaV11', 1, false, NULL);
INSERT INTO village VALUES (32, 'Nabasnonghin', 'Nabasnonghin', 1, false, NULL);
INSERT INTO village VALUES (33, 'Nabmalguéma', 'Nabmalguéma', 1, false, NULL);
INSERT INTO village VALUES (34, 'Nabinkinsma', 'Nabinkinsma', 1, false, NULL);
INSERT INTO village VALUES (35, 'Nabiraogtenga', 'Nabiraogtenga', 1, false, NULL);
INSERT INTO village VALUES (36, 'Nanom', 'Nanom', 1, false, NULL);
INSERT INTO village VALUES (37, 'Nadioutenga', 'Nadioutenga', 1, false, NULL);
INSERT INTO village VALUES (38, 'Nédogo', 'Nédogo', 1, false, NULL);
INSERT INTO village VALUES (39, 'Nédogo-Peulh', 'Nédogo-Peulh', 1, false, NULL);
INSERT INTO village VALUES (40, 'Ouaongtenga', 'Ouaongtenga', 1, false, NULL);
INSERT INTO village VALUES (46, 'Payamtenga', 'Payamtenga', 1, false, NULL);
INSERT INTO village VALUES (47, 'Pittyn', 'Pittyn', 1, false, NULL);
INSERT INTO village VALUES (48, 'Poédogo', 'Poédogo', 1, false, NULL);
INSERT INTO village VALUES (49, 'Pousghin', 'Pousghin', 1, false, NULL);
INSERT INTO village VALUES (50, 'Roppané', 'Roppané', 1, false, NULL);
INSERT INTO village VALUES (51, 'Sanda', 'Sanda', 1, false, NULL);
INSERT INTO village VALUES (52, 'Sankuissi', 'Sankuissi', 1, false, NULL);
INSERT INTO village VALUES (53, 'Silmiougou', 'Silmiougou', 1, false, NULL);
INSERT INTO village VALUES (54, 'Songdin', 'Songdin', 1, false, NULL);
INSERT INTO village VALUES (55, 'Tallé', 'Tallé', 1, false, NULL);
INSERT INTO village VALUES (56, 'Tamissi', 'Tamissi', 1, false, NULL);
INSERT INTO village VALUES (57, 'Tanama V1', 'Tanama V1', 1, false, NULL);
INSERT INTO village VALUES (58, 'Tanama V2', 'Tanama V2', 1, false, NULL);
INSERT INTO village VALUES (59, 'Tanama V3', 'Tanama V3', 1, false, NULL);
INSERT INTO village VALUES (60, 'Tanama V4', 'Tanama V4', 1, false, NULL);
INSERT INTO village VALUES (61, 'Tanghin', 'Tanghin', 1, false, NULL);
INSERT INTO village VALUES (62, 'Tankoala', 'Tankoala', 1, false, NULL);
INSERT INTO village VALUES (63, 'Tanlouka', 'Tanlouka', 1, false, NULL);
INSERT INTO village VALUES (64, 'Taonsgo', 'Taonsgo', 1, false, NULL);
INSERT INTO village VALUES (65, 'Tansèga', 'Tansèga', 1, false, NULL);
INSERT INTO village VALUES (66, 'Tanwaka', 'Tanwaka', 1, false, NULL);
INSERT INTO village VALUES (67, 'Tinsalgo', 'Tinsalgo', 1, false, NULL);
INSERT INTO village VALUES (68, 'Toyogdo', 'Toyogdo', 1, false, NULL);
INSERT INTO village VALUES (69, 'Tenkotenga', 'Tenkotenga', 1, false, NULL);
INSERT INTO village VALUES (70, 'Yaïka', 'Yaïka', 1, false, NULL);
INSERT INTO village VALUES (71, 'Yinsinbingba', 'Yinsinbingba', 1, false, NULL);
INSERT INTO village VALUES (72, 'Zanrsin', 'Zanrsin', 1, false, NULL);
INSERT INTO village VALUES (73, 'Zoangpighin', 'Zoangpighin', 1, false, NULL);
INSERT INTO village VALUES (74, 'Zormogdo', 'Zormogdo', 1, false, NULL);
INSERT INTO village VALUES (75, 'Sambrado', 'Sambrado', 1, false, NULL);
INSERT INTO village VALUES (76, 'Ouayalgui V6', 'Ouayalgui V6', 1, false, NULL);
INSERT INTO village VALUES (77, 'Ouayalgui V7', 'Ouayalgui V7', 1, false, NULL);
INSERT INTO village VALUES (78, 'Ouayalgui V8', 'Ouayalgui V8', 1, false, NULL);
INSERT INTO village VALUES (79, 'Ouayalgui V9', 'Ouayalgui V9', 1, false, NULL);
INSERT INTO village VALUES (80, 'Ouayalgui V10', 'Ouayalgui V10', 1, false, NULL);
INSERT INTO village VALUES (81, 'Ouayalgui V11', 'Ouayalgui V11', 1, false, NULL);
INSERT INTO village VALUES (82, 'Guirga', 'Guirga', 1, false, NULL);
INSERT INTO village VALUES (83, 'Malgsomdé', 'Malgsomdé', 1, false, NULL);
INSERT INTO village VALUES (84, 'Boudry', 'Boudry', 1, false, NULL);
INSERT INTO village VALUES (85, 'Bassemkoukouri', 'Bassemkoukouri', 2, false, NULL);
INSERT INTO village VALUES (86, 'Bendogo', 'Bendogo', 2, false, NULL);
INSERT INTO village VALUES (87, 'Bissighin', 'Bissighin', 2, false, NULL);
INSERT INTO village VALUES (88, 'Kogho-Peulh', 'Kogho-Peulh', 2, false, NULL);
INSERT INTO village VALUES (89, 'Linonghin', 'Linonghin', 2, false, NULL);
INSERT INTO village VALUES (90, 'Rimalga', 'Rimalga', 2, false, NULL);
INSERT INTO village VALUES (91, 'Ronsin', 'Ronsin', 2, false, NULL);
INSERT INTO village VALUES (92, 'Santi', 'Santi', 2, false, NULL);
INSERT INTO village VALUES (93, 'Tangandogo', 'Tangandogo', 2, false, NULL);
INSERT INTO village VALUES (571, 'Souka', 'Souka', 20, false, NULL);
INSERT INTO village VALUES (41, 'Ouayalgui V1', 'Ouayalgui V1', 1, true, NULL);
INSERT INTO village VALUES (42, 'Ouayalgui V2', 'Ouayalgui V2', 1, true, NULL);
INSERT INTO village VALUES (43, 'Ouayalgui V3', 'Ouayalgui V3', 1, true, NULL);
INSERT INTO village VALUES (44, 'Ouayalgui V4', 'Ouayalgui V4', 1, true, NULL);
INSERT INTO village VALUES (94, 'Tanghin n° 1', 'Tanghin n° 1', 2, false, NULL);
INSERT INTO village VALUES (95, 'Tanghin n° 2', 'Tanghin n° 2', 2, false, NULL);
INSERT INTO village VALUES (96, 'Tanlallé', 'Tanlallé', 2, false, NULL);
INSERT INTO village VALUES (97, 'Tensobtenga', 'Tensobtenga', 2, false, NULL);
INSERT INTO village VALUES (98, 'Tollinghin', 'Tollinghin', 2, false, NULL);
INSERT INTO village VALUES (99, 'Zorgo', 'Zorgo', 2, false, NULL);
INSERT INTO village VALUES (100, 'Kogho', 'Kogho', 2, false, NULL);
INSERT INTO village VALUES (101, 'Baghin', 'Baghin', 3, false, NULL);
INSERT INTO village VALUES (102, 'Bollé', 'Bollé', 3, false, NULL);
INSERT INTO village VALUES (103, 'Boulwando', 'Boulwando', 3, false, NULL);
INSERT INTO village VALUES (104, 'Dazanré', 'Dazanré', 3, false, NULL);
INSERT INTO village VALUES (105, 'Kabouda', 'Kabouda', 3, false, NULL);
INSERT INTO village VALUES (106, 'Kakim', 'Kakim', 3, false, NULL);
INSERT INTO village VALUES (107, 'Kanré', 'Kanré', 3, false, NULL);
INSERT INTO village VALUES (108, 'Kougdoughin', 'Kougdoughin', 3, false, NULL);
INSERT INTO village VALUES (109, 'Koulweogo', 'Koulweogo', 3, false, NULL);
INSERT INTO village VALUES (110, 'Lalmogo', 'Lalmogo', 3, false, NULL);
INSERT INTO village VALUES (111, 'Nahoubé', 'Nahoubé', 3, false, NULL);
INSERT INTO village VALUES (112, 'Ouavoussé', 'Ouavoussé', 3, false, NULL);
INSERT INTO village VALUES (113, 'Pimalga', 'Pimalga', 3, false, NULL);
INSERT INTO village VALUES (114, 'Pinré', 'Pinré', 3, false, NULL);
INSERT INTO village VALUES (115, 'Tamasgo', 'Tamasgo', 3, false, NULL);
INSERT INTO village VALUES (116, 'Tanghin', 'Tanghin', 3, false, NULL);
INSERT INTO village VALUES (117, 'Tibin', 'Tibin', 3, false, NULL);
INSERT INTO village VALUES (118, 'Vagma', 'Vagma', 3, false, NULL);
INSERT INTO village VALUES (119, 'Yama', 'Yama', 3, false, NULL);
INSERT INTO village VALUES (120, 'Zemalga', 'Zemalga', 3, false, NULL);
INSERT INTO village VALUES (121, 'Zinko', 'Zinko', 3, false, NULL);
INSERT INTO village VALUES (122, 'Méguet', 'Méguet', 3, false, NULL);
INSERT INTO village VALUES (123, 'Bomboré V1', 'Bomboré V1', 4, false, NULL);
INSERT INTO village VALUES (124, 'Bomboré V2', 'Bomboré V2', 4, false, NULL);
INSERT INTO village VALUES (125, 'Bomboré V3', 'Bomboré V3', 4, false, NULL);
INSERT INTO village VALUES (126, 'Bomboré V4', 'Bomboré V4', 4, false, NULL);
INSERT INTO village VALUES (127, 'Bomboré V5', 'Bomboré V5', 4, false, NULL);
INSERT INTO village VALUES (128, 'Bomboré V6', 'Bomboré V6', 4, false, NULL);
INSERT INTO village VALUES (129, 'Bomboré V7', 'Bomboré V7', 4, false, NULL);
INSERT INTO village VALUES (130, 'Mogtédo V1', 'Mogtédo V1', 4, false, NULL);
INSERT INTO village VALUES (131, 'Mogtédo V2', 'Mogtédo V2', 4, false, NULL);
INSERT INTO village VALUES (132, 'Mogtédo V3', 'Mogtédo V3', 4, false, NULL);
INSERT INTO village VALUES (133, 'Mogtédo V4', 'Mogtédo V4', 4, false, NULL);
INSERT INTO village VALUES (134, 'Mogtédo V5', 'Mogtédo V5', 4, false, NULL);
INSERT INTO village VALUES (135, 'Mogtédo V6', 'Mogtédo V6', 4, false, NULL);
INSERT INTO village VALUES (136, 'Nobsin', 'Nobsin', 4, false, NULL);
INSERT INTO village VALUES (137, 'Rapadama V1', 'Rapadama V1', 4, false, NULL);
INSERT INTO village VALUES (138, 'Rapadama V2', 'Rapadama V2', 4, false, NULL);
INSERT INTO village VALUES (139, 'Rapadama V3', 'Rapadama V3', 4, false, NULL);
INSERT INTO village VALUES (140, 'Rapadama V4', 'Rapadama V4', 4, false, NULL);
INSERT INTO village VALUES (141, 'Rapadama V5', 'Rapadama V5', 4, false, NULL);
INSERT INTO village VALUES (142, 'Rapadama V7', 'Rapadama V7', 4, false, NULL);
INSERT INTO village VALUES (143, 'RapadamaV8', 'RapadamaV8', 4, false, NULL);
INSERT INTO village VALUES (144, 'Rapadama V9', 'Rapadama V9', 4, false, NULL);
INSERT INTO village VALUES (145, 'Toéssin', 'Toéssin', 4, false, NULL);
INSERT INTO village VALUES (146, 'Gadghin', 'Gadghin', 4, false, NULL);
INSERT INTO village VALUES (147, 'Mogtédo', 'Mogtédo', 4, false, NULL);
INSERT INTO village VALUES (148, 'Boilghin', 'Boilghin', 5, false, NULL);
INSERT INTO village VALUES (149, 'Filiba', 'Filiba', 5, false, NULL);
INSERT INTO village VALUES (150, 'Foulgo', 'Foulgo', 5, false, NULL);
INSERT INTO village VALUES (151, 'Gnégnéogo', 'Gnégnéogo', 5, false, NULL);
INSERT INTO village VALUES (152, 'Koumséogo', 'Koumséogo', 5, false, NULL);
INSERT INTO village VALUES (153, 'Nonghin', 'Nonghin', 5, false, NULL);
INSERT INTO village VALUES (154, 'Sambtenga', 'Sambtenga', 5, false, NULL);
INSERT INTO village VALUES (155, 'Sankango', 'Sankango', 5, false, NULL);
INSERT INTO village VALUES (156, 'Tandaga', 'Tandaga', 5, false, NULL);
INSERT INTO village VALUES (157, 'Tansablogo', 'Tansablogo', 5, false, NULL);
INSERT INTO village VALUES (158, 'Yamegtenga', 'Yamegtenga', 5, false, NULL);
INSERT INTO village VALUES (159, 'Zamsé', 'Zamsé', 5, false, NULL);
INSERT INTO village VALUES (160, 'Zoétgomdé', 'Zoétgomdé', 5, false, NULL);
INSERT INTO village VALUES (161, 'Zomnogo', 'Zomnogo', 5, false, NULL);
INSERT INTO village VALUES (162, 'Salogo', 'Salogo', 5, false, NULL);
INSERT INTO village VALUES (163, 'Boulgou', 'Boulgou', 6, false, NULL);
INSERT INTO village VALUES (164, 'Damigoghin', 'Damigoghin', 6, false, NULL);
INSERT INTO village VALUES (165, 'Damongto', 'Damongto', 6, false, NULL);
INSERT INTO village VALUES (166, 'Dassimpouigo', 'Dassimpouigo', 6, false, NULL);
INSERT INTO village VALUES (167, 'Dawaka', 'Dawaka', 6, false, NULL);
INSERT INTO village VALUES (168, 'Gandeongo', 'Gandeongo', 6, false, NULL);
INSERT INTO village VALUES (169, 'Amdalaye', 'Amdalaye', 6, false, NULL);
INSERT INTO village VALUES (170, 'Ipala', 'Ipala', 6, false, NULL);
INSERT INTO village VALUES (171, 'Komgnesse', 'Komgnesse', 6, false, NULL);
INSERT INTO village VALUES (172, 'Kieglesse', 'Kieglesse', 6, false, NULL);
INSERT INTO village VALUES (173, 'Koratinga', 'Koratinga', 6, false, NULL);
INSERT INTO village VALUES (174, 'Kougri', 'Kougri', 6, false, NULL);
INSERT INTO village VALUES (175, 'Kroumweogo', 'Kroumweogo', 6, false, NULL);
INSERT INTO village VALUES (176, 'Lallé', 'Lallé', 6, false, NULL);
INSERT INTO village VALUES (177, 'Nabmalgma', 'Nabmalgma', 6, false, NULL);
INSERT INTO village VALUES (178, 'Nangbangdré', 'Nangbangdré', 6, false, NULL);
INSERT INTO village VALUES (179, 'Nahoutinga', 'Nahoutinga', 6, false, NULL);
INSERT INTO village VALUES (180, 'Pissi', 'Pissi', 6, false, NULL);
INSERT INTO village VALUES (181, 'Pousghin', 'Pousghin', 6, false, NULL);
INSERT INTO village VALUES (182, 'Rapadama T', 'Rapadama T', 6, false, NULL);
INSERT INTO village VALUES (183, 'Sambtinga', 'Sambtinga', 6, false, NULL);
INSERT INTO village VALUES (184, 'Song-naaba', 'Song-naaba', 6, false, NULL);
INSERT INTO village VALUES (185, 'Talembika', 'Talembika', 6, false, NULL);
INSERT INTO village VALUES (186, 'Toghin', 'Toghin', 6, false, NULL);
INSERT INTO village VALUES (187, 'Toyoko', 'Toyoko', 6, false, NULL);
INSERT INTO village VALUES (188, 'Waltinga', 'Waltinga', 6, false, NULL);
INSERT INTO village VALUES (189, 'Wayen-Zam', 'Wayen-Zam', 6, false, NULL);
INSERT INTO village VALUES (190, 'Wayen Rapadama', 'Wayen Rapadama', 6, false, NULL);
INSERT INTO village VALUES (191, 'Weotinga', 'Weotinga', 6, false, NULL);
INSERT INTO village VALUES (192, 'Yagma', 'Yagma', 6, false, NULL);
INSERT INTO village VALUES (193, 'Yarghin', 'Yarghin', 6, false, NULL);
INSERT INTO village VALUES (194, 'Yorgho', 'Yorgho', 6, false, NULL);
INSERT INTO village VALUES (195, 'Koratinga peulh', 'Koratinga peulh', 6, false, NULL);
INSERT INTO village VALUES (196, 'Rapadama peulh', 'Rapadama peulh', 6, false, NULL);
INSERT INTO village VALUES (197, 'Zam', 'Zam', 6, false, NULL);
INSERT INTO village VALUES (198, 'Bangbily', 'Bangbily', 7, false, NULL);
INSERT INTO village VALUES (199, 'Bissiga', 'Bissiga', 7, false, NULL);
INSERT INTO village VALUES (200, 'Bokin-Koudgo', 'Bokin-Koudgo', 7, false, NULL);
INSERT INTO village VALUES (201, 'Bougré', 'Bougré', 7, false, NULL);
INSERT INTO village VALUES (202, 'Dabèga', 'Dabèga', 7, false, NULL);
INSERT INTO village VALUES (203, 'Daguintoéga', 'Daguintoéga', 7, false, NULL);
INSERT INTO village VALUES (204, 'Digré', 'Digré', 7, false, NULL);
INSERT INTO village VALUES (205, 'Douré', 'Douré', 7, false, NULL);
INSERT INTO village VALUES (206, 'Gonkin', 'Gonkin', 7, false, NULL);
INSERT INTO village VALUES (207, 'Imiga', 'Imiga', 7, false, NULL);
INSERT INTO village VALUES (208, 'Kidiba', 'Kidiba', 7, false, NULL);
INSERT INTO village VALUES (209, 'Koubéogo', 'Koubéogo', 7, false, NULL);
INSERT INTO village VALUES (210, 'Kourgou', 'Kourgou', 7, false, NULL);
INSERT INTO village VALUES (211, 'Nabitenga', 'Nabitenga', 7, false, NULL);
INSERT INTO village VALUES (212, 'Tintog-Nabitenga', 'Tintog-Nabitenga', 7, false, NULL);
INSERT INTO village VALUES (213, 'Sapaga', 'Sapaga', 7, false, NULL);
INSERT INTO village VALUES (214, 'Sapaga –Peulh', 'Sapaga –Peulh', 7, false, NULL);
INSERT INTO village VALUES (215, 'Songdin', 'Songdin', 7, false, NULL);
INSERT INTO village VALUES (216, 'Souka', 'Souka', 7, false, NULL);
INSERT INTO village VALUES (217, 'Taga', 'Taga', 7, false, NULL);
INSERT INTO village VALUES (218, 'Tamasgo', 'Tamasgo', 7, false, NULL);
INSERT INTO village VALUES (219, 'Tamidou', 'Tamidou', 7, false, NULL);
INSERT INTO village VALUES (220, 'Tampelcé', 'Tampelcé', 7, false, NULL);
INSERT INTO village VALUES (221, 'Tintogo', 'Tintogo', 7, false, NULL);
INSERT INTO village VALUES (222, 'Torodo', 'Torodo', 7, false, NULL);
INSERT INTO village VALUES (223, 'Tuiré', 'Tuiré', 7, false, NULL);
INSERT INTO village VALUES (224, 'Tuiré-Peulh', 'Tuiré-Peulh', 7, false, NULL);
INSERT INTO village VALUES (225, 'Yougoulmandé', 'Yougoulmandé', 7, false, NULL);
INSERT INTO village VALUES (226, 'Zaïnga', 'Zaïnga', 7, false, NULL);
INSERT INTO village VALUES (227, 'Zempassogo', 'Zempassogo', 7, false, NULL);
INSERT INTO village VALUES (228, 'Zinado', 'Zinado', 7, false, NULL);
INSERT INTO village VALUES (229, 'Zinguédéga', 'Zinguédéga', 7, false, NULL);
INSERT INTO village VALUES (230, 'Kologuessom', 'Kologuessom', 7, false, NULL);
INSERT INTO village VALUES (231, 'Tourgoumtenga', 'Tourgoumtenga', 7, false, NULL);
INSERT INTO village VALUES (232, 'Zorgho Secteur 1', 'Zorgho Secteur 1', 7, false, NULL);
INSERT INTO village VALUES (233, 'Zorgho Secteur 2', 'Zorgho Secteur 2', 7, false, NULL);
INSERT INTO village VALUES (234, 'Zorgho Secteur 3', 'Zorgho Secteur 3', 7, false, NULL);
INSERT INTO village VALUES (235, 'Zorgho Secteur 4', 'Zorgho Secteur 4', 7, false, NULL);
INSERT INTO village VALUES (236, 'Zorgho Secteur 5', 'Zorgho Secteur 5', 7, false, NULL);
INSERT INTO village VALUES (237, 'Zorgho Secteur 6', 'Zorgho Secteur 6', 7, false, NULL);
INSERT INTO village VALUES (238, 'Badnogo', 'Badnogo', 8, false, NULL);
INSERT INTO village VALUES (239, 'Bissirin', 'Bissirin', 8, false, NULL);
INSERT INTO village VALUES (240, 'Bitoungou', 'Bitoungou', 8, false, NULL);
INSERT INTO village VALUES (241, 'Dakaongo', 'Dakaongo', 8, false, NULL);
INSERT INTO village VALUES (242, 'Darsalam', 'Darsalam', 8, false, NULL);
INSERT INTO village VALUES (243, 'Gandaogo', 'Gandaogo', 8, false, NULL);
INSERT INTO village VALUES (244, 'Goghin', 'Goghin', 8, false, NULL);
INSERT INTO village VALUES (245, 'Goantinga', 'Goantinga', 8, false, NULL);
INSERT INTO village VALUES (246, 'Kuilkanda', 'Kuilkanda', 8, false, NULL);
INSERT INTO village VALUES (247, 'Kuilmasga', 'Kuilmasga', 8, false, NULL);
INSERT INTO village VALUES (248, 'Nobtenga', 'Nobtenga', 8, false, NULL);
INSERT INTO village VALUES (249, 'Ouavoussé', 'Ouavoussé', 8, false, NULL);
INSERT INTO village VALUES (250, 'Paspanga', 'Paspanga', 8, false, NULL);
INSERT INTO village VALUES (251, 'Ramatoulaye', 'Ramatoulaye', 8, false, NULL);
INSERT INTO village VALUES (252, 'Silmiougou', 'Silmiougou', 8, false, NULL);
INSERT INTO village VALUES (253, 'Tanghin', 'Tanghin', 8, false, NULL);
INSERT INTO village VALUES (254, 'Tansèga', 'Tansèga', 8, false, NULL);
INSERT INTO village VALUES (255, 'Tameswéoghin', 'Tameswéoghin', 8, false, NULL);
INSERT INTO village VALUES (256, 'Tamidou', 'Tamidou', 8, false, NULL);
INSERT INTO village VALUES (257, 'Taonsghin', 'Taonsghin', 8, false, NULL);
INSERT INTO village VALUES (258, 'Toéssin', 'Toéssin', 8, false, NULL);
INSERT INTO village VALUES (259, 'Waada', 'Waada', 8, false, NULL);
INSERT INTO village VALUES (260, 'Wemyaoghin', 'Wemyaoghin', 8, false, NULL);
INSERT INTO village VALUES (261, 'Yamganghin', 'Yamganghin', 8, false, NULL);
INSERT INTO village VALUES (262, 'Zantonré', 'Zantonré', 8, false, NULL);
INSERT INTO village VALUES (263, 'Zorbimba', 'Zorbimba', 8, false, NULL);
INSERT INTO village VALUES (264, 'Zoungou', 'Zoungou', 8, false, NULL);
INSERT INTO village VALUES (265, 'Gasma', 'Gasma', 9, false, NULL);
INSERT INTO village VALUES (266, 'Goala', 'Goala', 9, false, NULL);
INSERT INTO village VALUES (267, 'Golmidou', 'Golmidou', 9, false, NULL);
INSERT INTO village VALUES (268, 'Goundrin', 'Goundrin', 9, false, NULL);
INSERT INTO village VALUES (269, 'Guesna', 'Guesna', 9, false, NULL);
INSERT INTO village VALUES (270, 'Kaonghin', 'Kaonghin', 9, false, NULL);
INSERT INTO village VALUES (271, 'Kiedpalogo', 'Kiedpalogo', 9, false, NULL);
INSERT INTO village VALUES (272, 'Kinana', 'Kinana', 9, false, NULL);
INSERT INTO village VALUES (273, 'Koui', 'Koui', 9, false, NULL);
INSERT INTO village VALUES (274, 'Kourian', 'Kourian', 9, false, NULL);
INSERT INTO village VALUES (275, 'Laogo', 'Laogo', 9, false, NULL);
INSERT INTO village VALUES (276, 'Likinkelsé', 'Likinkelsé', 9, false, NULL);
INSERT INTO village VALUES (277, 'Sandogo', 'Sandogo', 9, false, NULL);
INSERT INTO village VALUES (278, 'Sao', 'Sao', 9, false, NULL);
INSERT INTO village VALUES (279, 'Silmiougou', 'Silmiougou', 9, false, NULL);
INSERT INTO village VALUES (280, 'Yargo', 'Yargo', 9, false, NULL);
INSERT INTO village VALUES (281, 'Boussé Secteur 1', 'Boussé Secteur 1', 9, false, NULL);
INSERT INTO village VALUES (282, 'Boussé Secteur 2', 'Boussé Secteur 2', 9, false, NULL);
INSERT INTO village VALUES (283, 'Boussé Secteur 3', 'Boussé Secteur 3', 9, false, NULL);
INSERT INTO village VALUES (284, 'Boussé Secteur 4', 'Boussé Secteur 4', 9, false, NULL);
INSERT INTO village VALUES (285, 'Boussé Secteur 5', 'Boussé Secteur 5', 9, false, NULL);
INSERT INTO village VALUES (286, 'Barama', 'Barama', 10, false, NULL);
INSERT INTO village VALUES (287, 'Boulala', 'Boulala', 10, false, NULL);
INSERT INTO village VALUES (288, 'Gantin', 'Gantin', 10, false, NULL);
INSERT INTO village VALUES (289, 'Gantogodo', 'Gantogodo', 10, false, NULL);
INSERT INTO village VALUES (290, 'Sapeo', 'Sapeo', 10, false, NULL);
INSERT INTO village VALUES (291, 'Laye yarcé', 'Laye yarcé', 10, false, NULL);
INSERT INTO village VALUES (292, 'Sondre', 'Sondre', 10, false, NULL);
INSERT INTO village VALUES (293, 'Wanonghin', 'Wanonghin', 10, false, NULL);
INSERT INTO village VALUES (294, 'Yactenga', 'Yactenga', 10, false, NULL);
INSERT INTO village VALUES (295, 'Laye', 'Laye', 10, false, NULL);
INSERT INTO village VALUES (296, 'Belé', 'Belé', 11, false, NULL);
INSERT INTO village VALUES (297, 'Garga', 'Garga', 11, false, NULL);
INSERT INTO village VALUES (298, 'Gasgo', 'Gasgo', 11, false, NULL);
INSERT INTO village VALUES (299, 'Goabga', 'Goabga', 11, false, NULL);
INSERT INTO village VALUES (300, 'Kouka', 'Kouka', 11, false, NULL);
INSERT INTO village VALUES (301, 'Koukin', 'Koukin', 11, false, NULL);
INSERT INTO village VALUES (302, 'Mouni', 'Mouni', 11, false, NULL);
INSERT INTO village VALUES (303, 'Nabzinigma', 'Nabzinigma', 11, false, NULL);
INSERT INTO village VALUES (304, 'Napalgué', 'Napalgué', 11, false, NULL);
INSERT INTO village VALUES (305, 'Niapa', 'Niapa', 11, false, NULL);
INSERT INTO village VALUES (306, 'Niou-yarcé', 'Niou-yarcé', 11, false, NULL);
INSERT INTO village VALUES (307, 'Raongo', 'Raongo', 11, false, NULL);
INSERT INTO village VALUES (308, 'Sakouli', 'Sakouli', 11, false, NULL);
INSERT INTO village VALUES (309, 'Sondogtenga', 'Sondogtenga', 11, false, NULL);
INSERT INTO village VALUES (310, 'Sourou', 'Sourou', 11, false, NULL);
INSERT INTO village VALUES (311, 'Tamsé', 'Tamsé', 11, false, NULL);
INSERT INTO village VALUES (312, 'Tanghin', 'Tanghin', 11, false, NULL);
INSERT INTO village VALUES (313, 'Tangseghin', 'Tangseghin', 11, false, NULL);
INSERT INTO village VALUES (314, 'Wa', 'Wa', 11, false, NULL);
INSERT INTO village VALUES (315, 'Zeguedeghin', 'Zeguedeghin', 11, false, NULL);
INSERT INTO village VALUES (316, 'Niou', 'Niou', 11, false, NULL);
INSERT INTO village VALUES (317, 'Bagayiri', 'Bagayiri', 12, false, NULL);
INSERT INTO village VALUES (318, 'Bantogdo', 'Bantogdo', 12, false, NULL);
INSERT INTO village VALUES (319, 'Barouli', 'Barouli', 12, false, NULL);
INSERT INTO village VALUES (320, 'Bouanga', 'Bouanga', 12, false, NULL);
INSERT INTO village VALUES (321, 'Damsi', 'Damsi', 12, false, NULL);
INSERT INTO village VALUES (322, 'Diguila', 'Diguila', 12, false, NULL);
INSERT INTO village VALUES (323, 'Gonsin', 'Gonsin', 12, false, NULL);
INSERT INTO village VALUES (324, 'Guela', 'Guela', 12, false, NULL);
INSERT INTO village VALUES (325, 'Koala', 'Koala', 12, false, NULL);
INSERT INTO village VALUES (326, 'Kouken', 'Kouken', 12, false, NULL);
INSERT INTO village VALUES (327, 'Lao', 'Lao', 12, false, NULL);
INSERT INTO village VALUES (328, 'Manefyam', 'Manefyam', 12, false, NULL);
INSERT INTO village VALUES (329, 'Nakamtenga', 'Nakamtenga', 12, false, NULL);
INSERT INTO village VALUES (330, 'Sandogo', 'Sandogo', 12, false, NULL);
INSERT INTO village VALUES (331, 'Sanon', 'Sanon', 12, false, NULL);
INSERT INTO village VALUES (332, 'Silgo', 'Silgo', 12, false, NULL);
INSERT INTO village VALUES (333, 'Taonsogo', 'Taonsogo', 12, false, NULL);
INSERT INTO village VALUES (334, 'zoundri', 'zoundri', 12, false, NULL);
INSERT INTO village VALUES (335, 'Song-Naba', 'Song-Naba', 12, false, NULL);
INSERT INTO village VALUES (336, 'Salsé', 'Salsé', 12, false, NULL);
INSERT INTO village VALUES (337, 'Sourgoubila', 'Sourgoubila', 12, false, NULL);
INSERT INTO village VALUES (338, 'Bendogo', 'Bendogo', 13, false, NULL);
INSERT INTO village VALUES (339, 'Doanghin', 'Doanghin', 13, false, NULL);
INSERT INTO village VALUES (340, 'Douré', 'Douré', 13, false, NULL);
INSERT INTO village VALUES (341, 'Gogsé', 'Gogsé', 13, false, NULL);
INSERT INTO village VALUES (342, 'Gourpila', 'Gourpila', 13, false, NULL);
INSERT INTO village VALUES (343, 'Imkouka', 'Imkouka', 13, false, NULL);
INSERT INTO village VALUES (344, 'Kangré', 'Kangré', 13, false, NULL);
INSERT INTO village VALUES (345, 'Listenga', 'Listenga', 13, false, NULL);
INSERT INTO village VALUES (346, 'Moetenga', 'Moetenga', 13, false, NULL);
INSERT INTO village VALUES (347, 'Nahartenga', 'Nahartenga', 13, false, NULL);
INSERT INTO village VALUES (348, 'Sandogo', 'Sandogo', 13, false, NULL);
INSERT INTO village VALUES (349, 'Sotenga', 'Sotenga', 13, false, NULL);
INSERT INTO village VALUES (350, 'Tanghin', 'Tanghin', 13, false, NULL);
INSERT INTO village VALUES (351, 'Toussougtenga', 'Toussougtenga', 13, false, NULL);
INSERT INTO village VALUES (352, 'Youbga', 'Youbga', 13, false, NULL);
INSERT INTO village VALUES (353, 'Zeguedeghin', 'Zeguedeghin', 13, false, NULL);
INSERT INTO village VALUES (354, 'Zipelin', 'Zipelin', 13, false, NULL);
INSERT INTO village VALUES (355, 'Toéghin', 'Toéghin', 13, false, NULL);
INSERT INTO village VALUES (356, 'Bargo', 'Bargo', 14, false, NULL);
INSERT INTO village VALUES (357, 'Batenga', 'Batenga', 14, false, NULL);
INSERT INTO village VALUES (358, 'Bendogo', 'Bendogo', 14, false, NULL);
INSERT INTO village VALUES (359, 'Bilogtenga', 'Bilogtenga', 14, false, NULL);
INSERT INTO village VALUES (360, 'Danaogo', 'Danaogo', 14, false, NULL);
INSERT INTO village VALUES (361, 'Gounghin', 'Gounghin', 14, false, NULL);
INSERT INTO village VALUES (362, 'Largo', 'Largo', 14, false, NULL);
INSERT INTO village VALUES (363, 'Moanéga', 'Moanéga', 14, false, NULL);
INSERT INTO village VALUES (364, 'Mockin', 'Mockin', 14, false, NULL);
INSERT INTO village VALUES (365, 'Nabdoghin', 'Nabdoghin', 14, false, NULL);
INSERT INTO village VALUES (366, 'Nayampousgo', 'Nayampousgo', 14, false, NULL);
INSERT INTO village VALUES (367, 'Nioniogo', 'Nioniogo', 14, false, NULL);
INSERT INTO village VALUES (368, 'Sattin', 'Sattin', 14, false, NULL);
INSERT INTO village VALUES (369, 'Siguinvoussé', 'Siguinvoussé', 14, false, NULL);
INSERT INTO village VALUES (370, 'Siny', 'Siny', 14, false, NULL);
INSERT INTO village VALUES (371, 'Songdin', 'Songdin', 14, false, NULL);
INSERT INTO village VALUES (372, 'Tambizinsé', 'Tambizinsé', 14, false, NULL);
INSERT INTO village VALUES (373, 'Tampaongo', 'Tampaongo', 14, false, NULL);
INSERT INTO village VALUES (374, 'Absouya', 'Absouya', 14, false, NULL);
INSERT INTO village VALUES (375, 'Cissé-yarcé', 'Cissé-yarcé', 15, false, NULL);
INSERT INTO village VALUES (376, 'Guiè', 'Guiè', 15, false, NULL);
INSERT INTO village VALUES (377, 'Gademtenga', 'Gademtenga', 15, false, NULL);
INSERT INTO village VALUES (378, 'Garpéné', 'Garpéné', 15, false, NULL);
INSERT INTO village VALUES (379, 'Kouila', 'Kouila', 15, false, NULL);
INSERT INTO village VALUES (380, 'Manessa', 'Manessa', 15, false, NULL);
INSERT INTO village VALUES (381, 'Nabi-yiri', 'Nabi-yiri', 15, false, NULL);
INSERT INTO village VALUES (382, 'Napalgué', 'Napalgué', 15, false, NULL);
INSERT INTO village VALUES (383, 'Nayambsé', 'Nayambsé', 15, false, NULL);
INSERT INTO village VALUES (384, 'Niandeghin', 'Niandeghin', 15, false, NULL);
INSERT INTO village VALUES (385, 'Nioniogo', 'Nioniogo', 15, false, NULL);
INSERT INTO village VALUES (386, 'Ouamzong-Yiri', 'Ouamzong-Yiri', 15, false, NULL);
INSERT INTO village VALUES (387, 'Pagatenga', 'Pagatenga', 15, false, NULL);
INSERT INTO village VALUES (388, 'Pighin', 'Pighin', 15, false, NULL);
INSERT INTO village VALUES (389, 'Poédogo', 'Poédogo', 15, false, NULL);
INSERT INTO village VALUES (390, 'Soglozi', 'Soglozi', 15, false, NULL);
INSERT INTO village VALUES (391, 'Somnawaye', 'Somnawaye', 15, false, NULL);
INSERT INTO village VALUES (392, 'Souka', 'Souka', 15, false, NULL);
INSERT INTO village VALUES (393, 'Tamporain', 'Tamporain', 15, false, NULL);
INSERT INTO village VALUES (394, 'TanghinNiangeghin', 'TanghinNiangeghin', 15, false, NULL);
INSERT INTO village VALUES (395, 'Tanguiga', 'Tanguiga', 15, false, NULL);
INSERT INTO village VALUES (396, 'Tigem Koamba', 'Tigem Koamba', 15, false, NULL);
INSERT INTO village VALUES (397, 'Voaga', 'Voaga', 15, false, NULL);
INSERT INTO village VALUES (398, 'Youm-yiri', 'Youm-yiri', 15, false, NULL);
INSERT INTO village VALUES (399, 'Tanlili', 'Tanlili', 15, false, NULL);
INSERT INTO village VALUES (400, 'Zakouré', 'Zakouré', 15, false, NULL);
INSERT INTO village VALUES (401, 'Kinsi', 'Kinsi', 15, false, NULL);
INSERT INTO village VALUES (402, 'Korom', 'Korom', 15, false, NULL);
INSERT INTO village VALUES (403, 'Koudgou', 'Koudgou', 15, false, NULL);
INSERT INTO village VALUES (404, 'Dapelgo', 'Dapelgo', 15, false, NULL);
INSERT INTO village VALUES (405, 'Bangrin', 'Bangrin', 16, false, NULL);
INSERT INTO village VALUES (406, 'Bendogo', 'Bendogo', 16, false, NULL);
INSERT INTO village VALUES (407, 'Daguilma', 'Daguilma', 16, false, NULL);
INSERT INTO village VALUES (408, 'Donsin', 'Donsin', 16, false, NULL);
INSERT INTO village VALUES (409, 'Dogomnogo', 'Dogomnogo', 16, false, NULL);
INSERT INTO village VALUES (410, 'Gandin', 'Gandin', 16, false, NULL);
INSERT INTO village VALUES (411, 'Goué', 'Goué', 16, false, NULL);
INSERT INTO village VALUES (412, 'Goundry', 'Goundry', 16, false, NULL);
INSERT INTO village VALUES (413, 'Ipala', 'Ipala', 16, false, NULL);
INSERT INTO village VALUES (414, 'Kogninga', 'Kogninga', 16, false, NULL);
INSERT INTO village VALUES (415, 'Koulsinga', 'Koulsinga', 16, false, NULL);
INSERT INTO village VALUES (416, 'Kouriyaoghin', 'Kouriyaoghin', 16, false, NULL);
INSERT INTO village VALUES (417, 'Nabdogo', 'Nabdogo', 16, false, NULL);
INSERT INTO village VALUES (418, 'Nangtenga', 'Nangtenga', 16, false, NULL);
INSERT INTO village VALUES (419, 'Nonguestenga', 'Nonguestenga', 16, false, NULL);
INSERT INTO village VALUES (420, 'Nomgana', 'Nomgana', 16, false, NULL);
INSERT INTO village VALUES (421, 'Noungou', 'Noungou', 16, false, NULL);
INSERT INTO village VALUES (422, 'Ouemtenga', 'Ouemtenga', 16, false, NULL);
INSERT INTO village VALUES (423, 'Pendissi', 'Pendissi', 16, false, NULL);
INSERT INTO village VALUES (424, 'Pendogo', 'Pendogo', 16, false, NULL);
INSERT INTO village VALUES (425, 'Poédogo I', 'Poédogo I', 16, false, NULL);
INSERT INTO village VALUES (426, 'Poédogo II', 'Poédogo II', 16, false, NULL);
INSERT INTO village VALUES (427, 'Pousghin', 'Pousghin', 16, false, NULL);
INSERT INTO village VALUES (428, 'Ramitenga', 'Ramitenga', 16, false, NULL);
INSERT INTO village VALUES (429, 'Silmiougou', 'Silmiougou', 16, false, NULL);
INSERT INTO village VALUES (430, 'Tabtenga', 'Tabtenga', 16, false, NULL);
INSERT INTO village VALUES (431, 'Tangzougou', 'Tangzougou', 16, false, NULL);
INSERT INTO village VALUES (432, 'Tanlaorgo', 'Tanlaorgo', 16, false, NULL);
INSERT INTO village VALUES (433, 'Wavoussé', 'Wavoussé', 16, false, NULL);
INSERT INTO village VALUES (434, 'Zongo', 'Zongo', 16, false, NULL);
INSERT INTO village VALUES (435, 'Loumbila', 'Loumbila', 16, false, NULL);
INSERT INTO village VALUES (436, 'Baadnogo', 'Baadnogo', 17, false, NULL);
INSERT INTO village VALUES (437, 'Gondogo', 'Gondogo', 17, false, NULL);
INSERT INTO village VALUES (438, 'Kolokom', 'Kolokom', 17, false, NULL);
INSERT INTO village VALUES (439, 'Laongo-Taoré', 'Laongo-Taoré', 17, false, NULL);
INSERT INTO village VALUES (440, 'Linoghin', 'Linoghin', 17, false, NULL);
INSERT INTO village VALUES (441, 'Malgrétenga', 'Malgrétenga', 17, false, NULL);
INSERT INTO village VALUES (442, 'Nagréonkodogo', 'Nagréonkodogo', 17, false, NULL);
INSERT INTO village VALUES (443, 'Nahartenga', 'Nahartenga', 17, false, NULL);
INSERT INTO village VALUES (444, 'Napamboumbou', 'Napamboumbou', 17, false, NULL);
INSERT INTO village VALUES (445, 'Pengdwendé', 'Pengdwendé', 17, false, NULL);
INSERT INTO village VALUES (446, 'Sarogo', 'Sarogo', 17, false, NULL);
INSERT INTO village VALUES (447, 'Satté', 'Satté', 17, false, NULL);
INSERT INTO village VALUES (448, 'Signoghin', 'Signoghin', 17, false, NULL);
INSERT INTO village VALUES (449, 'Tamanéga', 'Tamanéga', 17, false, NULL);
INSERT INTO village VALUES (450, 'Tanvoussé', 'Tanvoussé', 17, false, NULL);
INSERT INTO village VALUES (451, 'Toghin-bangré', 'Toghin-bangré', 17, false, NULL);
INSERT INTO village VALUES (452, 'Watinooma', 'Watinooma', 17, false, NULL);
INSERT INTO village VALUES (453, 'Wavoussé', 'Wavoussé', 17, false, NULL);
INSERT INTO village VALUES (454, 'Youtenga', 'Youtenga', 17, false, NULL);
INSERT INTO village VALUES (455, 'Nagréongo', 'Nagréongo', 17, false, NULL);
INSERT INTO village VALUES (456, 'Bobou', 'Bobou', 18, false, NULL);
INSERT INTO village VALUES (457, 'Bissighin', 'Bissighin', 18, false, NULL);
INSERT INTO village VALUES (458, 'Bouktenga', 'Bouktenga', 18, false, NULL);
INSERT INTO village VALUES (459, 'Boulporé', 'Boulporé', 18, false, NULL);
INSERT INTO village VALUES (460, 'Faaga', 'Faaga', 18, false, NULL);
INSERT INTO village VALUES (461, 'Guemsaongo', 'Guemsaongo', 18, false, NULL);
INSERT INTO village VALUES (462, 'Lindi', 'Lindi', 18, false, NULL);
INSERT INTO village VALUES (463, 'Loyargo', 'Loyargo', 18, false, NULL);
INSERT INTO village VALUES (464, 'Manéga', 'Manéga', 18, false, NULL);
INSERT INTO village VALUES (465, 'Namassa', 'Namassa', 18, false, NULL);
INSERT INTO village VALUES (466, 'Nounkodogo', 'Nounkodogo', 18, false, NULL);
INSERT INTO village VALUES (467, 'Poédogo', 'Poédogo', 18, false, NULL);
INSERT INTO village VALUES (468, 'Romissi', 'Romissi', 18, false, NULL);
INSERT INTO village VALUES (469, 'Samissi', 'Samissi', 18, false, NULL);
INSERT INTO village VALUES (470, 'Sanbsin', 'Sanbsin', 18, false, NULL);
INSERT INTO village VALUES (471, 'Sanbsin -Peulh', 'Sanbsin -Peulh', 18, false, NULL);
INSERT INTO village VALUES (472, 'Sidogo', 'Sidogo', 18, false, NULL);
INSERT INTO village VALUES (473, 'Somdamessom', 'Somdamessom', 18, false, NULL);
INSERT INTO village VALUES (474, 'Somdé', 'Somdé', 18, false, NULL);
INSERT INTO village VALUES (475, 'Sommassi', 'Sommassi', 18, false, NULL);
INSERT INTO village VALUES (476, 'Tambogo', 'Tambogo', 18, false, NULL);
INSERT INTO village VALUES (477, 'Tanghin- Manéga', 'Tanghin- Manéga', 18, false, NULL);
INSERT INTO village VALUES (478, 'Tiguimtenga', 'Tiguimtenga', 18, false, NULL);
INSERT INTO village VALUES (479, 'Wazelé', 'Wazelé', 18, false, NULL);
INSERT INTO village VALUES (480, 'Yobitenga', 'Yobitenga', 18, false, NULL);
INSERT INTO village VALUES (481, 'Zoundi', 'Zoundi', 18, false, NULL);
INSERT INTO village VALUES (482, 'Sidogo Yarcé', 'Sidogo Yarcé', 18, false, NULL);
INSERT INTO village VALUES (483, 'Tebodogo', 'Tebodogo', 18, false, NULL);
INSERT INTO village VALUES (484, 'Ourgou-Manega', 'Ourgou-Manega', 18, false, NULL);
INSERT INTO village VALUES (485, 'Badnogo', 'Badnogo', 19, false, NULL);
INSERT INTO village VALUES (486, 'Bagadogo', 'Bagadogo', 19, false, NULL);
INSERT INTO village VALUES (487, 'Basbedo', 'Basbedo', 19, false, NULL);
INSERT INTO village VALUES (488, 'Barkuitenga', 'Barkuitenga', 19, false, NULL);
INSERT INTO village VALUES (489, 'Barkoudouba', 'Barkoudouba', 19, false, NULL);
INSERT INTO village VALUES (490, 'Betta', 'Betta', 19, false, NULL);
INSERT INTO village VALUES (491, 'Bissiga Peulh', 'Bissiga Peulh', 19, false, NULL);
INSERT INTO village VALUES (492, 'Boalin', 'Boalin', 19, false, NULL);
INSERT INTO village VALUES (493, 'Boulba', 'Boulba', 19, false, NULL);
INSERT INTO village VALUES (494, 'Gam-Silimimossé', 'Gam-Silimimossé', 19, false, NULL);
INSERT INTO village VALUES (495, 'Gombogo', 'Gombogo', 19, false, NULL);
INSERT INTO village VALUES (496, 'Gombogo-Peulh', 'Gombogo-Peulh', 19, false, NULL);
INSERT INTO village VALUES (497, 'Gonsé', 'Gonsé', 19, false, NULL);
INSERT INTO village VALUES (498, 'GondogoTandaaga', 'GondogoTandaaga', 19, false, NULL);
INSERT INTO village VALUES (499, 'Goulgo', 'Goulgo', 19, false, NULL);
INSERT INTO village VALUES (500, 'Ipala', 'Ipala', 19, false, NULL);
INSERT INTO village VALUES (501, 'Kartenga', 'Kartenga', 19, false, NULL);
INSERT INTO village VALUES (502, 'Koada-Yarcé', 'Koada-Yarcé', 19, false, NULL);
INSERT INTO village VALUES (503, 'Koassanga', 'Koassanga', 19, false, NULL);
INSERT INTO village VALUES (504, 'Kolgondiessé', 'Kolgondiessé', 19, false, NULL);
INSERT INTO village VALUES (505, 'Koulgandogo', 'Koulgandogo', 19, false, NULL);
INSERT INTO village VALUES (506, 'Koulgando-peulh', 'Koulgando-peulh', 19, false, NULL);
INSERT INTO village VALUES (507, 'Kouila', 'Kouila', 19, false, NULL);
INSERT INTO village VALUES (508, 'Ladwenda', 'Ladwenda', 19, false, NULL);
INSERT INTO village VALUES (509, 'Laongo-yanga', 'Laongo-yanga', 19, false, NULL);
INSERT INTO village VALUES (510, 'Matté', 'Matté', 19, false, NULL);
INSERT INTO village VALUES (511, 'Moutti', 'Moutti', 19, false, NULL);
INSERT INTO village VALUES (512, 'Moyargo', 'Moyargo', 19, false, NULL);
INSERT INTO village VALUES (513, 'Nabitenga', 'Nabitenga', 19, false, NULL);
INSERT INTO village VALUES (514, 'Nab-Bingma', 'Nab-Bingma', 19, false, NULL);
INSERT INTO village VALUES (515, 'Nakamtenga I', 'Nakamtenga I', 19, false, NULL);
INSERT INTO village VALUES (516, 'Nakamtenga II', 'Nakamtenga II', 19, false, NULL);
INSERT INTO village VALUES (517, 'Namassa', 'Namassa', 19, false, NULL);
INSERT INTO village VALUES (518, 'Napamboubou-saalin', 'Napamboubou-saalin', 19, false, NULL);
INSERT INTO village VALUES (519, 'Ouagatenga', 'Ouagatenga', 19, false, NULL);
INSERT INTO village VALUES (520, 'Oubri-Yaoghin', 'Oubri-Yaoghin', 19, false, NULL);
INSERT INTO village VALUES (521, 'Pilaga peulh', 'Pilaga peulh', 19, false, NULL);
INSERT INTO village VALUES (522, 'Rassempoughin', 'Rassempoughin', 19, false, NULL);
INSERT INTO village VALUES (523, 'Sawana', 'Sawana', 19, false, NULL);
INSERT INTO village VALUES (524, 'Soulgo', 'Soulgo', 19, false, NULL);
INSERT INTO village VALUES (525, 'Songpélcé', 'Songpélcé', 19, false, NULL);
INSERT INTO village VALUES (526, 'Tanghin-Gombogo', 'Tanghin-Gombogo', 19, false, NULL);
INSERT INTO village VALUES (527, 'Tanghin Goudry', 'Tanghin Goudry', 19, false, NULL);
INSERT INTO village VALUES (528, 'Tamassa', 'Tamassa', 19, false, NULL);
INSERT INTO village VALUES (529, 'Tamissi', 'Tamissi', 19, false, NULL);
INSERT INTO village VALUES (530, 'Tambogo Peulh', 'Tambogo Peulh', 19, false, NULL);
INSERT INTO village VALUES (531, 'Tampougtenga', 'Tampougtenga', 19, false, NULL);
INSERT INTO village VALUES (532, 'Tanpoko Peulh', 'Tanpoko Peulh', 19, false, NULL);
INSERT INTO village VALUES (533, 'Taonsgo', 'Taonsgo', 19, false, NULL);
INSERT INTO village VALUES (534, 'Tibin', 'Tibin', 19, false, NULL);
INSERT INTO village VALUES (535, 'Ziga', 'Ziga', 19, false, NULL);
INSERT INTO village VALUES (536, 'Koulkinka', 'Koulkinka', 19, false, NULL);
INSERT INTO village VALUES (537, 'Douré', 'Douré', 19, false, NULL);
INSERT INTO village VALUES (538, 'Ziniaré Secteur 1', 'Ziniaré Secteur 1', 19, false, NULL);
INSERT INTO village VALUES (539, 'Ziniaré Secteur 2', 'Ziniaré Secteur 2', 19, false, NULL);
INSERT INTO village VALUES (540, 'Ziniaré Secteur 3', 'Ziniaré Secteur 3', 19, false, NULL);
INSERT INTO village VALUES (541, 'Ziniaré Secteur 4', 'Ziniaré Secteur 4', 19, false, NULL);
INSERT INTO village VALUES (542, 'Ziniaré Secteur 5', 'Ziniaré Secteur 5', 19, false, NULL);
INSERT INTO village VALUES (543, 'Andem', 'Andem', 20, false, NULL);
INSERT INTO village VALUES (544, 'Bagtenga', 'Bagtenga', 20, false, NULL);
INSERT INTO village VALUES (545, 'Barkoundouba-Mossi', 'Barkoundouba-Mossi', 20, false, NULL);
INSERT INTO village VALUES (546, 'Bendogo', 'Bendogo', 20, false, NULL);
INSERT INTO village VALUES (547, 'Bissiga-Mossi', 'Bissiga-Mossi', 20, false, NULL);
INSERT INTO village VALUES (548, 'Bissiga- Yarcé', 'Bissiga- Yarcé', 20, false, NULL);
INSERT INTO village VALUES (549, 'Boalla', 'Boalla', 20, false, NULL);
INSERT INTO village VALUES (550, 'Dayagretenga', 'Dayagretenga', 20, false, NULL);
INSERT INTO village VALUES (551, 'Dimianema', 'Dimianema', 20, false, NULL);
INSERT INTO village VALUES (552, 'Itaoré', 'Itaoré', 20, false, NULL);
INSERT INTO village VALUES (553, 'Kogmasgo', 'Kogmasgo', 20, false, NULL);
INSERT INTO village VALUES (554, 'Kolgdiessé', 'Kolgdiessé', 20, false, NULL);
INSERT INTO village VALUES (555, 'kologkom', 'kologkom', 20, false, NULL);
INSERT INTO village VALUES (556, 'Komnogo', 'Komnogo', 20, false, NULL);
INSERT INTO village VALUES (557, 'Lallé', 'Lallé', 20, false, NULL);
INSERT INTO village VALUES (558, 'Leléxé', 'Leléxé', 20, false, NULL);
INSERT INTO village VALUES (559, 'Lemnogo', 'Lemnogo', 20, false, NULL);
INSERT INTO village VALUES (560, 'Nagtaoli', 'Nagtaoli', 20, false, NULL);
INSERT INTO village VALUES (561, 'Nambéguian', 'Nambéguian', 20, false, NULL);
INSERT INTO village VALUES (562, 'NioniokodogoMossi', 'NioniokodogoMossi', 20, false, NULL);
INSERT INTO village VALUES (563, 'Nioniokodogopeulh', 'Nioniokodogopeulh', 20, false, NULL);
INSERT INTO village VALUES (564, 'Nioniopalogo', 'Nioniopalogo', 20, false, NULL);
INSERT INTO village VALUES (565, 'Nonghin', 'Nonghin', 20, false, NULL);
INSERT INTO village VALUES (566, 'Ouatinoma', 'Ouatinoma', 20, false, NULL);
INSERT INTO village VALUES (567, 'Pedemtenga', 'Pedemtenga', 20, false, NULL);
INSERT INTO village VALUES (568, 'Poédogo', 'Poédogo', 20, false, NULL);
INSERT INTO village VALUES (569, 'Sadaba', 'Sadaba', 20, false, NULL);
INSERT INTO village VALUES (570, 'Samtenga', 'Samtenga', 20, false, NULL);
INSERT INTO village VALUES (572, 'Tamasgo', 'Tamasgo', 20, false, NULL);
INSERT INTO village VALUES (573, 'Tampanga', 'Tampanga', 20, false, NULL);
INSERT INTO village VALUES (574, 'Tampelga', 'Tampelga', 20, false, NULL);
INSERT INTO village VALUES (575, 'Tampouy-Silmimossé', 'Tampouy-Silmimossé', 20, false, NULL);
INSERT INTO village VALUES (576, 'Tampouy-Yarcé', 'Tampouy-Yarcé', 20, false, NULL);
INSERT INTO village VALUES (577, 'Tanghin', 'Tanghin', 20, false, NULL);
INSERT INTO village VALUES (578, 'Tanghin Kossodopeulh', 'Tanghin Kossodopeulh', 20, false, NULL);
INSERT INTO village VALUES (579, 'Tankounga', 'Tankounga', 20, false, NULL);
INSERT INTO village VALUES (580, 'Tanlili', 'Tanlili', 20, false, NULL);
INSERT INTO village VALUES (581, 'Tiba', 'Tiba', 20, false, NULL);
INSERT INTO village VALUES (582, 'Toanda', 'Toanda', 20, false, NULL);
INSERT INTO village VALUES (583, 'Yamana', 'Yamana', 20, false, NULL);
INSERT INTO village VALUES (584, 'Yanga', 'Yanga', 20, false, NULL);
INSERT INTO village VALUES (585, 'Yargo', 'Yargo', 20, false, NULL);
INSERT INTO village VALUES (586, 'Zakin', 'Zakin', 20, false, NULL);
INSERT INTO village VALUES (587, 'Zéguédéguin', 'Zéguédéguin', 20, false, NULL);
INSERT INTO village VALUES (588, 'Tabla', 'Tabla', 20, false, NULL);
INSERT INTO village VALUES (589, 'Douré', 'Douré', 20, false, NULL);
INSERT INTO village VALUES (590, 'Sadaba II', 'Sadaba II', 20, false, NULL);
INSERT INTO village VALUES (591, 'Tizilinziogo', 'Tizilinziogo', 20, false, NULL);
INSERT INTO village VALUES (592, 'Yirané', 'Yirané', 20, false, NULL);
INSERT INTO village VALUES (593, 'Rajoutenga', 'Rajoutenga', 20, false, NULL);
INSERT INTO village VALUES (594, 'Sambsin', 'Sambsin', 20, false, NULL);
INSERT INTO village VALUES (595, 'Kissirigouem', 'Kissirigouem', 20, false, NULL);
INSERT INTO village VALUES (596, 'Banguissom', 'Banguissom', 20, false, NULL);


--
-- TOC entry 3685 (class 0 OID 65266)
-- Dependencies: 325
-- Data for Name: workflow; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO workflow VALUES (1, 'New', 1, 1, true, 'Nouveau');
INSERT INTO workflow VALUES (2, 'Validate & Generate Application', 2, 1, true, 'Valider et créer la demande');
INSERT INTO workflow VALUES (3, 'Process Application', 3, 1, true, 'Traiter la demande');
INSERT INTO workflow VALUES (4, 'Send For Opinion', 4, 1, true, 'Envoyer pour avis');
INSERT INTO workflow VALUES (5, 'Prepare For Adjudication', 5, 1, true, 'Préparer pour la validation');
INSERT INTO workflow VALUES (6, 'Publish', 6, 1, true, 'Publier');
INSERT INTO workflow VALUES (7, 'Generate APFR', 7, 1, true, 'Créer lAPFR');
INSERT INTO workflow VALUES (8, 'Signature and Delivery', 8, 1, true, 'Signature et délivrance');
INSERT INTO workflow VALUES (9, 'Register', 9, 1, true, 'Enregistrer');
INSERT INTO workflow VALUES (10, 'New', 1, 2, true, 'Nouveau');
INSERT INTO workflow VALUES (11, 'Validate Title', 2, 2, true, 'Valider le titre');
INSERT INTO workflow VALUES (12, 'Process APFR', 3, 2, true, 'Traiter lAPFR');
INSERT INTO workflow VALUES (13, 'Generate APFR', 4, 2, true, 'Créer lAPFR');
INSERT INTO workflow VALUES (14, 'Register', 5, 2, true, 'Enregistrer');


-- Completed on 2016-11-29 11:39:41

--
-- PostgreSQL database dump complete
--

