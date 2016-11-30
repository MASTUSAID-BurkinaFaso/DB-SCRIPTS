--
-- PostgreSQL database dump
--

-- Dumped from database version 9.3.6
-- Dumped by pg_dump version 9.3.6
-- Started on 2016-11-29 11:36:11

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 183 (class 1259 OID 64707)
-- Name: Cosmetic_Line; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Cosmetic_Line" (
    gid integer NOT NULL,
    id numeric(10,0),
    uid character varying(100),
    username character varying(100),
    the_geom geometry,
    CONSTRAINT enforce_dims_the_geom CHECK ((st_ndims(the_geom) = 2)),
    CONSTRAINT enforce_geotype_the_geom CHECK (((geometrytype(the_geom) = 'MULTILINESTRING'::text) OR (the_geom IS NULL))),
    CONSTRAINT enforce_srid_the_geom CHECK ((st_srid(the_geom) = 4326))
);


ALTER TABLE public."Cosmetic_Line" OWNER TO postgres;

--
-- TOC entry 184 (class 1259 OID 64716)
-- Name: Cosmetic_Line_gid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Cosmetic_Line_gid_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Cosmetic_Line_gid_seq" OWNER TO postgres;

--
-- TOC entry 3891 (class 0 OID 0)
-- Dependencies: 184
-- Name: Cosmetic_Line_gid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Cosmetic_Line_gid_seq" OWNED BY "Cosmetic_Line".gid;


--
-- TOC entry 185 (class 1259 OID 64718)
-- Name: Cosmetic_Point; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Cosmetic_Point" (
    gid integer NOT NULL,
    id numeric(10,0),
    uid character varying(100),
    username character varying(100),
    label character varying(100),
    the_geom geometry,
    CONSTRAINT enforce_dims_the_geom CHECK ((st_ndims(the_geom) = 2)),
    CONSTRAINT enforce_geotype_the_geom CHECK (((geometrytype(the_geom) = 'POINT'::text) OR (the_geom IS NULL))),
    CONSTRAINT enforce_srid_the_geom CHECK ((st_srid(the_geom) = 4326))
);


ALTER TABLE public."Cosmetic_Point" OWNER TO postgres;

--
-- TOC entry 186 (class 1259 OID 64727)
-- Name: Cosmetic_Point_gid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Cosmetic_Point_gid_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Cosmetic_Point_gid_seq" OWNER TO postgres;

--
-- TOC entry 3892 (class 0 OID 0)
-- Dependencies: 186
-- Name: Cosmetic_Point_gid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Cosmetic_Point_gid_seq" OWNED BY "Cosmetic_Point".gid;


--
-- TOC entry 187 (class 1259 OID 64729)
-- Name: Cosmetic_Poly; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Cosmetic_Poly" (
    gid integer NOT NULL,
    id numeric(10,0),
    uid character varying(100),
    username character varying(100),
    the_geom geometry,
    CONSTRAINT enforce_dims_the_geom CHECK ((st_ndims(the_geom) = 2)),
    CONSTRAINT enforce_geotype_the_geom CHECK (((geometrytype(the_geom) = 'MULTIPOLYGON'::text) OR (the_geom IS NULL))),
    CONSTRAINT enforce_srid_the_geom CHECK ((st_srid(the_geom) = 4326))
);


ALTER TABLE public."Cosmetic_Poly" OWNER TO postgres;

--
-- TOC entry 188 (class 1259 OID 64738)
-- Name: Cosmetic_Poly_gid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Cosmetic_Poly_gid_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Cosmetic_Poly_gid_seq" OWNER TO postgres;

--
-- TOC entry 3893 (class 0 OID 0)
-- Dependencies: 188
-- Name: Cosmetic_Poly_gid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Cosmetic_Poly_gid_seq" OWNED BY "Cosmetic_Poly".gid;


--
-- TOC entry 189 (class 1259 OID 64740)
-- Name: action; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE action (
    name character varying(255) NOT NULL,
    description character varying(255),
    id integer NOT NULL,
    tenantid character varying(50)
);


ALTER TABLE public.action OWNER TO postgres;

--
-- TOC entry 190 (class 1259 OID 64746)
-- Name: action_tools; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE action_tools (
    id integer NOT NULL,
    name character varying(200),
    role_id integer,
    workflow_list character varying(200),
    name_fr character varying(50)
);


ALTER TABLE public.action_tools OWNER TO postgres;

--
-- TOC entry 191 (class 1259 OID 64749)
-- Name: actions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE actions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.actions_id_seq OWNER TO postgres;

--
-- TOC entry 3894 (class 0 OID 0)
-- Dependencies: 191
-- Name: actions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE actions_id_seq OWNED BY action.id;


--
-- TOC entry 193 (class 1259 OID 64757)
-- Name: attribute; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE attribute (
    value character varying(3000) NOT NULL,
    attributevalueid bigint NOT NULL,
    parentuid bigint,
    uid bigint NOT NULL
);


ALTER TABLE public.attribute OWNER TO postgres;

--
-- TOC entry 194 (class 1259 OID 64763)
-- Name: attribute_category; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE attribute_category (
    attributecategoryid integer NOT NULL,
    category_name character varying NOT NULL,
    category_name_fr character varying(50)
);


ALTER TABLE public.attribute_category OWNER TO postgres;

--
-- TOC entry 3895 (class 0 OID 0)
-- Dependencies: 194
-- Name: TABLE attribute_category; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE attribute_category IS '1. General
2. Person
3. Tenure
4 Multimedia
etc';


--
-- TOC entry 195 (class 1259 OID 64769)
-- Name: attribute_master; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE attribute_master (
    id integer NOT NULL,
    alias character varying NOT NULL,
    fieldname character varying NOT NULL,
    datatype_id integer NOT NULL,
    attributecategoryid integer NOT NULL,
    reftable character varying NOT NULL,
    size character varying NOT NULL,
    mandatory boolean NOT NULL,
    listing integer,
    active boolean DEFAULT true,
    alias_second_language character varying,
    master_attrib boolean,
    istype character varying(20)
);


ALTER TABLE public.attribute_master OWNER TO postgres;

--
-- TOC entry 3896 (class 0 OID 0)
-- Dependencies: 195
-- Name: TABLE attribute_master; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE attribute_master IS 'Stores all the attributes for lookup purpose';


--
-- TOC entry 3897 (class 0 OID 0)
-- Dependencies: 195
-- Name: COLUMN attribute_master.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN attribute_master.id IS 'primary key';


--
-- TOC entry 3898 (class 0 OID 0)
-- Dependencies: 195
-- Name: COLUMN attribute_master.alias; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN attribute_master.alias IS 'Display name';


--
-- TOC entry 3899 (class 0 OID 0)
-- Dependencies: 195
-- Name: COLUMN attribute_master.fieldname; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN attribute_master.fieldname IS 'actual field name';


--
-- TOC entry 3900 (class 0 OID 0)
-- Dependencies: 195
-- Name: COLUMN attribute_master.reftable; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN attribute_master.reftable IS 'Stores the actual table name that the attribute extends';


--
-- TOC entry 3901 (class 0 OID 0)
-- Dependencies: 195
-- Name: COLUMN attribute_master.mandatory; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN attribute_master.mandatory IS 'true of the attribute refers to standard tables';


--
-- TOC entry 197 (class 1259 OID 64778)
-- Name: attribute_options; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE attribute_options (
    id integer NOT NULL,
    optiontext character varying,
    attribute_id integer,
    optiontext_second_language character varying,
    parent_id integer
);


ALTER TABLE public.attribute_options OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 64788)
-- Name: baselayer; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE baselayer (
    id integer DEFAULT nextval('baselayer_id_seq'::regclass) NOT NULL,
    name character varying(50) NOT NULL,
    description character varying(100)
);


ALTER TABLE public.baselayer OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 64792)
-- Name: bookmark; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE bookmark (
    name character varying(255) NOT NULL,
    description character varying(255),
    minx double precision NOT NULL,
    miny double precision NOT NULL,
    maxx double precision NOT NULL,
    maxy double precision NOT NULL,
    project character varying(25) NOT NULL,
    id integer NOT NULL,
    tenantid character varying(25)
);


ALTER TABLE public.bookmark OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 64798)
-- Name: bookmark_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE bookmark_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.bookmark_id_seq OWNER TO postgres;

--
-- TOC entry 3902 (class 0 OID 0)
-- Dependencies: 202
-- Name: bookmark_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE bookmark_id_seq OWNED BY bookmark.id;


--
-- TOC entry 203 (class 1259 OID 64800)
-- Name: citizenship; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE citizenship (
    id bigint NOT NULL,
    citizenname character varying(50),
    citizenname_sw character varying(50)
);


ALTER TABLE public.citizenship OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 64803)
-- Name: commune; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE commune (
    commune_id integer NOT NULL,
    commune_name character varying(100),
    commune_name_fr character varying(100),
    province_id integer
);


ALTER TABLE public.commune OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 64806)
-- Name: country; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE country (
    country_id integer NOT NULL,
    country_name character varying(200)
);


ALTER TABLE public.country OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 64809)
-- Name: datatype_id; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE datatype_id (
    datatype_id integer NOT NULL,
    datatype character varying(25) NOT NULL,
    datatype_fr character varying(50)
);


ALTER TABLE public.datatype_id OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 64814)
-- Name: education_level; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE education_level (
    level_id integer NOT NULL,
    education_level character varying NOT NULL
);


ALTER TABLE public.education_level OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 64820)
-- Name: gender; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE gender (
    gender_id integer NOT NULL,
    gender character varying NOT NULL,
    gender_sw character varying(50)
);


ALTER TABLE public.gender OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 64828)
-- Name: group_person; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE group_person (
    gid integer NOT NULL,
    group_name character varying(25),
    rep_person_gid bigint NOT NULL,
    ownership_type character varying(25)
);


ALTER TABLE public.group_person OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 64831)
-- Name: group_person_gid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE group_person_gid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.group_person_gid_seq OWNER TO postgres;

--
-- TOC entry 3903 (class 0 OID 0)
-- Dependencies: 212
-- Name: group_person_gid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE group_person_gid_seq OWNED BY group_person.gid;


--
-- TOC entry 213 (class 1259 OID 64833)
-- Name: group_type; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE group_type (
    group_id integer NOT NULL,
    group_value character varying(50),
    group_value_sw character varying(50)
);


ALTER TABLE public.group_type OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 64836)
-- Name: land_type; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE land_type (
    landtype_id integer NOT NULL,
    landtype_value character varying(50),
    landtype_value_sw character varying(50)
);


ALTER TABLE public.land_type OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 64839)
-- Name: land_use_type; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE land_use_type (
    use_type_id integer NOT NULL,
    land_use_type character varying NOT NULL,
    land_use_type_sw character varying(50)
);


ALTER TABLE public.land_use_type OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 64845)
-- Name: layer; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE layer (
    name character varying(255) NOT NULL,
    alias character varying(255) NOT NULL,
    projection character varying(255) NOT NULL,
    unit character varying(255),
    maxextent character varying(255) NOT NULL,
    minextent character varying(255),
    maxresolution integer,
    minresolution integer,
    numzoomlevels integer,
    minscale integer,
    maxscale integer,
    transitioneffect character varying(255),
    type character varying(255) NOT NULL,
    style text,
    filter character varying(255),
    url character varying(255) NOT NULL,
    tilesize integer,
    buffer integer,
    format character varying(255) NOT NULL,
    apikey character varying(255),
    version character varying(255),
    featurens character varying(255),
    featuretype character varying(255),
    geometryname character varying(255),
    schemaname character varying(255),
    geomtype character varying(255),
    wfsname character varying(255),
    displayname character varying(255),
    tenantid character varying(50),
    isbaselayer boolean DEFAULT false,
    displayinlayermanager boolean DEFAULT false,
    displayoutsidemaxextent boolean DEFAULT false,
    wrapdateline boolean DEFAULT false,
    sphericalmercator boolean DEFAULT false,
    editable boolean DEFAULT false,
    queryable boolean DEFAULT false,
    exportable boolean DEFAULT false,
    selectable boolean DEFAULT false,
    tiled boolean DEFAULT true,
    visibility boolean DEFAULT true
);


ALTER TABLE public.layer OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 64864)
-- Name: layer_field; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE layer_field (
    layer character varying(255) NOT NULL,
    field character varying(255) NOT NULL,
    alias character varying(255) NOT NULL,
    keyfield character varying(255) NOT NULL,
    id integer DEFAULT nextval('layer_fields_id_seq'::regclass) NOT NULL,
    tenantid character varying(50)
);


ALTER TABLE public.layer_field OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 64871)
-- Name: layer_layergroup; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE layer_layergroup (
    layer character varying(255) NOT NULL,
    layergroup character varying(255) NOT NULL,
    layerorder integer NOT NULL,
    id integer NOT NULL,
    tenantid character varying(50),
    layervisibility boolean DEFAULT true NOT NULL
);


ALTER TABLE public.layer_layergroup OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 64878)
-- Name: layer_layergroup_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE layer_layergroup_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.layer_layergroup_id_seq OWNER TO postgres;

--
-- TOC entry 3904 (class 0 OID 0)
-- Dependencies: 220
-- Name: layer_layergroup_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE layer_layergroup_id_seq OWNED BY layer_layergroup.id;


--
-- TOC entry 221 (class 1259 OID 64880)
-- Name: layergroup; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE layergroup (
    name character varying(255) NOT NULL,
    alias character varying(255),
    id integer NOT NULL,
    tenantid character varying(50)
);


ALTER TABLE public.layergroup OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 64886)
-- Name: layergroup_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE layergroup_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.layergroup_id_seq OWNER TO postgres;

--
-- TOC entry 3905 (class 0 OID 0)
-- Dependencies: 222
-- Name: layergroup_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE layergroup_id_seq OWNED BY layergroup.id;


--
-- TOC entry 223 (class 1259 OID 64888)
-- Name: layertype; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE layertype (
    name character varying(255) NOT NULL,
    description character varying(255),
    id integer NOT NULL,
    tenantid character varying(50)
);


ALTER TABLE public.layertype OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 64894)
-- Name: layertype_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE layertype_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.layertype_id_seq OWNER TO postgres;

--
-- TOC entry 3906 (class 0 OID 0)
-- Dependencies: 224
-- Name: layertype_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE layertype_id_seq OWNED BY layertype.id;


--
-- TOC entry 225 (class 1259 OID 64896)
-- Name: maptip; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE maptip (
    name character varying(25) NOT NULL,
    project character varying(255) NOT NULL,
    layer character varying(255) NOT NULL,
    queryexpression character varying,
    field character varying(25) NOT NULL
);


ALTER TABLE public.maptip OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 64902)
-- Name: marital_status; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE marital_status (
    maritalstatus_id integer NOT NULL,
    maritalstatus character varying NOT NULL,
    maritalstatus_sw character varying(50)
);


ALTER TABLE public.marital_status OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 64910)
-- Name: module; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE module (
    name character varying(25) NOT NULL,
    description character varying(255),
    tenantid character varying(25),
    id integer NOT NULL
);


ALTER TABLE public.module OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 64913)
-- Name: module_action; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE module_action (
    action character varying(25) NOT NULL,
    module character varying(25) NOT NULL,
    id integer NOT NULL,
    tenantid character varying(25)
);


ALTER TABLE public.module_action OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 64916)
-- Name: module_action_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE module_action_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.module_action_id_seq OWNER TO postgres;

--
-- TOC entry 3907 (class 0 OID 0)
-- Dependencies: 230
-- Name: module_action_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE module_action_id_seq OWNED BY module_action.id;


--
-- TOC entry 231 (class 1259 OID 64918)
-- Name: module_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE module_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.module_id_seq OWNER TO postgres;

--
-- TOC entry 3908 (class 0 OID 0)
-- Dependencies: 231
-- Name: module_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE module_id_seq OWNED BY module.id;


--
-- TOC entry 232 (class 1259 OID 64920)
-- Name: module_role; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE module_role (
    role character varying(25) NOT NULL,
    module character varying(25) NOT NULL,
    action character varying(25),
    id integer NOT NULL,
    tenantid character varying(25)
);


ALTER TABLE public.module_role OWNER TO postgres;

--
-- TOC entry 233 (class 1259 OID 64923)
-- Name: mutation_type; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE mutation_type (
    mt_id integer NOT NULL,
    mutation_type character varying(100),
    mutation_type_fr character varying(100)
);


ALTER TABLE public.mutation_type OWNER TO postgres;

--
-- TOC entry 234 (class 1259 OID 64926)
-- Name: natural_person; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE natural_person (
    gid bigint NOT NULL,
    first_name character varying(100),
    last_name character varying(100),
    middle_name character varying(100),
    alias character varying,
    gender integer NOT NULL,
    photo bytea,
    mobile character varying(100),
    identity character varying(50),
    age integer DEFAULT 0,
    occupation character varying(100),
    occ_age_below integer DEFAULT 0,
    tenure_relation character varying(50),
    household_relation character varying(50),
    witness character varying(100),
    marital_status integer,
    household_gid integer,
    active boolean DEFAULT true,
    education integer,
    administator character varying(100),
    citizenship character varying(100),
    owner boolean DEFAULT false,
    resident_of_village boolean DEFAULT false,
    personsub_type integer,
    citizenship_id bigint DEFAULT 0,
    dob date,
    address character varying(200),
    idcard character varying(100),
    fathername character varying(100),
    mothername character varying(100),
    birthplace character varying(100),
    idcard_establishment_date date,
    nop_id integer,
    idcard_origin character varying(200),
    mandate_issuance_date date,
    mandate_location character varying(100)
);


ALTER TABLE public.natural_person OWNER TO postgres;

--
-- TOC entry 235 (class 1259 OID 64938)
-- Name: natural_person_gid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE natural_person_gid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.natural_person_gid_seq OWNER TO postgres;

--
-- TOC entry 3909 (class 0 OID 0)
-- Dependencies: 235
-- Name: natural_person_gid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE natural_person_gid_seq OWNED BY natural_person.gid;


--
-- TOC entry 236 (class 1259 OID 64940)
-- Name: nature_of_application; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE nature_of_application (
    noa_id integer NOT NULL,
    nature_of_application character varying(100),
    nature_of_application_fr character varying(100)
);


ALTER TABLE public.nature_of_application OWNER TO postgres;

--
-- TOC entry 237 (class 1259 OID 64943)
-- Name: nature_of_power; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE nature_of_power (
    nop_id integer NOT NULL,
    nature_of_power character varying(100),
    nature_of_power_fr character varying(100)
);


ALTER TABLE public.nature_of_power OWNER TO postgres;

--
-- TOC entry 238 (class 1259 OID 64946)
-- Name: non_natural_person; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE non_natural_person (
    non_natural_person_gid bigint NOT NULL,
    instutution_name character varying NOT NULL,
    address character varying,
    phone_number character varying,
    poc_gid bigint,
    active boolean DEFAULT true,
    group_type integer
);


ALTER TABLE public.non_natural_person OWNER TO postgres;

--
-- TOC entry 242 (class 1259 OID 64964)
-- Name: occupancy_type; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE occupancy_type (
    occupancy_type_id integer NOT NULL,
    description character varying NOT NULL
);


ALTER TABLE public.occupancy_type OWNER TO postgres;

--
-- TOC entry 244 (class 1259 OID 64972)
-- Name: outputformat; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE outputformat (
    name character varying(255) NOT NULL,
    mimetype character varying(255),
    id integer NOT NULL,
    tenantid character varying(25)
);


ALTER TABLE public.outputformat OWNER TO postgres;

--
-- TOC entry 245 (class 1259 OID 64978)
-- Name: outputformat_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE outputformat_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.outputformat_id_seq OWNER TO postgres;

--
-- TOC entry 3910 (class 0 OID 0)
-- Dependencies: 245
-- Name: outputformat_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE outputformat_id_seq OWNED BY outputformat.id;


--
-- TOC entry 246 (class 1259 OID 64980)
-- Name: overviewmap; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE overviewmap (
    project character varying(25) NOT NULL,
    layer character varying(25) NOT NULL,
    id integer NOT NULL,
    tenantid character varying(25)
);


ALTER TABLE public.overviewmap OWNER TO postgres;

--
-- TOC entry 247 (class 1259 OID 64983)
-- Name: overviewmap_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE overviewmap_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.overviewmap_id_seq OWNER TO postgres;

--
-- TOC entry 3911 (class 0 OID 0)
-- Dependencies: 247
-- Name: overviewmap_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE overviewmap_id_seq OWNED BY overviewmap.id;


--
-- TOC entry 248 (class 1259 OID 64985)
-- Name: parcel_type; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE parcel_type (
    parceltype_id integer NOT NULL,
    parceltype character varying(50),
    parceltype_fr character varying(100)
);


ALTER TABLE public.parcel_type OWNER TO postgres;

--
-- TOC entry 249 (class 1259 OID 64988)
-- Name: parcelcount; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE parcelcount (
    type character varying(100),
    id integer NOT NULL,
    count bigint
);


ALTER TABLE public.parcelcount OWNER TO postgres;

--
-- TOC entry 250 (class 1259 OID 64991)
-- Name: payment_info; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE payment_info (
    usin bigint NOT NULL,
    receipt_no character varying(200),
    amount bigint,
    payment_date date,
    update_date date,
    comment character varying(500),
    letter_generation_date date
);


ALTER TABLE public.payment_info OWNER TO postgres;

--
-- TOC entry 252 (class 1259 OID 64999)
-- Name: person; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE person (
    person_gid bigint NOT NULL,
    person_type_gid integer NOT NULL,
    resident boolean NOT NULL,
    mobile_group_id character varying
);


ALTER TABLE public.person OWNER TO postgres;

--
-- TOC entry 254 (class 1259 OID 65007)
-- Name: person_type; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE person_type (
    person_type_gid integer NOT NULL,
    person_type character varying NOT NULL,
    person_type_sw character varying
);


ALTER TABLE public.person_type OWNER TO postgres;

--
-- TOC entry 257 (class 1259 OID 65017)
-- Name: printtemplate; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE printtemplate (
    name character varying(255) NOT NULL,
    templatefile character varying(2000) NOT NULL,
    project character varying(255),
    id integer NOT NULL,
    tenantid character varying(50)
);


ALTER TABLE public.printtemplate OWNER TO postgres;

--
-- TOC entry 258 (class 1259 OID 65023)
-- Name: printtemplate_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE printtemplate_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.printtemplate_id_seq OWNER TO postgres;

--
-- TOC entry 3912 (class 0 OID 0)
-- Dependencies: 258
-- Name: printtemplate_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE printtemplate_id_seq OWNED BY printtemplate.id;


--
-- TOC entry 259 (class 1259 OID 65025)
-- Name: project; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE project (
    name character varying(25) NOT NULL,
    width integer,
    height integer,
    projection character varying(25),
    unit character varying(25),
    minresolutions double precision,
    maxresolutions double precision,
    numzoomlevels integer,
    displayprojection character varying(25),
    outputformat character varying(25),
    copyright character varying(255),
    watermask character varying(255),
    thumbnail bytea,
    disclaimer text,
    activelayer character varying(25) NOT NULL,
    description character varying(255),
    overlaymap character varying(25),
    id integer,
    tenantid character varying(25),
    active boolean,
    cosmetic boolean,
    minextent character varying(255),
    maxextent character varying(255),
    restrictedextent character varying(255),
    admincreated boolean DEFAULT true,
    owner character varying(255)
);


ALTER TABLE public.project OWNER TO postgres;

--
-- TOC entry 262 (class 1259 OID 65037)
-- Name: project_area; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE project_area (
    bounding_box character varying(100),
    projectid integer,
    commune character varying(50),
    gid integer,
    location character varying(50),
    perimeter character varying(35),
    category character varying(25),
    initiation_date date NOT NULL,
    recommendation_date date,
    village_chairman character varying,
    authority_approve boolean,
    village_chairman_approval_date date,
    approving_executive character varying,
    executive_approve boolean,
    executive_approval_date date,
    name character varying(100) NOT NULL,
    country_name character varying(30) NOT NULL,
    state_name character varying(30),
    province character varying(25),
    district_name character varying(25),
    municipality character varying(25),
    region character varying(25) NOT NULL,
    wards character varying(30),
    village character varying(30),
    area_id integer NOT NULL,
    district_officer character varying(200),
    village_code character varying(10),
    address character varying(200),
    presidentname character varying(100),
    mayorname character varying(100),
    commune_id integer
);


ALTER TABLE public.project_area OWNER TO postgres;

--
-- TOC entry 3913 (class 0 OID 0)
-- Dependencies: 262
-- Name: COLUMN project_area.bounding_box; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN project_area.bounding_box IS 'store values as xmin,xmax,ymin,ymax';


--
-- TOC entry 263 (class 1259 OID 65043)
-- Name: project_area_gid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE project_area_gid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.project_area_gid_seq OWNER TO postgres;

--
-- TOC entry 3914 (class 0 OID 0)
-- Dependencies: 263
-- Name: project_area_gid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE project_area_gid_seq OWNED BY project_area.gid;


--
-- TOC entry 265 (class 1259 OID 65047)
-- Name: project_baselayer; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE project_baselayer (
    id integer DEFAULT nextval('project_baselayer_id_seq'::regclass) NOT NULL,
    project character varying NOT NULL,
    baselayer character varying NOT NULL,
    baselayerorder integer NOT NULL
);


ALTER TABLE public.project_baselayer OWNER TO postgres;

--
-- TOC entry 268 (class 1259 OID 65059)
-- Name: project_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE project_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.project_id_seq OWNER TO postgres;

--
-- TOC entry 3915 (class 0 OID 0)
-- Dependencies: 268
-- Name: project_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE project_id_seq OWNED BY project.id;


--
-- TOC entry 269 (class 1259 OID 65061)
-- Name: project_layergroup; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE project_layergroup (
    project character varying(255) NOT NULL,
    layergroup character varying(255) NOT NULL,
    grouporder integer NOT NULL,
    id integer NOT NULL,
    tenantid character varying(25)
);


ALTER TABLE public.project_layergroup OWNER TO postgres;

--
-- TOC entry 270 (class 1259 OID 65067)
-- Name: project_layergroup_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE project_layergroup_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.project_layergroup_id_seq OWNER TO postgres;

--
-- TOC entry 3916 (class 0 OID 0)
-- Dependencies: 270
-- Name: project_layergroup_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE project_layergroup_id_seq OWNED BY project_layergroup.id;


--
-- TOC entry 271 (class 1259 OID 65069)
-- Name: project_region; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE project_region (
    gid integer NOT NULL,
    country_name character varying(30),
    state_name character varying(30),
    province character varying(25),
    district_name character varying(25),
    municipality character varying(25),
    region character varying(25),
    division character varying(30),
    wards character varying(30),
    village character varying(30),
    hamlet character varying(30)
);


ALTER TABLE public.project_region OWNER TO postgres;

--
-- TOC entry 272 (class 1259 OID 65072)
-- Name: project_region_gid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE project_region_gid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.project_region_gid_seq OWNER TO postgres;

--
-- TOC entry 3917 (class 0 OID 0)
-- Dependencies: 272
-- Name: project_region_gid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE project_region_gid_seq OWNED BY project_region.gid;


--
-- TOC entry 275 (class 1259 OID 65083)
-- Name: projection; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE projection (
    code character varying(25) NOT NULL,
    description character varying(255),
    id integer NOT NULL,
    tenantid character varying(25)
);


ALTER TABLE public.projection OWNER TO postgres;

--
-- TOC entry 276 (class 1259 OID 65086)
-- Name: projection_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE projection_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.projection_id_seq OWNER TO postgres;

--
-- TOC entry 3918 (class 0 OID 0)
-- Dependencies: 276
-- Name: projection_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE projection_id_seq OWNED BY projection.id;


--
-- TOC entry 277 (class 1259 OID 65088)
-- Name: province; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE province (
    province_id integer NOT NULL,
    province_name character varying(100),
    province_name_fr character varying(100),
    region_id integer
);


ALTER TABLE public.province OWNER TO postgres;

--
-- TOC entry 278 (class 1259 OID 65091)
-- Name: region; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE region (
    region_id integer NOT NULL,
    region_name character varying(100),
    region_name_fr character varying(100),
    country_id integer
);


ALTER TABLE public.region OWNER TO postgres;

--
-- TOC entry 279 (class 1259 OID 65094)
-- Name: role; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE role (
    name character varying(25) NOT NULL,
    description character varying(255),
    id integer NOT NULL,
    tenantid character varying(25),
    description_fr character varying(50)
);


ALTER TABLE public.role OWNER TO postgres;

--
-- TOC entry 280 (class 1259 OID 65097)
-- Name: role_module_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE role_module_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.role_module_id_seq OWNER TO postgres;

--
-- TOC entry 3919 (class 0 OID 0)
-- Dependencies: 280
-- Name: role_module_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE role_module_id_seq OWNED BY module_role.id;


--
-- TOC entry 281 (class 1259 OID 65099)
-- Name: roles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.roles_id_seq OWNER TO postgres;

--
-- TOC entry 3920 (class 0 OID 0)
-- Dependencies: 281
-- Name: roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE roles_id_seq OWNED BY role.id;


--
-- TOC entry 282 (class 1259 OID 65101)
-- Name: savedquery; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE savedquery (
    name character varying(25) NOT NULL,
    layer character varying(25) NOT NULL,
    whereexpression character varying(255) NOT NULL,
    description character varying(255),
    project character varying(25),
    tenantid character varying(25)
);


ALTER TABLE public.savedquery OWNER TO postgres;

--
-- TOC entry 283 (class 1259 OID 65107)
-- Name: sections_boudry; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE sections_boudry (
    gid integer NOT NULL,
    id integer,
    section character varying(20),
    geom geometry(MultiPolygon,4326)
);


ALTER TABLE public.sections_boudry OWNER TO postgres;

--
-- TOC entry 284 (class 1259 OID 65113)
-- Name: sections_boudry_gid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE sections_boudry_gid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sections_boudry_gid_seq OWNER TO postgres;

--
-- TOC entry 3921 (class 0 OID 0)
-- Dependencies: 284
-- Name: sections_boudry_gid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE sections_boudry_gid_seq OWNED BY sections_boudry.gid;


--
-- TOC entry 285 (class 1259 OID 65115)
-- Name: share_type; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE share_type (
    gid integer NOT NULL,
    share_type character varying NOT NULL,
    share_type_sw character varying
);


ALTER TABLE public.share_type OWNER TO postgres;

--
-- TOC entry 286 (class 1259 OID 65121)
-- Name: slope_values; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE slope_values (
    id integer NOT NULL,
    slope_value character varying(50)
);


ALTER TABLE public.slope_values OWNER TO postgres;

--
-- TOC entry 287 (class 1259 OID 65124)
-- Name: social_tenure_relationship; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE social_tenure_relationship (
    gid integer NOT NULL,
    social_tenure_relationship_type integer,
    usin bigint NOT NULL,
    share integer,
    person_gid bigint NOT NULL,
    occupancy_type_id integer,
    tenureclass_id integer,
    social_tenure_startdate date,
    social_tenure_enddate date,
    tenure_duration real,
    isactive boolean DEFAULT true,
    ccro_issue_date date,
    sharepercentage character varying(20) DEFAULT 0,
    resident boolean DEFAULT true
);


ALTER TABLE public.social_tenure_relationship OWNER TO postgres;

--
-- TOC entry 288 (class 1259 OID 65130)
-- Name: social_tenure_relationship_gid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE social_tenure_relationship_gid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.social_tenure_relationship_gid_seq OWNER TO postgres;

--
-- TOC entry 3922 (class 0 OID 0)
-- Dependencies: 288
-- Name: social_tenure_relationship_gid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE social_tenure_relationship_gid_seq OWNED BY social_tenure_relationship.gid;


--
-- TOC entry 291 (class 1259 OID 65137)
-- Name: source_document; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE source_document (
    gid integer NOT NULL,
    id character varying(50),
    recordation date NOT NULL,
    scanned_source_document character varying(500),
    location_scanned_source_document character varying(1000),
    quality_type character varying(50),
    social_tenure_inventory_type character varying(50),
    spatial_unit_inventory_type character varying(50),
    comments character varying(2000),
    srs_id integer DEFAULT 0,
    source_doc_admin_unit_id integer,
    usin bigint NOT NULL,
    entity_name character varying(50),
    househld_gid integer,
    person_gid bigint,
    social_tenure_gid integer,
    active boolean DEFAULT true,
    mediatype character varying(10),
    adminid bigint
);


ALTER TABLE public.source_document OWNER TO postgres;

--
-- TOC entry 294 (class 1259 OID 65149)
-- Name: spatial_unit; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE spatial_unit (
    usin bigint NOT NULL,
    spatial_unit_type character varying(50),
    project_name character varying(100),
    type_name character varying(500),
    identity character varying(50),
    house_type character varying(50),
    total_househld_no integer DEFAULT 0,
    other_use_type character varying(50),
    perimeter double precision,
    house_shape character varying(50),
    area double precision NOT NULL,
    measurement_unit character varying(25),
    family_name character varying(100),
    uka_propertyno character varying,
    comments character varying,
    gtype character varying(10) NOT NULL,
    current_workflow_status_id bigint NOT NULL,
    workflow_status_update_time timestamp without time zone NOT NULL,
    userid integer NOT NULL,
    survey_date timestamp without time zone NOT NULL,
    imei_number character varying NOT NULL,
    the_geom geometry(Geometry,4326),
    address1 character varying,
    address2 character varying,
    postal_code character varying(10),
    proposed_use integer,
    neighbor_north character varying(200),
    neighbor_south character varying(200),
    neighbor_east character varying(200),
    neighbor_west character varying(200),
    witness_1 character varying(200),
    witness_2 character varying(200),
    witness_3 character varying(200),
    witness_4 character varying(200),
    quality_of_soil integer,
    slope integer,
    usin_str character varying(20),
    active boolean DEFAULT true,
    hamlet_id bigint,
    villageno character varying(100),
    applicationdate date,
    issuancedate date,
    public_notice_startdate date,
    public_notice_enddate date,
    registrationno character varying(100),
    apfr_date timestamp without time zone,
    parcelno character varying(100),
    village_id integer,
    noa_id integer,
    mt_id integer,
    workflow_id integer,
    parceltype_id integer,
    application_no character varying(100),
    pv_no character varying(100),
    apfr_no character varying(100),
    existing_use character varying(20),
    title_id integer,
    title_number character varying(100),
    title_date date,
    section smallint
);


ALTER TABLE public.spatial_unit OWNER TO postgres;

--
-- TOC entry 3923 (class 0 OID 0)
-- Dependencies: 294
-- Name: COLUMN spatial_unit.the_geom; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN spatial_unit.the_geom IS 'Store the common geometry for a row';


--
-- TOC entry 297 (class 1259 OID 65161)
-- Name: spatial_unit_usin_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE spatial_unit_usin_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spatial_unit_usin_seq OWNER TO postgres;

--
-- TOC entry 3924 (class 0 OID 0)
-- Dependencies: 297
-- Name: spatial_unit_usin_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE spatial_unit_usin_seq OWNED BY spatial_unit.usin;


--
-- TOC entry 299 (class 1259 OID 65169)
-- Name: spatialunit_extension; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE spatialunit_extension (
    id bigint NOT NULL,
    usin bigint,
    parcelno character varying(200),
    section_no character varying(200),
    lotno character varying(200),
    parcel_generation_date timestamp without time zone,
    contradictory_date timestamp without time zone,
    recognition_rights_date timestamp without time zone,
    mayor_sign_date timestamp without time zone,
    letter_generation_date date
);


ALTER TABLE public.spatialunit_extension OWNER TO postgres;

--
-- TOC entry 300 (class 1259 OID 65175)
-- Name: spatialunit_personwithinterest; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE spatialunit_personwithinterest (
    id bigint NOT NULL,
    usin bigint NOT NULL,
    person_name character varying(200) NOT NULL,
    middle_name character varying(50),
    last_name character varying(50),
    idcard_refrence character varying(200),
    address character varying(200),
    gender integer,
    dob date
);


ALTER TABLE public.spatialunit_personwithinterest OWNER TO postgres;

--
-- TOC entry 304 (class 1259 OID 65188)
-- Name: style; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE style (
    name character varying(255) NOT NULL,
    filename character varying(255) NOT NULL,
    id integer NOT NULL,
    tenantid character varying(50)
);


ALTER TABLE public.style OWNER TO postgres;

--
-- TOC entry 305 (class 1259 OID 65194)
-- Name: styles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE styles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.styles_id_seq OWNER TO postgres;

--
-- TOC entry 3925 (class 0 OID 0)
-- Dependencies: 305
-- Name: styles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE styles_id_seq OWNED BY style.id;


--
-- TOC entry 306 (class 1259 OID 65196)
-- Name: sunit_status; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE sunit_status (
    workflow_status_id integer NOT NULL,
    workflow_status character varying NOT NULL,
    workflow_status_fr character varying(50)
);


ALTER TABLE public.sunit_status OWNER TO postgres;

--
-- TOC entry 3926 (class 0 OID 0)
-- Dependencies: 306
-- Name: TABLE sunit_status; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE sunit_status IS '1. New
2. Adjudicated
3. Spatially Validated
4. Approved
5. Rejected
6. CCRO Generated';


--
-- TOC entry 308 (class 1259 OID 65204)
-- Name: sunit_workflow_status_history; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE sunit_workflow_status_history (
    status_hist_id bigint DEFAULT nextval('sunit_workflow_status_history_seq'::regclass) NOT NULL,
    usin bigint NOT NULL,
    workflow_status_id integer NOT NULL,
    userid bigint NOT NULL,
    status_change_time date NOT NULL,
    comments character varying(4000),
    workflow_id integer
);


ALTER TABLE public.sunit_workflow_status_history OWNER TO postgres;

--
-- TOC entry 309 (class 1259 OID 65211)
-- Name: surveyprojectattributes; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE surveyprojectattributes (
    name character varying(100) NOT NULL,
    id integer NOT NULL,
    uid bigint NOT NULL,
    attributecategoryid integer NOT NULL,
    attributeorder integer DEFAULT 0
);


ALTER TABLE public.surveyprojectattributes OWNER TO postgres;

--
-- TOC entry 3927 (class 0 OID 0)
-- Dependencies: 309
-- Name: TABLE surveyprojectattributes; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE surveyprojectattributes IS 'stores the attribute and survey project mapping';


--
-- TOC entry 3928 (class 0 OID 0)
-- Dependencies: 309
-- Name: COLUMN surveyprojectattributes.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN surveyprojectattributes.id IS 'primary key';


--
-- TOC entry 311 (class 1259 OID 65217)
-- Name: task; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE task (
    tasktypeid integer NOT NULL,
    task character varying(50),
    survey_type character varying(50)
);


ALTER TABLE public.task OWNER TO postgres;

--
-- TOC entry 312 (class 1259 OID 65220)
-- Name: task_scheduler; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE task_scheduler (
    taskid integer NOT NULL,
    priority smallint,
    task_prompt integer,
    target_days integer NOT NULL,
    tasktype integer
);


ALTER TABLE public.task_scheduler OWNER TO postgres;

--
-- TOC entry 313 (class 1259 OID 65223)
-- Name: tenure_class; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tenure_class (
    tenureclass_id integer NOT NULL,
    tenure_class character varying NOT NULL,
    active boolean DEFAULT false
);


ALTER TABLE public.tenure_class OWNER TO postgres;

--
-- TOC entry 314 (class 1259 OID 65230)
-- Name: title_existing; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE title_existing (
    id integer NOT NULL,
    tile_name character varying(200),
    title_name_fr character varying(200)
);


ALTER TABLE public.title_existing OWNER TO postgres;

--
-- TOC entry 315 (class 1259 OID 65233)
-- Name: unit; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE unit (
    name character varying(25) NOT NULL,
    description character varying(255),
    id integer NOT NULL,
    tenantid character varying(25)
);


ALTER TABLE public.unit OWNER TO postgres;

--
-- TOC entry 316 (class 1259 OID 65236)
-- Name: unit_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE unit_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.unit_id_seq OWNER TO postgres;

--
-- TOC entry 3929 (class 0 OID 0)
-- Dependencies: 316
-- Name: unit_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE unit_id_seq OWNED BY unit.id;


--
-- TOC entry 317 (class 1259 OID 65238)
-- Name: user_project; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE user_project (
    project character varying(100) NOT NULL,
    id integer NOT NULL,
    tenantid character varying(25),
    userid integer
);


ALTER TABLE public.user_project OWNER TO postgres;

--
-- TOC entry 318 (class 1259 OID 65241)
-- Name: user_project_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE user_project_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_project_id_seq OWNER TO postgres;

--
-- TOC entry 3930 (class 0 OID 0)
-- Dependencies: 318
-- Name: user_project_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE user_project_id_seq OWNED BY user_project.id;


--
-- TOC entry 320 (class 1259 OID 65245)
-- Name: user_role; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE user_role (
    role character varying(25) NOT NULL,
    id integer DEFAULT nextval('user_role_id_seq'::regclass) NOT NULL,
    tenantid character varying(25),
    userid integer
);


ALTER TABLE public.user_role OWNER TO postgres;

--
-- TOC entry 321 (class 1259 OID 65249)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE users (
    username character varying(75) NOT NULL,
    defaultproject character varying(25),
    email character varying(75) NOT NULL,
    passwordexpires date,
    lastactivitydate date,
    tenantid character varying(25),
    active boolean,
    password character varying(70),
    authkey character varying(255),
    id integer NOT NULL,
    phone character varying(12),
    manager_name character varying(25),
    name character varying(100)
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 322 (class 1259 OID 65255)
-- Name: users_gid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE users_gid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_gid_seq OWNER TO postgres;

--
-- TOC entry 3931 (class 0 OID 0)
-- Dependencies: 322
-- Name: users_gid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE users_gid_seq OWNED BY users.id;


--
-- TOC entry 323 (class 1259 OID 65257)
-- Name: vertexlabel; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE vertexlabel (
    gid integer NOT NULL,
    the_geom geometry(Geometry,4326) NOT NULL
);


ALTER TABLE public.vertexlabel OWNER TO postgres;

--
-- TOC entry 324 (class 1259 OID 65263)
-- Name: village; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE village (
    village_id integer NOT NULL,
    village_name character varying(100),
    village_name_fr character varying(100),
    commune_id integer,
    active boolean,
    cfv_agent character varying(100)
);


ALTER TABLE public.village OWNER TO postgres;

--
-- TOC entry 325 (class 1259 OID 65266)
-- Name: workflow; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE workflow (
    workflow_id integer NOT NULL,
    workflow character varying(50),
    "order" integer,
    parceltype_id integer,
    isactive boolean,
    workflow_fr character varying(50)
);


ALTER TABLE public.workflow OWNER TO postgres;

--
-- TOC entry 3454 (class 2604 OID 65272)
-- Name: gid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Cosmetic_Line" ALTER COLUMN gid SET DEFAULT nextval('"Cosmetic_Line_gid_seq"'::regclass);


--
-- TOC entry 3458 (class 2604 OID 65273)
-- Name: gid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Cosmetic_Point" ALTER COLUMN gid SET DEFAULT nextval('"Cosmetic_Point_gid_seq"'::regclass);


--
-- TOC entry 3462 (class 2604 OID 65274)
-- Name: gid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Cosmetic_Poly" ALTER COLUMN gid SET DEFAULT nextval('"Cosmetic_Poly_gid_seq"'::regclass);


--
-- TOC entry 3466 (class 2604 OID 65275)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY action ALTER COLUMN id SET DEFAULT nextval('actions_id_seq'::regclass);


--
-- TOC entry 3469 (class 2604 OID 65276)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY bookmark ALTER COLUMN id SET DEFAULT nextval('bookmark_id_seq'::regclass);


--
-- TOC entry 3483 (class 2604 OID 65277)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY layer_layergroup ALTER COLUMN id SET DEFAULT nextval('layer_layergroup_id_seq'::regclass);


--
-- TOC entry 3484 (class 2604 OID 65278)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY layergroup ALTER COLUMN id SET DEFAULT nextval('layergroup_id_seq'::regclass);


--
-- TOC entry 3485 (class 2604 OID 65279)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY layertype ALTER COLUMN id SET DEFAULT nextval('layertype_id_seq'::regclass);


--
-- TOC entry 3486 (class 2604 OID 65280)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY module ALTER COLUMN id SET DEFAULT nextval('module_id_seq'::regclass);


--
-- TOC entry 3487 (class 2604 OID 65281)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY module_action ALTER COLUMN id SET DEFAULT nextval('module_action_id_seq'::regclass);


--
-- TOC entry 3488 (class 2604 OID 65282)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY module_role ALTER COLUMN id SET DEFAULT nextval('role_module_id_seq'::regclass);


--
-- TOC entry 3496 (class 2604 OID 65284)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY outputformat ALTER COLUMN id SET DEFAULT nextval('outputformat_id_seq'::regclass);


--
-- TOC entry 3497 (class 2604 OID 65285)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY overviewmap ALTER COLUMN id SET DEFAULT nextval('overviewmap_id_seq'::regclass);


--
-- TOC entry 3498 (class 2604 OID 65286)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY printtemplate ALTER COLUMN id SET DEFAULT nextval('printtemplate_id_seq'::regclass);


--
-- TOC entry 3500 (class 2604 OID 65287)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY project ALTER COLUMN id SET DEFAULT nextval('project_id_seq'::regclass);


--
-- TOC entry 3502 (class 2604 OID 65288)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY project_layergroup ALTER COLUMN id SET DEFAULT nextval('project_layergroup_id_seq'::regclass);


--
-- TOC entry 3503 (class 2604 OID 65289)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY projection ALTER COLUMN id SET DEFAULT nextval('projection_id_seq'::regclass);


--
-- TOC entry 3504 (class 2604 OID 65290)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY role ALTER COLUMN id SET DEFAULT nextval('roles_id_seq'::regclass);


--
-- TOC entry 3505 (class 2604 OID 65291)
-- Name: gid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sections_boudry ALTER COLUMN gid SET DEFAULT nextval('sections_boudry_gid_seq'::regclass);


--
-- TOC entry 3513 (class 2604 OID 65292)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY style ALTER COLUMN id SET DEFAULT nextval('styles_id_seq'::regclass);


--
-- TOC entry 3517 (class 2604 OID 65293)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY unit ALTER COLUMN id SET DEFAULT nextval('unit_id_seq'::regclass);


--
-- TOC entry 3518 (class 2604 OID 65294)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY user_project ALTER COLUMN id SET DEFAULT nextval('user_project_id_seq'::regclass);


--
-- TOC entry 3520 (class 2604 OID 65295)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY users ALTER COLUMN id SET DEFAULT nextval('users_gid_seq'::regclass);


--
-- TOC entry 3522 (class 2606 OID 65297)
-- Name: Cosmetic_Line_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Cosmetic_Line"
    ADD CONSTRAINT "Cosmetic_Line_pkey" PRIMARY KEY (gid);


--
-- TOC entry 3525 (class 2606 OID 65299)
-- Name: Cosmetic_Point_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Cosmetic_Point"
    ADD CONSTRAINT "Cosmetic_Point_pkey" PRIMARY KEY (gid);


--
-- TOC entry 3528 (class 2606 OID 65301)
-- Name: Cosmetic_Poly_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Cosmetic_Poly"
    ADD CONSTRAINT "Cosmetic_Poly_pkey" PRIMARY KEY (gid);


--
-- TOC entry 3572 (class 2606 OID 65303)
-- Name: PK_LAYER_ID; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY layer_field
    ADD CONSTRAINT "PK_LAYER_ID" PRIMARY KEY (id);


--
-- TOC entry 3574 (class 2606 OID 65305)
-- Name: PK_LAYER_LAYERGROUP_ID; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY layer_layergroup
    ADD CONSTRAINT "PK_LAYER_LAYERGROUP_ID" PRIMARY KEY (id);


--
-- TOC entry 3582 (class 2606 OID 65307)
-- Name: PK_MAP_TIP; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY maptip
    ADD CONSTRAINT "PK_MAP_TIP" PRIMARY KEY (project, layer);


--
-- TOC entry 3591 (class 2606 OID 65309)
-- Name: PK_MODULE_ACTION_ID; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY module_action
    ADD CONSTRAINT "PK_MODULE_ACTION_ID" PRIMARY KEY (id);


--
-- TOC entry 3610 (class 2606 OID 65313)
-- Name: PK_OVERVIEWMAP; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY overviewmap
    ADD CONSTRAINT "PK_OVERVIEWMAP" PRIMARY KEY (id);


--
-- TOC entry 3630 (class 2606 OID 65315)
-- Name: PK_PROECT_BASELAYER; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY project_baselayer
    ADD CONSTRAINT "PK_PROECT_BASELAYER" PRIMARY KEY (id);


--
-- TOC entry 3634 (class 2606 OID 65317)
-- Name: PK_PROJECT_LAYERGROUP; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY project_layergroup
    ADD CONSTRAINT "PK_PROJECT_LAYERGROUP" PRIMARY KEY (id);


--
-- TOC entry 3593 (class 2606 OID 65319)
-- Name: PK_ROLE_MODULE; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY module_role
    ADD CONSTRAINT "PK_ROLE_MODULE" PRIMARY KEY (id);


--
-- TOC entry 3648 (class 2606 OID 65321)
-- Name: PK_SAVEDQUERY; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY savedquery
    ADD CONSTRAINT "PK_SAVEDQUERY" PRIMARY KEY (name);


--
-- TOC entry 3678 (class 2606 OID 65323)
-- Name: PK_TASK; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY task
    ADD CONSTRAINT "PK_TASK" PRIMARY KEY (tasktypeid);


--
-- TOC entry 3680 (class 2606 OID 65325)
-- Name: PK_TASK_SCHEDULER; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY task_scheduler
    ADD CONSTRAINT "PK_TASK_SCHEDULER" PRIMARY KEY (taskid);


--
-- TOC entry 3689 (class 2606 OID 65327)
-- Name: PK_USER_PROECT; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY user_project
    ADD CONSTRAINT "PK_USER_PROECT" PRIMARY KEY (id);


--
-- TOC entry 3691 (class 2606 OID 65329)
-- Name: PK_USER_ROLE; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY user_role
    ADD CONSTRAINT "PK_USER_ROLE" PRIMARY KEY (id);


--
-- TOC entry 3567 (class 2606 OID 65331)
-- Name: Primary Key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY land_use_type
    ADD CONSTRAINT "Primary Key" PRIMARY KEY (use_type_id);


--
-- TOC entry 3693 (class 2606 OID 65333)
-- Name: UK_USERID; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY users
    ADD CONSTRAINT "UK_USERID" PRIMARY KEY (id);


--
-- TOC entry 3584 (class 2606 OID 65335)
-- Name: UQ_MAP_TIP_NAME; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY maptip
    ADD CONSTRAINT "UQ_MAP_TIP_NAME" UNIQUE (name);


--
-- TOC entry 3547 (class 2606 OID 65337)
-- Name: aaaaabookmark_pk; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY bookmark
    ADD CONSTRAINT aaaaabookmark_pk PRIMARY KEY (name);


--
-- TOC entry 3577 (class 2606 OID 65339)
-- Name: aaaaalayergroup_pk; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY layergroup
    ADD CONSTRAINT aaaaalayergroup_pk PRIMARY KEY (name);


--
-- TOC entry 3608 (class 2606 OID 65341)
-- Name: aaaaaoutputformat_pk; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY outputformat
    ADD CONSTRAINT aaaaaoutputformat_pk PRIMARY KEY (name);


--
-- TOC entry 3626 (class 2606 OID 65343)
-- Name: aaaaaproject_pk; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY project
    ADD CONSTRAINT aaaaaproject_pk PRIMARY KEY (name);


--
-- TOC entry 3639 (class 2606 OID 65345)
-- Name: aaaaaprojection_pk; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY projection
    ADD CONSTRAINT aaaaaprojection_pk PRIMARY KEY (code);


--
-- TOC entry 3589 (class 2606 OID 65347)
-- Name: aaaaatool_pk; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY module
    ADD CONSTRAINT aaaaatool_pk PRIMARY KEY (name);


--
-- TOC entry 3532 (class 2606 OID 65349)
-- Name: actions_actions_pk_actions; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY action
    ADD CONSTRAINT actions_actions_pk_actions PRIMARY KEY (name);


--
-- TOC entry 3534 (class 2606 OID 65351)
-- Name: actiontool_pk; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY action_tools
    ADD CONSTRAINT actiontool_pk PRIMARY KEY (id);


--
-- TOC entry 3540 (class 2606 OID 65355)
-- Name: attribute_master_pk; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY attribute_master
    ADD CONSTRAINT attribute_master_pk PRIMARY KEY (id);


--
-- TOC entry 3542 (class 2606 OID 65357)
-- Name: attribute_option_id_pk; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY attribute_options
    ADD CONSTRAINT attribute_option_id_pk PRIMARY KEY (id);


--
-- TOC entry 3536 (class 2606 OID 65359)
-- Name: attributevalueid_pk; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY attribute
    ADD CONSTRAINT attributevalueid_pk PRIMARY KEY (attributevalueid);


--
-- TOC entry 3544 (class 2606 OID 65361)
-- Name: baselayer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY baselayer
    ADD CONSTRAINT baselayer_pkey PRIMARY KEY (name);


--
-- TOC entry 3538 (class 2606 OID 65363)
-- Name: category_pk; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY attribute_category
    ADD CONSTRAINT category_pk PRIMARY KEY (attributecategoryid);


--
-- TOC entry 3549 (class 2606 OID 65365)
-- Name: citizen_primarykey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY citizenship
    ADD CONSTRAINT citizen_primarykey PRIMARY KEY (id);


--
-- TOC entry 3551 (class 2606 OID 65367)
-- Name: commune_pk; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY commune
    ADD CONSTRAINT commune_pk PRIMARY KEY (commune_id);


--
-- TOC entry 3553 (class 2606 OID 65369)
-- Name: country_pk; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY country
    ADD CONSTRAINT country_pk PRIMARY KEY (country_id);


--
-- TOC entry 3555 (class 2606 OID 65371)
-- Name: datatype_id_pk; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY datatype_id
    ADD CONSTRAINT datatype_id_pk PRIMARY KEY (datatype_id);


--
-- TOC entry 3557 (class 2606 OID 65373)
-- Name: education_level_id_pk; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY education_level
    ADD CONSTRAINT education_level_id_pk PRIMARY KEY (level_id);


--
-- TOC entry 3559 (class 2606 OID 65375)
-- Name: gender_pk; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY gender
    ADD CONSTRAINT gender_pk PRIMARY KEY (gender_id);


--
-- TOC entry 3561 (class 2606 OID 65377)
-- Name: gid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY group_person
    ADD CONSTRAINT gid PRIMARY KEY (gid);


--
-- TOC entry 3563 (class 2606 OID 65379)
-- Name: group_type_group_id_pk; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY group_type
    ADD CONSTRAINT group_type_group_id_pk PRIMARY KEY (group_id);


--
-- TOC entry 3565 (class 2606 OID 65383)
-- Name: land_type_id_pk; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY land_type
    ADD CONSTRAINT land_type_id_pk PRIMARY KEY (landtype_id);


--
-- TOC entry 3586 (class 2606 OID 65385)
-- Name: marital_status_pk; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY marital_status
    ADD CONSTRAINT marital_status_pk PRIMARY KEY (maritalstatus_id);


--
-- TOC entry 3597 (class 2606 OID 65387)
-- Name: natural_person_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY natural_person
    ADD CONSTRAINT natural_person_pkey PRIMARY KEY (gid);


--
-- TOC entry 3603 (class 2606 OID 65389)
-- Name: non_natural_person_pk; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY non_natural_person
    ADD CONSTRAINT non_natural_person_pk PRIMARY KEY (non_natural_person_gid);


--
-- TOC entry 3601 (class 2606 OID 65391)
-- Name: nop_primary; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY nature_of_power
    ADD CONSTRAINT nop_primary PRIMARY KEY (nop_id);


--
-- TOC entry 3605 (class 2606 OID 65393)
-- Name: occupancy_type_pk; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY occupancy_type
    ADD CONSTRAINT occupancy_type_pk PRIMARY KEY (occupancy_type_id);


--
-- TOC entry 3614 (class 2606 OID 65395)
-- Name: parcel_count_pk; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY parcelcount
    ADD CONSTRAINT parcel_count_pk PRIMARY KEY (id);


--
-- TOC entry 3616 (class 2606 OID 65397)
-- Name: paymentinfo_pk; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY payment_info
    ADD CONSTRAINT paymentinfo_pk PRIMARY KEY (usin);


--
-- TOC entry 3618 (class 2606 OID 65399)
-- Name: person_pk; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY person
    ADD CONSTRAINT person_pk PRIMARY KEY (person_gid);


--
-- TOC entry 3620 (class 2606 OID 65401)
-- Name: person_type_pk; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY person_type
    ADD CONSTRAINT person_type_pk PRIMARY KEY (person_type_gid);


--
-- TOC entry 3570 (class 2606 OID 65403)
-- Name: pk_layer; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY layer
    ADD CONSTRAINT pk_layer PRIMARY KEY (alias);


--
-- TOC entry 3580 (class 2606 OID 65406)
-- Name: pk_layertype; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY layertype
    ADD CONSTRAINT pk_layertype PRIMARY KEY (name);


--
-- TOC entry 3646 (class 2606 OID 65408)
-- Name: pk_role; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY role
    ADD CONSTRAINT pk_role PRIMARY KEY (name);


--
-- TOC entry 3657 (class 2606 OID 65410)
-- Name: pk_social_tenure_relationship; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY social_tenure_relationship
    ADD CONSTRAINT pk_social_tenure_relationship PRIMARY KEY (gid);


--
-- TOC entry 3659 (class 2606 OID 65412)
-- Name: pk_source_document; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY source_document
    ADD CONSTRAINT pk_source_document PRIMARY KEY (gid);


--
-- TOC entry 3661 (class 2606 OID 65414)
-- Name: pk_spatial_unit; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY spatial_unit
    ADD CONSTRAINT pk_spatial_unit PRIMARY KEY (usin);


--
-- TOC entry 3670 (class 2606 OID 65416)
-- Name: pk_styles; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY style
    ADD CONSTRAINT pk_styles PRIMARY KEY (name);


--
-- TOC entry 3687 (class 2606 OID 65418)
-- Name: pk_unit; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY unit
    ADD CONSTRAINT pk_unit PRIMARY KEY (name);


--
-- TOC entry 3695 (class 2606 OID 65420)
-- Name: primary_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY vertexlabel
    ADD CONSTRAINT primary_key PRIMARY KEY (gid);


--
-- TOC entry 3612 (class 2606 OID 65422)
-- Name: primary_key_parcel_type; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY parcel_type
    ADD CONSTRAINT primary_key_parcel_type PRIMARY KEY (parceltype_id);


--
-- TOC entry 3595 (class 2606 OID 65426)
-- Name: primary_mt; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY mutation_type
    ADD CONSTRAINT primary_mt PRIMARY KEY (mt_id);


--
-- TOC entry 3599 (class 2606 OID 65428)
-- Name: primary_noa; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY nature_of_application
    ADD CONSTRAINT primary_noa PRIMARY KEY (noa_id);


--
-- TOC entry 3623 (class 2606 OID 65430)
-- Name: printtemplate_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY printtemplate
    ADD CONSTRAINT printtemplate_pkey PRIMARY KEY (name);


--
-- TOC entry 3628 (class 2606 OID 65432)
-- Name: project_area_id_pk; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY project_area
    ADD CONSTRAINT project_area_id_pk PRIMARY KEY (area_id);


--
-- TOC entry 3636 (class 2606 OID 65436)
-- Name: project_region_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY project_region
    ADD CONSTRAINT project_region_pkey PRIMARY KEY (gid);


--
-- TOC entry 3641 (class 2606 OID 65440)
-- Name: province_Pk; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY province
    ADD CONSTRAINT "province_Pk" PRIMARY KEY (province_id);


--
-- TOC entry 3643 (class 2606 OID 65442)
-- Name: region_Pk; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY region
    ADD CONSTRAINT "region_Pk" PRIMARY KEY (region_id);


--
-- TOC entry 3651 (class 2606 OID 65444)
-- Name: sections_boudry_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY sections_boudry
    ADD CONSTRAINT sections_boudry_pkey PRIMARY KEY (gid);


--
-- TOC entry 3655 (class 2606 OID 65446)
-- Name: slope_id_pk; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY slope_values
    ADD CONSTRAINT slope_id_pk PRIMARY KEY (id);


--
-- TOC entry 3653 (class 2606 OID 65448)
-- Name: socialtenure_relationtype_pk; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY share_type
    ADD CONSTRAINT socialtenure_relationtype_pk PRIMARY KEY (gid);


--
-- TOC entry 3663 (class 2606 OID 65454)
-- Name: spatial_unit_identity_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY spatial_unit
    ADD CONSTRAINT spatial_unit_identity_key UNIQUE (identity);


--
-- TOC entry 3665 (class 2606 OID 65456)
-- Name: spatialunit_id; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY spatialunit_extension
    ADD CONSTRAINT spatialunit_id PRIMARY KEY (id);


--
-- TOC entry 3667 (class 2606 OID 65458)
-- Name: spatialunit_personwithinterest_pk; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY spatialunit_personwithinterest
    ADD CONSTRAINT spatialunit_personwithinterest_pk PRIMARY KEY (id);


--
-- TOC entry 3672 (class 2606 OID 65462)
-- Name: sunit_status_pk; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY sunit_status
    ADD CONSTRAINT sunit_status_pk PRIMARY KEY (workflow_status_id);


--
-- TOC entry 3674 (class 2606 OID 65464)
-- Name: sunit_workflow_status_history_pk; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY sunit_workflow_status_history
    ADD CONSTRAINT sunit_workflow_status_history_pk PRIMARY KEY (status_hist_id);


--
-- TOC entry 3676 (class 2606 OID 65466)
-- Name: surveyprojectattributes_pk; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY surveyprojectattributes
    ADD CONSTRAINT surveyprojectattributes_pk PRIMARY KEY (uid);


--
-- TOC entry 3682 (class 2606 OID 65468)
-- Name: tenure_class_pk; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tenure_class
    ADD CONSTRAINT tenure_class_pk PRIMARY KEY (tenureclass_id);


--
-- TOC entry 3684 (class 2606 OID 65470)
-- Name: title_primary_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY title_existing
    ADD CONSTRAINT title_primary_key PRIMARY KEY (id);


--
-- TOC entry 3697 (class 2606 OID 65472)
-- Name: village_Pk; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY village
    ADD CONSTRAINT "village_Pk" PRIMARY KEY (village_id);


--
-- TOC entry 3699 (class 2606 OID 65474)
-- Name: workflow_pk; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY workflow
    ADD CONSTRAINT workflow_pk PRIMARY KEY (workflow_id);


--
-- TOC entry 3523 (class 1259 OID 65475)
-- Name: Cosmetic_Line_the_geom_gist; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX "Cosmetic_Line_the_geom_gist" ON "Cosmetic_Line" USING gist (the_geom);


--
-- TOC entry 3526 (class 1259 OID 65476)
-- Name: Cosmetic_Point_the_geom_gist; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX "Cosmetic_Point_the_geom_gist" ON "Cosmetic_Point" USING gist (the_geom);


--
-- TOC entry 3529 (class 1259 OID 65477)
-- Name: Cosmetic_Poly_the_geom_gist; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX "Cosmetic_Poly_the_geom_gist" ON "Cosmetic_Poly" USING gist (the_geom);


--
-- TOC entry 3530 (class 1259 OID 65478)
-- Name: PK_Actions; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX "PK_Actions" ON action USING btree (name);

ALTER TABLE action CLUSTER ON "PK_Actions";


--
-- TOC entry 3568 (class 1259 OID 65479)
-- Name: PK_Layer; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX "PK_Layer" ON layer USING btree (alias);

ALTER TABLE layer CLUSTER ON "PK_Layer";


--
-- TOC entry 3578 (class 1259 OID 65485)
-- Name: PK_LayerType; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX "PK_LayerType" ON layertype USING btree (name);

ALTER TABLE layertype CLUSTER ON "PK_LayerType";


--
-- TOC entry 3644 (class 1259 OID 65486)
-- Name: PK_Role; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX "PK_Role" ON role USING btree (name);


--
-- TOC entry 3668 (class 1259 OID 65487)
-- Name: PK_Styles; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX "PK_Styles" ON style USING btree (name);

ALTER TABLE style CLUSTER ON "PK_Styles";


--
-- TOC entry 3685 (class 1259 OID 65488)
-- Name: PK_Unit; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX "PK_Unit" ON unit USING btree (name);


--
-- TOC entry 3545 (class 1259 OID 65489)
-- Name: aaaaaBOOKMARK_PK; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX "aaaaaBOOKMARK_PK" ON bookmark USING btree (name);


--
-- TOC entry 3575 (class 1259 OID 65490)
-- Name: aaaaaLAYERGROUP_PK; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX "aaaaaLAYERGROUP_PK" ON layergroup USING btree (name);

ALTER TABLE layergroup CLUSTER ON "aaaaaLAYERGROUP_PK";


--
-- TOC entry 3606 (class 1259 OID 65491)
-- Name: aaaaaOutputFormat_PK; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX "aaaaaOutputFormat_PK" ON outputformat USING btree (name);


--
-- TOC entry 3621 (class 1259 OID 65492)
-- Name: aaaaaPRINTTEMPLATE_PK; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX "aaaaaPRINTTEMPLATE_PK" ON printtemplate USING btree (name);

ALTER TABLE printtemplate CLUSTER ON "aaaaaPRINTTEMPLATE_PK";


--
-- TOC entry 3637 (class 1259 OID 65493)
-- Name: aaaaaPROJECTION_PK; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX "aaaaaPROJECTION_PK" ON projection USING btree (code);


--
-- TOC entry 3624 (class 1259 OID 65494)
-- Name: aaaaaPROJECT_PK; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX "aaaaaPROJECT_PK" ON project USING btree (name);


--
-- TOC entry 3587 (class 1259 OID 65495)
-- Name: aaaaaTOOL_PK; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX "aaaaaTOOL_PK" ON module USING btree (name);


--
-- TOC entry 3631 (class 1259 OID 65496)
-- Name: fki_projectbaselayer_baselayer; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX fki_projectbaselayer_baselayer ON project_baselayer USING btree (baselayer);


--
-- TOC entry 3632 (class 1259 OID 65497)
-- Name: fki_projectbaselayer_project; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX fki_projectbaselayer_project ON project_baselayer USING btree (project);


--
-- TOC entry 3649 (class 1259 OID 65499)
-- Name: sections_boudry_geom_gist; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX sections_boudry_geom_gist ON sections_boudry USING gist (geom);


--
-- TOC entry 3771 (class 2620 OID 65500)
-- Name: upd_section; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER upd_section AFTER INSERT OR UPDATE OF section ON spatial_unit FOR EACH ROW EXECUTE PROCEDURE upd_section();


--
-- TOC entry 3772 (class 2620 OID 65501)
-- Name: upd_usinstr; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER upd_usinstr AFTER INSERT OR UPDATE OF usin_str ON spatial_unit FOR EACH ROW EXECUTE PROCEDURE upd_usinstr();


--
-- TOC entry 3712 (class 2606 OID 65502)
-- Name: FK_LAYER_MAPTIP; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY maptip
    ADD CONSTRAINT "FK_LAYER_MAPTIP" FOREIGN KEY (layer) REFERENCES layer(alias);


--
-- TOC entry 3713 (class 2606 OID 65507)
-- Name: FK_Project; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY maptip
    ADD CONSTRAINT "FK_Project" FOREIGN KEY (project) REFERENCES project(name);


--
-- TOC entry 3763 (class 2606 OID 65512)
-- Name: FK_TASK_TYPE; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY task_scheduler
    ADD CONSTRAINT "FK_TASK_TYPE" FOREIGN KEY (tasktype) REFERENCES task(tasktypeid);


--
-- TOC entry 3764 (class 2606 OID 65517)
-- Name: FK_USERPROJECT_USERS; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY user_project
    ADD CONSTRAINT "FK_USERPROJECT_USERS" FOREIGN KEY (userid) REFERENCES users(id);


--
-- TOC entry 3767 (class 2606 OID 65522)
-- Name: FK_USERROLE_USERS; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY user_role
    ADD CONSTRAINT "FK_USERROLE_USERS" FOREIGN KEY (userid) REFERENCES users(id);


--
-- TOC entry 3700 (class 2606 OID 65532)
-- Name: attribute_category_attribute_master_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY attribute_master
    ADD CONSTRAINT attribute_category_attribute_master_fk FOREIGN KEY (attributecategoryid) REFERENCES attribute_category(attributecategoryid);


--
-- TOC entry 3761 (class 2606 OID 65537)
-- Name: attribute_master_surveyprojectattributes_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY surveyprojectattributes
    ADD CONSTRAINT attribute_master_surveyprojectattributes_fk FOREIGN KEY (id) REFERENCES attribute_master(id);


--
-- TOC entry 3702 (class 2606 OID 65542)
-- Name: attribute_option_attributeid_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY attribute_options
    ADD CONSTRAINT attribute_option_attributeid_fk FOREIGN KEY (attribute_id) REFERENCES attribute_master(id);


--
-- TOC entry 3740 (class 2606 OID 65547)
-- Name: country_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY region
    ADD CONSTRAINT country_fk FOREIGN KEY (country_id) REFERENCES country(country_id);


--
-- TOC entry 3701 (class 2606 OID 65552)
-- Name: datatype_id_attribute_master_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY attribute_master
    ADD CONSTRAINT datatype_id_attribute_master_fk FOREIGN KEY (datatype_id) REFERENCES datatype_id(datatype_id);


--
-- TOC entry 3720 (class 2606 OID 65557)
-- Name: education_level; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY natural_person
    ADD CONSTRAINT education_level FOREIGN KEY (education) REFERENCES education_level(level_id);


--
-- TOC entry 3751 (class 2606 OID 65562)
-- Name: fk_application_nature_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY spatial_unit
    ADD CONSTRAINT fk_application_nature_id FOREIGN KEY (noa_id) REFERENCES nature_of_application(noa_id);


--
-- TOC entry 3703 (class 2606 OID 65567)
-- Name: fk_bookmark_project; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY bookmark
    ADD CONSTRAINT fk_bookmark_project FOREIGN KEY (project) REFERENCES project(name);


--
-- TOC entry 3769 (class 2606 OID 65572)
-- Name: fk_commune_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY village
    ADD CONSTRAINT fk_commune_id FOREIGN KEY (commune_id) REFERENCES commune(commune_id);


--
-- TOC entry 3710 (class 2606 OID 65577)
-- Name: fk_layer_fields_layer; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY layer_field
    ADD CONSTRAINT fk_layer_fields_layer FOREIGN KEY (layer) REFERENCES layer(alias);


--
-- TOC entry 3711 (class 2606 OID 65582)
-- Name: fk_layer_layergroup_layergroup; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY layer_layergroup
    ADD CONSTRAINT fk_layer_layergroup_layergroup FOREIGN KEY (layergroup) REFERENCES layergroup(name);


--
-- TOC entry 3706 (class 2606 OID 65587)
-- Name: fk_layer_layertype; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY layer
    ADD CONSTRAINT fk_layer_layertype FOREIGN KEY (type) REFERENCES layertype(name);


--
-- TOC entry 3707 (class 2606 OID 65592)
-- Name: fk_layer_outputformat; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY layer
    ADD CONSTRAINT fk_layer_outputformat FOREIGN KEY (format) REFERENCES outputformat(name);


--
-- TOC entry 3708 (class 2606 OID 65597)
-- Name: fk_layer_projection; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY layer
    ADD CONSTRAINT fk_layer_projection FOREIGN KEY (projection) REFERENCES projection(code);


--
-- TOC entry 3709 (class 2606 OID 65602)
-- Name: fk_layer_unit; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY layer
    ADD CONSTRAINT fk_layer_unit FOREIGN KEY (unit) REFERENCES unit(name);


--
-- TOC entry 3715 (class 2606 OID 65607)
-- Name: fk_moduleaction_actions; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY module_action
    ADD CONSTRAINT fk_moduleaction_actions FOREIGN KEY (action) REFERENCES action(name);


--
-- TOC entry 3716 (class 2606 OID 65612)
-- Name: fk_moduleaction_modules; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY module_action
    ADD CONSTRAINT fk_moduleaction_modules FOREIGN KEY (module) REFERENCES module(name);


--
-- TOC entry 3752 (class 2606 OID 65617)
-- Name: fk_mutation_type_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY spatial_unit
    ADD CONSTRAINT fk_mutation_type_id FOREIGN KEY (mt_id) REFERENCES mutation_type(mt_id);


--
-- TOC entry 3721 (class 2606 OID 65622)
-- Name: fk_noa_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY natural_person
    ADD CONSTRAINT fk_noa_id FOREIGN KEY (nop_id) REFERENCES nature_of_power(nop_id);


--
-- TOC entry 3726 (class 2606 OID 65627)
-- Name: fk_overviewmap_layergroup; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY overviewmap
    ADD CONSTRAINT fk_overviewmap_layergroup FOREIGN KEY (layer) REFERENCES layergroup(name);


--
-- TOC entry 3727 (class 2606 OID 65632)
-- Name: fk_overviewmap_project; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY overviewmap
    ADD CONSTRAINT fk_overviewmap_project FOREIGN KEY (project) REFERENCES project(name);


--
-- TOC entry 3714 (class 2606 OID 65637)
-- Name: fk_project; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY maptip
    ADD CONSTRAINT fk_project FOREIGN KEY (project) REFERENCES project(name);


--
-- TOC entry 3730 (class 2606 OID 65642)
-- Name: fk_project_outputformat; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY project
    ADD CONSTRAINT fk_project_outputformat FOREIGN KEY (outputformat) REFERENCES outputformat(name);


--
-- TOC entry 3731 (class 2606 OID 65647)
-- Name: fk_project_projection; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY project
    ADD CONSTRAINT fk_project_projection FOREIGN KEY (projection) REFERENCES projection(code);


--
-- TOC entry 3732 (class 2606 OID 65652)
-- Name: fk_project_projection1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY project
    ADD CONSTRAINT fk_project_projection1 FOREIGN KEY (displayprojection) REFERENCES projection(code);


--
-- TOC entry 3733 (class 2606 OID 65657)
-- Name: fk_project_unit; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY project
    ADD CONSTRAINT fk_project_unit FOREIGN KEY (unit) REFERENCES unit(name);


--
-- TOC entry 3735 (class 2606 OID 65662)
-- Name: fk_projectbaselayer_baselayer; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY project_baselayer
    ADD CONSTRAINT fk_projectbaselayer_baselayer FOREIGN KEY (baselayer) REFERENCES baselayer(name);


--
-- TOC entry 3736 (class 2606 OID 65667)
-- Name: fk_projectbaselayer_project; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY project_baselayer
    ADD CONSTRAINT fk_projectbaselayer_project FOREIGN KEY (project) REFERENCES project(name);


--
-- TOC entry 3737 (class 2606 OID 65672)
-- Name: fk_projectlayer_group_layergroup; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY project_layergroup
    ADD CONSTRAINT fk_projectlayer_group_layergroup FOREIGN KEY (layergroup) REFERENCES layergroup(name);


--
-- TOC entry 3738 (class 2606 OID 65677)
-- Name: fk_projectlayergroup_project; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY project_layergroup
    ADD CONSTRAINT fk_projectlayergroup_project FOREIGN KEY (project) REFERENCES project(name);


--
-- TOC entry 3704 (class 2606 OID 65682)
-- Name: fk_province_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY commune
    ADD CONSTRAINT fk_province_id FOREIGN KEY (province_id) REFERENCES province(province_id);


--
-- TOC entry 3739 (class 2606 OID 65687)
-- Name: fk_region_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY province
    ADD CONSTRAINT fk_region_id FOREIGN KEY (region_id) REFERENCES region(region_id);


--
-- TOC entry 3717 (class 2606 OID 65692)
-- Name: fk_role_module_actions; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY module_role
    ADD CONSTRAINT fk_role_module_actions FOREIGN KEY (action) REFERENCES action(name);


--
-- TOC entry 3718 (class 2606 OID 65697)
-- Name: fk_roletool_roles; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY module_role
    ADD CONSTRAINT fk_roletool_roles FOREIGN KEY (role) REFERENCES role(name);


--
-- TOC entry 3719 (class 2606 OID 65702)
-- Name: fk_roletool_tool; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY module_role
    ADD CONSTRAINT fk_roletool_tool FOREIGN KEY (module) REFERENCES module(name);


--
-- TOC entry 3741 (class 2606 OID 65707)
-- Name: fk_savedquery_layer; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY savedquery
    ADD CONSTRAINT fk_savedquery_layer FOREIGN KEY (layer) REFERENCES layer(alias);


--
-- TOC entry 3742 (class 2606 OID 65712)
-- Name: fk_savedquery_project; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY savedquery
    ADD CONSTRAINT fk_savedquery_project FOREIGN KEY (project) REFERENCES project(name);


--
-- TOC entry 3743 (class 2606 OID 65722)
-- Name: fk_str_spatial_unit; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY social_tenure_relationship
    ADD CONSTRAINT fk_str_spatial_unit FOREIGN KEY (usin) REFERENCES spatial_unit(usin);


--
-- TOC entry 3765 (class 2606 OID 65727)
-- Name: fk_userproject_project; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY user_project
    ADD CONSTRAINT fk_userproject_project FOREIGN KEY (project) REFERENCES project(name);


--
-- TOC entry 3766 (class 2606 OID 65732)
-- Name: fk_userproject_users; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY user_project
    ADD CONSTRAINT fk_userproject_users FOREIGN KEY (userid) REFERENCES users(id);


--
-- TOC entry 3768 (class 2606 OID 65737)
-- Name: fk_userrole_roles; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY user_role
    ADD CONSTRAINT fk_userrole_roles FOREIGN KEY (role) REFERENCES role(name);


--
-- TOC entry 3753 (class 2606 OID 65742)
-- Name: fk_village_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY spatial_unit
    ADD CONSTRAINT fk_village_id FOREIGN KEY (village_id) REFERENCES village(village_id);


--
-- TOC entry 3722 (class 2606 OID 65747)
-- Name: gender_natural_person_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY natural_person
    ADD CONSTRAINT gender_natural_person_fk FOREIGN KEY (gender) REFERENCES gender(gender_id);


--
-- TOC entry 3723 (class 2606 OID 65752)
-- Name: marital_status_natural_person_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY natural_person
    ADD CONSTRAINT marital_status_natural_person_fk FOREIGN KEY (marital_status) REFERENCES marital_status(maritalstatus_id);


--
-- TOC entry 3724 (class 2606 OID 65757)
-- Name: natural_person_non_natural_person_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY non_natural_person
    ADD CONSTRAINT natural_person_non_natural_person_fk FOREIGN KEY (poc_gid) REFERENCES natural_person(gid);


--
-- TOC entry 3744 (class 2606 OID 65762)
-- Name: occupancy_type_social_tenure_relationship_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY social_tenure_relationship
    ADD CONSTRAINT occupancy_type_social_tenure_relationship_fk FOREIGN KEY (occupancy_type_id) REFERENCES occupancy_type(occupancy_type_id);


--
-- TOC entry 3728 (class 2606 OID 65767)
-- Name: paymentinfo_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY payment_info
    ADD CONSTRAINT paymentinfo_fk FOREIGN KEY (usin) REFERENCES spatial_unit(usin);


--
-- TOC entry 3705 (class 2606 OID 65772)
-- Name: person_group_person_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY group_person
    ADD CONSTRAINT person_group_person_fk FOREIGN KEY (rep_person_gid) REFERENCES person(person_gid);


--
-- TOC entry 3725 (class 2606 OID 65777)
-- Name: person_non_natural_person_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY non_natural_person
    ADD CONSTRAINT person_non_natural_person_fk FOREIGN KEY (non_natural_person_gid) REFERENCES person(person_gid);


--
-- TOC entry 3745 (class 2606 OID 65782)
-- Name: person_social_tenure_relationship_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY social_tenure_relationship
    ADD CONSTRAINT person_social_tenure_relationship_fk FOREIGN KEY (person_gid) REFERENCES person(person_gid);


--
-- TOC entry 3748 (class 2606 OID 65787)
-- Name: person_source_document_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY source_document
    ADD CONSTRAINT person_source_document_fk FOREIGN KEY (person_gid) REFERENCES person(person_gid);


--
-- TOC entry 3729 (class 2606 OID 65792)
-- Name: person_type_person_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY person
    ADD CONSTRAINT person_type_person_fk FOREIGN KEY (person_type_gid) REFERENCES person_type(person_type_gid);


--
-- TOC entry 3734 (class 2606 OID 65802)
-- Name: project_project_area_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY project_area
    ADD CONSTRAINT project_project_area_fk FOREIGN KEY (name) REFERENCES project(name);


--
-- TOC entry 3754 (class 2606 OID 65812)
-- Name: project_spatial_unit_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY spatial_unit
    ADD CONSTRAINT project_spatial_unit_fk FOREIGN KEY (project_name) REFERENCES project(name);


--
-- TOC entry 3762 (class 2606 OID 65817)
-- Name: project_surveyprojectattributes_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY surveyprojectattributes
    ADD CONSTRAINT project_surveyprojectattributes_fk FOREIGN KEY (name) REFERENCES project(name);


--
-- TOC entry 3755 (class 2606 OID 65822)
-- Name: proposed_use; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY spatial_unit
    ADD CONSTRAINT proposed_use FOREIGN KEY (proposed_use) REFERENCES land_use_type(use_type_id);


--
-- TOC entry 3749 (class 2606 OID 65827)
-- Name: social_tenure_relationship_source_document_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY source_document
    ADD CONSTRAINT social_tenure_relationship_source_document_fk FOREIGN KEY (social_tenure_gid) REFERENCES social_tenure_relationship(gid);


--
-- TOC entry 3746 (class 2606 OID 65832)
-- Name: socialtenure_relationtype_social_tenure_relationship_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY social_tenure_relationship
    ADD CONSTRAINT socialtenure_relationtype_social_tenure_relationship_fk FOREIGN KEY (social_tenure_relationship_type) REFERENCES share_type(gid);


--
-- TOC entry 3750 (class 2606 OID 65837)
-- Name: source_document_struct_gid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY source_document
    ADD CONSTRAINT source_document_struct_gid_fkey FOREIGN KEY (usin) REFERENCES spatial_unit(usin);


--
-- TOC entry 3759 (class 2606 OID 65847)
-- Name: spatial_unit_sunit_workflow_status_history_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sunit_workflow_status_history
    ADD CONSTRAINT spatial_unit_sunit_workflow_status_history_fk FOREIGN KEY (usin) REFERENCES spatial_unit(usin);


--
-- TOC entry 3757 (class 2606 OID 65852)
-- Name: spatialunit_usin; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY spatialunit_extension
    ADD CONSTRAINT spatialunit_usin FOREIGN KEY (usin) REFERENCES spatial_unit(usin);


--
-- TOC entry 3758 (class 2606 OID 65857)
-- Name: spatiaunit_pwi_sptialunit_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY spatialunit_personwithinterest
    ADD CONSTRAINT spatiaunit_pwi_sptialunit_fk FOREIGN KEY (usin) REFERENCES spatial_unit(usin) ON DELETE RESTRICT;


--
-- TOC entry 3760 (class 2606 OID 65862)
-- Name: sunit_status_sunit_workflow_status_history_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sunit_workflow_status_history
    ADD CONSTRAINT sunit_status_sunit_workflow_status_history_fk FOREIGN KEY (workflow_status_id) REFERENCES sunit_status(workflow_status_id);


--
-- TOC entry 3747 (class 2606 OID 65867)
-- Name: tenure_class_social_tenure_relationship_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY social_tenure_relationship
    ADD CONSTRAINT tenure_class_social_tenure_relationship_fk FOREIGN KEY (tenureclass_id) REFERENCES tenure_class(tenureclass_id);


--
-- TOC entry 3756 (class 2606 OID 65872)
-- Name: unit_spatial_unit_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY spatial_unit
    ADD CONSTRAINT unit_spatial_unit_fk FOREIGN KEY (measurement_unit) REFERENCES unit(name);


--
-- TOC entry 3770 (class 2606 OID 65887)
-- Name: workflow_parceltype_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY workflow
    ADD CONSTRAINT workflow_parceltype_id_fkey FOREIGN KEY (parceltype_id) REFERENCES parcel_type(parceltype_id);


-- Completed on 2016-11-29 11:36:12

--
-- PostgreSQL database dump complete
--

