--
-- PostgreSQL database dump
--

-- Dumped from database version 12.3
-- Dumped by pg_dump version 12.2

-- Started on 2020-08-21 14:40:48

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 202 (class 1259 OID 34807)
-- Name: administrative_update_mtlb; Type: TABLE; Schema: public; Owner: idcore
--

CREATE TABLE public.administrative_update_mtlb (
    administrative_update_mtlb_id bigint NOT NULL,
    address character varying,
    jobtitle character varying,
    national_id character varying,
    status integer
);


ALTER TABLE public.administrative_update_mtlb OWNER TO idcore;

--
-- TOC entry 203 (class 1259 OID 34813)
-- Name: administrative_update_administrative_update_id_seq; Type: SEQUENCE; Schema: public; Owner: idcore
--

CREATE SEQUENCE public.administrative_update_administrative_update_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.administrative_update_administrative_update_id_seq OWNER TO idcore;

--
-- TOC entry 3032 (class 0 OID 0)
-- Dependencies: 203
-- Name: administrative_update_administrative_update_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: idcore
--

ALTER SEQUENCE public.administrative_update_administrative_update_id_seq OWNED BY public.administrative_update_mtlb.administrative_update_mtlb_id;


--
-- TOC entry 204 (class 1259 OID 34851)
-- Name: mtlb_type_metadata; Type: TABLE; Schema: public; Owner: idcore
--

CREATE TABLE public.mtlb_type_metadata (
    mtlb_type_id integer NOT NULL,
    mtlb_type_name character varying
);


ALTER TABLE public.mtlb_type_metadata OWNER TO idcore;

--
-- TOC entry 205 (class 1259 OID 34857)
-- Name: application_type_metadata_application_type_id_seq; Type: SEQUENCE; Schema: public; Owner: idcore
--

CREATE SEQUENCE public.application_type_metadata_application_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.application_type_metadata_application_type_id_seq OWNER TO idcore;

--
-- TOC entry 3033 (class 0 OID 0)
-- Dependencies: 205
-- Name: application_type_metadata_application_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: idcore
--

ALTER SEQUENCE public.application_type_metadata_application_type_id_seq OWNED BY public.mtlb_type_metadata.mtlb_type_id;


--
-- TOC entry 206 (class 1259 OID 34859)
-- Name: audit_log; Type: TABLE; Schema: public; Owner: idcore
--

CREATE TABLE public.audit_log (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    action_type character varying(250),
    action_time time without time zone,
    table_name character varying(250),
    row_pk bigint
);


ALTER TABLE public.audit_log OWNER TO idcore;

--
-- TOC entry 207 (class 1259 OID 34865)
-- Name: audit_log_id_seq; Type: SEQUENCE; Schema: public; Owner: idcore
--

CREATE SEQUENCE public.audit_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.audit_log_id_seq OWNER TO idcore;

--
-- TOC entry 3034 (class 0 OID 0)
-- Dependencies: 207
-- Name: audit_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: idcore
--

ALTER SEQUENCE public.audit_log_id_seq OWNED BY public.audit_log.id;


--
-- TOC entry 208 (class 1259 OID 34867)
-- Name: marital_status_metadata; Type: TABLE; Schema: public; Owner: idcore
--

CREATE TABLE public.marital_status_metadata (
    marital_status_id bigint NOT NULL,
    civil_information_name character varying
);


ALTER TABLE public.marital_status_metadata OWNER TO idcore;

--
-- TOC entry 209 (class 1259 OID 34873)
-- Name: civil_information_metadata_civil_information_id_seq; Type: SEQUENCE; Schema: public; Owner: idcore
--

CREATE SEQUENCE public.civil_information_metadata_civil_information_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.civil_information_metadata_civil_information_id_seq OWNER TO idcore;

--
-- TOC entry 3035 (class 0 OID 0)
-- Dependencies: 209
-- Name: civil_information_metadata_civil_information_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: idcore
--

ALTER SEQUENCE public.civil_information_metadata_civil_information_id_seq OWNED BY public.marital_status_metadata.marital_status_id;


--
-- TOC entry 210 (class 1259 OID 34915)
-- Name: civil_status_mtlb; Type: TABLE; Schema: public; Owner: idcore
--

CREATE TABLE public.civil_status_mtlb (
    civil_status_mtlb_id bigint NOT NULL,
    firstname character varying,
    middlename character varying,
    lastname character varying,
    gender integer,
    birthdate date,
    birth_day_known boolean,
    birth_month_known boolean,
    birthcountry bigint,
    father_id bigint,
    modher_id bigint,
    street_address character varying,
    phone_number character varying,
    email character varying,
    national_id character varying,
    occupation_id bigint,
    notes character varying,
    draft boolean,
    application_type integer,
    birth_year_estimated boolean,
    marital_status_id bigint,
    status integer,
    left_thumb bytea,
    left_index_finger bytea,
    left_middle_finger bytea,
    left_ring_finger bytea,
    left_pinky bytea,
    right_thumb bytea,
    right_index_finger bytea,
    right_middle_finger bytea,
    right_ring_finger bytea,
    right_pinky bytea,
    signature bytea,
    face bytea,
    city_address character varying,
    zip_code character varying,
    residence_country_id bigint,
    primary_citizenship bigint,
    other_citizenship_csv character varying
);


ALTER TABLE public.civil_status_mtlb OWNER TO idcore;

--
-- TOC entry 211 (class 1259 OID 34921)
-- Name: civil_status_id_seq; Type: SEQUENCE; Schema: public; Owner: idcore
--

CREATE SEQUENCE public.civil_status_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.civil_status_id_seq OWNER TO idcore;

--
-- TOC entry 3036 (class 0 OID 0)
-- Dependencies: 211
-- Name: civil_status_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: idcore
--

ALTER SEQUENCE public.civil_status_id_seq OWNED BY public.civil_status_mtlb.civil_status_mtlb_id;


--
-- TOC entry 212 (class 1259 OID 34949)
-- Name: country_metadata; Type: TABLE; Schema: public; Owner: idcore
--

CREATE TABLE public.country_metadata (
    country_id bigint NOT NULL,
    country_name character varying,
    country_flag bytea
);


ALTER TABLE public.country_metadata OWNER TO idcore;

--
-- TOC entry 213 (class 1259 OID 34955)
-- Name: country_metadata_country_id_seq; Type: SEQUENCE; Schema: public; Owner: idcore
--

CREATE SEQUENCE public.country_metadata_country_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.country_metadata_country_id_seq OWNER TO idcore;

--
-- TOC entry 3037 (class 0 OID 0)
-- Dependencies: 213
-- Name: country_metadata_country_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: idcore
--

ALTER SEQUENCE public.country_metadata_country_id_seq OWNED BY public.country_metadata.country_id;


--
-- TOC entry 214 (class 1259 OID 34993)
-- Name: i18n; Type: TABLE; Schema: public; Owner: idcore
--

CREATE TABLE public.i18n (
    id bigint NOT NULL,
    message_id character varying NOT NULL,
    locale_id character varying NOT NULL,
    domain_id character varying NOT NULL,
    value character varying NOT NULL
);


ALTER TABLE public.i18n OWNER TO idcore;

--
-- TOC entry 215 (class 1259 OID 35007)
-- Name: i18n_id_seq; Type: SEQUENCE; Schema: public; Owner: idcore
--

CREATE SEQUENCE public.i18n_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.i18n_id_seq OWNER TO idcore;

--
-- TOC entry 3038 (class 0 OID 0)
-- Dependencies: 215
-- Name: i18n_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: idcore
--

ALTER SEQUENCE public.i18n_id_seq OWNED BY public.i18n.id;


--
-- TOC entry 216 (class 1259 OID 35039)
-- Name: id_mtlb; Type: TABLE; Schema: public; Owner: idcore
--

CREATE TABLE public.id_mtlb (
    id_mtlb_id bigint NOT NULL,
    renewal boolean,
    loss boolean,
    damaged boolean,
    stolen boolean,
    national_id character varying,
    notes character varying,
    draft boolean,
    first boolean,
    status integer,
    left_thumb bytea,
    left_index_finger bytea,
    left_middle_finger bytea,
    left_ring_finger bytea,
    left_pinky bytea,
    right_thumb bytea,
    right_index_finger bytea,
    right_middle_finger bytea,
    right_ring_finger bytea,
    right_pinky bytea,
    firstname character varying,
    middlename character varying,
    lastname character varying,
    face bytea,
    signature bytea,
    mtlb_location character varying,
    requested_id_type bigint
);


ALTER TABLE public.id_mtlb OWNER TO idcore;

--
-- TOC entry 217 (class 1259 OID 35045)
-- Name: id_application_id_application_id_seq; Type: SEQUENCE; Schema: public; Owner: idcore
--

CREATE SEQUENCE public.id_application_id_application_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.id_application_id_application_id_seq OWNER TO idcore;

--
-- TOC entry 3039 (class 0 OID 0)
-- Dependencies: 217
-- Name: id_application_id_application_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: idcore
--

ALTER SEQUENCE public.id_application_id_application_id_seq OWNED BY public.id_mtlb.id_mtlb_id;


--
-- TOC entry 229 (class 1259 OID 35248)
-- Name: mtlb_status_metadata; Type: TABLE; Schema: public; Owner: idcore
--

CREATE TABLE public.mtlb_status_metadata (
    mtlb_status_id integer NOT NULL,
    mtlb_status_name character varying
);


ALTER TABLE public.mtlb_status_metadata OWNER TO idcore;

--
-- TOC entry 218 (class 1259 OID 35087)
-- Name: occupation_metadata; Type: TABLE; Schema: public; Owner: idcore
--

CREATE TABLE public.occupation_metadata (
    occupation_id bigint NOT NULL,
    occupation_name character varying
);


ALTER TABLE public.occupation_metadata OWNER TO idcore;

--
-- TOC entry 219 (class 1259 OID 35101)
-- Name: occupation_metadata_occupation_id_seq; Type: SEQUENCE; Schema: public; Owner: idcore
--

CREATE SEQUENCE public.occupation_metadata_occupation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.occupation_metadata_occupation_id_seq OWNER TO idcore;

--
-- TOC entry 3040 (class 0 OID 0)
-- Dependencies: 219
-- Name: occupation_metadata_occupation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: idcore
--

ALTER SEQUENCE public.occupation_metadata_occupation_id_seq OWNED BY public.occupation_metadata.occupation_id;


--
-- TOC entry 220 (class 1259 OID 35109)
-- Name: permission; Type: TABLE; Schema: public; Owner: idcore
--

CREATE TABLE public.permission (
    id integer NOT NULL,
    permission_name character varying NOT NULL,
    description character varying
);


ALTER TABLE public.permission OWNER TO idcore;

--
-- TOC entry 221 (class 1259 OID 35123)
-- Name: permission_id_seq; Type: SEQUENCE; Schema: public; Owner: idcore
--

CREATE SEQUENCE public.permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.permission_id_seq OWNER TO idcore;

--
-- TOC entry 3041 (class 0 OID 0)
-- Dependencies: 221
-- Name: permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: idcore
--

ALTER SEQUENCE public.permission_id_seq OWNED BY public.permission.id;


--
-- TOC entry 222 (class 1259 OID 35171)
-- Name: vital_records; Type: TABLE; Schema: public; Owner: idcore
--

CREATE TABLE public.vital_records (
    vital_records_id bigint NOT NULL,
    firstname character varying,
    middlename character varying,
    lastname character varying,
    gender integer,
    birthdate date,
    birth_day_known boolean,
    birth_month_known boolean,
    birth_year_estimated boolean,
    birthcountry bigint,
    father_id bigint,
    mother_id bigint,
    address character varying,
    phone_number character varying,
    email character varying,
    national_id character varying,
    occupation_id bigint,
    notes character varying,
    draft boolean,
    marital_status_id bigint,
    jobtitle character varying,
    citizenship_id bigint
);


ALTER TABLE public.vital_records OWNER TO idcore;

--
-- TOC entry 223 (class 1259 OID 35177)
-- Name: person_person_id_seq; Type: SEQUENCE; Schema: public; Owner: idcore
--

CREATE SEQUENCE public.person_person_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.person_person_id_seq OWNER TO idcore;

--
-- TOC entry 3042 (class 0 OID 0)
-- Dependencies: 223
-- Name: person_person_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: idcore
--

ALTER SEQUENCE public.person_person_id_seq OWNED BY public.vital_records.vital_records_id;


--
-- TOC entry 224 (class 1259 OID 35203)
-- Name: removal_mtlb; Type: TABLE; Schema: public; Owner: idcore
--

CREATE TABLE public.removal_mtlb (
    removal_mtlb_id bigint NOT NULL,
    national_id character varying,
    removal_type integer,
    notes character varying,
    status integer,
    requestor_national_id character varying,
    requestor_face bytea,
    requestor_fingerprint bytea,
    requestor_finger_which integer,
    requestor_phone character varying,
    requestor_email character varying
);


ALTER TABLE public.removal_mtlb OWNER TO idcore;

--
-- TOC entry 225 (class 1259 OID 35221)
-- Name: removal_removal_id_seq; Type: SEQUENCE; Schema: public; Owner: idcore
--

CREATE SEQUENCE public.removal_removal_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.removal_removal_id_seq OWNER TO idcore;

--
-- TOC entry 3043 (class 0 OID 0)
-- Dependencies: 225
-- Name: removal_removal_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: idcore
--

ALTER SEQUENCE public.removal_removal_id_seq OWNED BY public.removal_mtlb.removal_mtlb_id;


--
-- TOC entry 226 (class 1259 OID 35223)
-- Name: role; Type: TABLE; Schema: public; Owner: idcore
--

CREATE TABLE public.role (
    id integer NOT NULL,
    role_name character varying(50) NOT NULL,
    description character varying
);


ALTER TABLE public.role OWNER TO idcore;

--
-- TOC entry 227 (class 1259 OID 35237)
-- Name: role_id_seq; Type: SEQUENCE; Schema: public; Owner: idcore
--

CREATE SEQUENCE public.role_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.role_id_seq OWNER TO idcore;

--
-- TOC entry 3044 (class 0 OID 0)
-- Dependencies: 227
-- Name: role_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: idcore
--

ALTER SEQUENCE public.role_id_seq OWNED BY public.role.id;


--
-- TOC entry 228 (class 1259 OID 35239)
-- Name: role_permission; Type: TABLE; Schema: public; Owner: idcore
--

CREATE TABLE public.role_permission (
    role_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.role_permission OWNER TO idcore;

--
-- TOC entry 230 (class 1259 OID 35254)
-- Name: status_metadata_status_id_seq; Type: SEQUENCE; Schema: public; Owner: idcore
--

CREATE SEQUENCE public.status_metadata_status_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.status_metadata_status_id_seq OWNER TO idcore;

--
-- TOC entry 3045 (class 0 OID 0)
-- Dependencies: 230
-- Name: status_metadata_status_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: idcore
--

ALTER SEQUENCE public.status_metadata_status_id_seq OWNED BY public.mtlb_status_metadata.mtlb_status_id;


--
-- TOC entry 231 (class 1259 OID 35256)
-- Name: user_login; Type: TABLE; Schema: public; Owner: idcore
--

CREATE TABLE public.user_login (
    id bigint NOT NULL,
    username character varying NOT NULL,
    password character varying(1000),
    active boolean,
    approved boolean,
    draft boolean
);


ALTER TABLE public.user_login OWNER TO idcore;

--
-- TOC entry 232 (class 1259 OID 35292)
-- Name: user_login_id_seq; Type: SEQUENCE; Schema: public; Owner: idcore
--

CREATE SEQUENCE public.user_login_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_login_id_seq OWNER TO idcore;

--
-- TOC entry 3046 (class 0 OID 0)
-- Dependencies: 232
-- Name: user_login_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: idcore
--

ALTER SEQUENCE public.user_login_id_seq OWNED BY public.user_login.id;


--
-- TOC entry 233 (class 1259 OID 35294)
-- Name: user_login_role; Type: TABLE; Schema: public; Owner: idcore
--

CREATE TABLE public.user_login_role (
    user_login_id bigint NOT NULL,
    role integer NOT NULL
);


ALTER TABLE public.user_login_role OWNER TO idcore;

--
-- TOC entry 2794 (class 2604 OID 35343)
-- Name: administrative_update_mtlb administrative_update_mtlb_id; Type: DEFAULT; Schema: public; Owner: idcore
--

ALTER TABLE ONLY public.administrative_update_mtlb ALTER COLUMN administrative_update_mtlb_id SET DEFAULT nextval('public.administrative_update_administrative_update_id_seq'::regclass);


--
-- TOC entry 2796 (class 2604 OID 35348)
-- Name: audit_log id; Type: DEFAULT; Schema: public; Owner: idcore
--

ALTER TABLE ONLY public.audit_log ALTER COLUMN id SET DEFAULT nextval('public.audit_log_id_seq'::regclass);


--
-- TOC entry 2798 (class 2604 OID 35349)
-- Name: civil_status_mtlb civil_status_mtlb_id; Type: DEFAULT; Schema: public; Owner: idcore
--

ALTER TABLE ONLY public.civil_status_mtlb ALTER COLUMN civil_status_mtlb_id SET DEFAULT nextval('public.civil_status_id_seq'::regclass);


--
-- TOC entry 2799 (class 2604 OID 35355)
-- Name: country_metadata country_id; Type: DEFAULT; Schema: public; Owner: idcore
--

ALTER TABLE ONLY public.country_metadata ALTER COLUMN country_id SET DEFAULT nextval('public.country_metadata_country_id_seq'::regclass);


--
-- TOC entry 2800 (class 2604 OID 35359)
-- Name: i18n id; Type: DEFAULT; Schema: public; Owner: idcore
--

ALTER TABLE ONLY public.i18n ALTER COLUMN id SET DEFAULT nextval('public.i18n_id_seq'::regclass);


--
-- TOC entry 2801 (class 2604 OID 35361)
-- Name: id_mtlb id_mtlb_id; Type: DEFAULT; Schema: public; Owner: idcore
--

ALTER TABLE ONLY public.id_mtlb ALTER COLUMN id_mtlb_id SET DEFAULT nextval('public.id_application_id_application_id_seq'::regclass);


--
-- TOC entry 2797 (class 2604 OID 35367)
-- Name: marital_status_metadata marital_status_id; Type: DEFAULT; Schema: public; Owner: idcore
--

ALTER TABLE ONLY public.marital_status_metadata ALTER COLUMN marital_status_id SET DEFAULT nextval('public.civil_information_metadata_civil_information_id_seq'::regclass);


--
-- TOC entry 2807 (class 2604 OID 35379)
-- Name: mtlb_status_metadata mtlb_status_id; Type: DEFAULT; Schema: public; Owner: idcore
--

ALTER TABLE ONLY public.mtlb_status_metadata ALTER COLUMN mtlb_status_id SET DEFAULT nextval('public.status_metadata_status_id_seq'::regclass);


--
-- TOC entry 2795 (class 2604 OID 35347)
-- Name: mtlb_type_metadata mtlb_type_id; Type: DEFAULT; Schema: public; Owner: idcore
--

ALTER TABLE ONLY public.mtlb_type_metadata ALTER COLUMN mtlb_type_id SET DEFAULT nextval('public.application_type_metadata_application_type_id_seq'::regclass);


--
-- TOC entry 2802 (class 2604 OID 35369)
-- Name: occupation_metadata occupation_id; Type: DEFAULT; Schema: public; Owner: idcore
--

ALTER TABLE ONLY public.occupation_metadata ALTER COLUMN occupation_id SET DEFAULT nextval('public.occupation_metadata_occupation_id_seq'::regclass);


--
-- TOC entry 2803 (class 2604 OID 35371)
-- Name: permission id; Type: DEFAULT; Schema: public; Owner: idcore
--

ALTER TABLE ONLY public.permission ALTER COLUMN id SET DEFAULT nextval('public.permission_id_seq'::regclass);


--
-- TOC entry 2805 (class 2604 OID 35373)
-- Name: removal_mtlb removal_mtlb_id; Type: DEFAULT; Schema: public; Owner: idcore
--

ALTER TABLE ONLY public.removal_mtlb ALTER COLUMN removal_mtlb_id SET DEFAULT nextval('public.removal_removal_id_seq'::regclass);


--
-- TOC entry 2806 (class 2604 OID 35377)
-- Name: role id; Type: DEFAULT; Schema: public; Owner: idcore
--

ALTER TABLE ONLY public.role ALTER COLUMN id SET DEFAULT nextval('public.role_id_seq'::regclass);


--
-- TOC entry 2808 (class 2604 OID 35380)
-- Name: user_login id; Type: DEFAULT; Schema: public; Owner: idcore
--

ALTER TABLE ONLY public.user_login ALTER COLUMN id SET DEFAULT nextval('public.user_login_id_seq'::regclass);


--
-- TOC entry 2804 (class 2604 OID 35384)
-- Name: vital_records vital_records_id; Type: DEFAULT; Schema: public; Owner: idcore
--

ALTER TABLE ONLY public.vital_records ALTER COLUMN vital_records_id SET DEFAULT nextval('public.person_person_id_seq'::regclass);


--
-- TOC entry 2995 (class 0 OID 34807)
-- Dependencies: 202
-- Data for Name: administrative_update_mtlb; Type: TABLE DATA; Schema: public; Owner: idcore
--

COPY public.administrative_update_mtlb (administrative_update_mtlb_id, address, jobtitle, national_id, status) FROM stdin;
1	test	\N	121212	\N
\.


--
-- TOC entry 2999 (class 0 OID 34859)
-- Dependencies: 206
-- Data for Name: audit_log; Type: TABLE DATA; Schema: public; Owner: idcore
--

COPY public.audit_log (id, user_id, action_type, action_time, table_name, row_pk) FROM stdin;
1	1	search	15:51:07.696631	country_metadata	\N
2	1	search	15:51:07.789579	country_metadata	\N
3	1	joinPersonAvatar	15:51:36.110416	person	\N
4	1	search	15:55:39.884062	country_metadata	\N
5	1	search	15:55:39.955023	country_metadata	\N
6	1	joinPersonAvatar	15:55:55.310208	person	\N
7	1	search	15:55:58.039644	person_attachment	\N
8	1	search	15:55:58.143583	person_attachment	\N
9	1	search	16:06:23.841322	country_metadata	\N
10	1	search	16:06:23.842322	country_metadata	\N
11	1	joinPersonAvatar	16:06:28.596291	person	\N
12	1	search	16:06:32.099283	person_attachment	\N
13	1	search	16:06:32.410104	person_attachment	\N
14	1	joinPersonAvatar	16:07:09.239988	person	\N
15	1	create	16:07:16.778666	person	3
16	1	search	16:07:17.12347	person_attachment	\N
17	1	search	16:07:17.265387	person_attachment	\N
18	1	update	16:07:41.327592	person	3
19	1	joinPersonAvatar	16:07:44.912537	person	\N
20	1	search	16:07:48.255127	country_metadata	\N
21	1	search	16:07:58.687061	i18n	\N
22	1	search	16:08:25.077042	country_metadata	\N
23	1	search	16:08:25.175986	country_metadata	\N
24	1	joinPersonAvatar	16:08:26.439262	person	\N
25	1	search	16:08:29.716384	person	\N
26	1	joinPersonAvatar	16:10:05.489961	person	\N
27	1	joinPersonAvatar	16:10:09.599631	person	\N
28	1	search	16:10:14.637741	country_metadata	\N
29	1	search	16:11:55.243787	country_metadata	\N
30	1	search	16:11:55.244787	country_metadata	\N
31	1	joinPersonAvatar	16:11:58.737783	person	\N
32	1	search	16:12:00.401367	person	\N
33	1	joinPersonAvatar	16:12:28.492262	person	\N
34	1	delete	16:12:38.623453	person	2
35	1	search	16:12:43.151931	country_metadata	\N
36	1	search	16:13:05.754597	country_metadata	\N
37	1	joinPersonAvatar	16:13:06.832979	person	\N
38	1	search	16:13:12.042161	person_attachment	\N
39	1	search	16:13:12.267032	person_attachment	\N
40	1	joinPersonAvatar	16:13:14.236902	person	\N
42	1	search	13:08:18.622279	country_metadata	\N
41	1	search	13:08:18.63727	country_metadata	\N
43	1	search	13:11:47.792658	country_metadata	\N
44	1	search	13:11:47.85862	country_metadata	\N
45	1	search	13:21:54.53424	country_metadata	\N
46	1	search	13:21:54.60221	country_metadata	\N
47	1	joinPersonAvatar	13:21:58.071217	person	\N
48	1	search	13:22:11.991259	country_metadata	\N
49	1	joinUserLoginAvatar	13:22:18.37361	user_login	\N
50	1	search	13:22:27.078633	i18n	\N
51	1	search	13:22:40.699844	country_metadata	\N
52	1	search	13:22:51.473684	country_metadata	\N
53	1	joinPersonAvatar	13:22:52.361179	person	\N
54	1	joinPersonAvatar	13:24:57.231263	person	\N
55	1	search	13:24:59.435001	person_attachment	\N
56	1	search	13:24:59.604905	person_attachment	\N
57	1	search	13:30:26.356642	country_metadata	\N
58	1	search	13:30:26.451587	country_metadata	\N
59	1	joinPersonAvatar	13:30:31.112921	person	\N
60	1	search	13:30:41.098212	person	\N
61	1	search	13:30:59.551664	person_attachment	\N
62	1	search	13:30:59.729561	person_attachment	\N
63	1	create	13:32:41.272501	person	4
64	1	search	13:32:41.650284	person_attachment	\N
65	1	search	13:32:41.834179	person_attachment	\N
66	1	search	13:32:42.096029	person_attachment	\N
67	1	create	13:33:00.93026	person_avatar	1
68	1	update	13:33:04.389282	person_avatar	1
69	1	update	13:33:21.426541	person	4
70	1	joinPersonAvatar	13:33:25.856009	person	\N
71	1	search	13:33:29.783763	person_attachment	\N
72	1	search	13:33:29.969656	person_attachment	\N
73	1	update	13:34:11.113132	person	4
74	1	joinPersonAvatar	13:34:13.464787	person	\N
75	1	search	13:34:17.828293	person_attachment	\N
76	1	search	13:34:17.981205	person_attachment	\N
77	1	joinPersonAvatar	13:34:22.391683	person	\N
78	1	search	13:45:57.626035	country_metadata	\N
79	1	search	13:45:57.676006	country_metadata	\N
80	1	joinPersonAvatar	13:46:03.330773	person	\N
81	1	joinPersonAvatar	13:46:13.237109	person	\N
82	1	search	13:46:17.895449	country_metadata	\N
83	1	search	13:46:20.749819	country_metadata	\N
84	1	joinPersonAvatar	13:46:22.386878	person	\N
85	1	search	13:46:28.619313	person	\N
87	1	search	13:53:27.940124	country_metadata	\N
86	1	search	13:53:27.939126	country_metadata	\N
88	1	joinPersonAvatar	13:53:33.004229	person	\N
90	1	search	13:58:29.583483	country_metadata	\N
89	1	search	13:58:29.583483	country_metadata	\N
92	1	search	14:00:53.355623	country_metadata	\N
91	1	search	14:00:53.353626	country_metadata	\N
93	1	joinPersonAvatar	14:00:58.302794	person	\N
94	1	search	14:01:13.922863	person	\N
95	1	search	14:04:41.654721	country_metadata	\N
96	1	search	14:04:41.653722	country_metadata	\N
97	1	joinPersonAvatar	14:05:42.64185	person	\N
98	1	search	14:05:52.569174	person	\N
99	1	search	14:10:06.098693	country_metadata	\N
100	1	search	14:10:06.146667	country_metadata	\N
101	1	joinPersonAvatar	14:10:13.731329	person	\N
102	1	search	14:10:28.808709	person	\N
104	1	search	14:23:11.541765	country_metadata	\N
103	1	search	14:23:11.540765	country_metadata	\N
105	1	joinPersonAvatar	14:23:14.736942	person	\N
106	1	search	14:23:23.904699	person	\N
107	1	joinPersonAvatar	14:23:41.743497	person	\N
108	1	search	14:23:46.965515	person	\N
109	1	search	14:23:52.548319	person	\N
110	1	search	14:23:59.767191	person	\N
111	1	search	14:24:05.021187	person	\N
112	1	joinPersonAvatar	14:24:07.817588	person	\N
113	1	joinPersonAvatar	14:24:13.560305	person	\N
114	1	search	14:24:31.345135	person_attachment	\N
115	1	search	14:24:31.508044	person_attachment	\N
116	1	create	14:24:50.533164	person_attachment	1
117	1	update	14:24:54.192072	person	4
118	1	joinPersonAvatar	14:24:56.114973	person	\N
119	1	search	14:24:58.206776	person_attachment	\N
120	1	search	14:24:58.417656	person_attachment	\N
121	1	delete	14:25:03.686646	person_attachment	1
122	1	joinPersonAvatar	14:25:05.776449	person	\N
123	1	search	14:25:07.304576	person_attachment	\N
124	1	search	14:25:07.431504	person_attachment	\N
125	1	joinPersonAvatar	14:25:10.519737	person	\N
126	1	joinPersonAvatar	14:27:46.388616	person	\N
127	1	search	14:38:10.093655	country_metadata	\N
128	1	search	14:38:10.168614	country_metadata	\N
129	1	joinPersonAvatar	14:38:14.504135	person	\N
130	1	joinCivilStatusMtlbAvatar	14:38:16.390055	civil_status_mtlb	\N
131	1	joinPersonAvatar	14:38:25.467865	person	\N
132	1	joinCivilStatusMtlbAvatar	14:38:27.938452	civil_status_mtlb	\N
133	1	joinPersonAvatar	14:38:50.471568	person	\N
134	1	search	14:53:54.253742	country_metadata	\N
135	1	search	14:53:54.364678	country_metadata	\N
136	1	joinPersonAvatar	14:54:00.924927	person	\N
137	1	search	15:10:03.003608	country_metadata	\N
138	1	search	15:10:03.025596	country_metadata	\N
139	1	search	15:15:30.833164	country_metadata	\N
140	1	search	15:15:30.867145	country_metadata	\N
141	1	search	15:17:31.495928	country_metadata	\N
142	1	search	15:17:31.811748	country_metadata	\N
143	1	search	15:19:48.355677	country_metadata	\N
144	1	search	15:19:48.444625	country_metadata	\N
145	1	joinPersonAvatar	15:19:52.950049	person	\N
146	1	search	15:22:20.100802	country_metadata	\N
147	1	search	15:22:20.278699	country_metadata	\N
148	1	joinCivilStatusMtlbAvatar	15:22:25.008995	civil_status_mtlb	\N
149	1	search	15:22:28.011279	country_metadata	\N
150	1	search	15:24:56.436415	country_metadata	\N
151	1	joinPersonAvatar	15:24:58.073477	person	\N
152	1	create	15:25:00.06134	person	5
153	1	search	15:25:00.439125	person_attachment	\N
154	1	search	15:25:00.793921	person_attachment	\N
155	1	joinCivilStatusMtlbAvatar	15:25:03.945121	civil_status_mtlb	\N
156	1	search	15:25:13.070902	country_metadata	\N
157	1	search	15:28:37.766777	country_metadata	\N
158	1	search	15:28:37.768776	country_metadata	\N
159	1	joinCivilStatusMtlbAvatar	15:28:42.640989	civil_status_mtlb	\N
160	1	create	15:28:45.065603	civil_status_mtlb	1
161	1	search	15:33:41.463417	country_metadata	\N
162	1	search	15:33:41.485406	country_metadata	\N
163	1	search	17:51:17.478224	country_metadata	\N
164	1	search	17:51:17.479223	country_metadata	\N
165	1	joinPersonAvatar	17:51:21.924681	person	\N
166	1	search	18:13:24.197641	country_metadata	\N
167	1	search	18:13:24.238618	country_metadata	\N
168	1	joinCivilStatusMtlbAvatar	18:13:30.777879	civil_status_mtlb	\N
169	1	search	18:16:01.021959	country_metadata	\N
170	1	search	18:16:01.034953	country_metadata	\N
171	1	joinCivilStatusMtlbAvatar	18:16:06.212991	civil_status_mtlb	\N
172	1	search	18:16:09.08735	civil_status_mtlb_attachment	\N
173	1	search	18:16:09.48812	civil_status_mtlb_attachment	\N
174	1	search	18:28:11.966586	country_metadata	\N
175	1	search	18:28:11.974581	country_metadata	\N
176	1	joinCivilStatusMtlbAvatar	18:28:16.356076	civil_status_mtlb	\N
177	1	search	18:35:09.061382	country_metadata	\N
178	1	search	18:35:09.444164	country_metadata	\N
179	1	joinCivilStatusMtlbAvatar	18:35:15.488708	civil_status_mtlb	\N
180	1	search	18:35:20.726712	civil_status_mtlb_attachment	\N
181	1	search	18:35:20.953584	civil_status_mtlb_attachment	\N
182	1	search	18:46:37.586256	country_metadata	\N
183	1	search	18:46:37.608243	country_metadata	\N
184	1	joinCivilStatusMtlbAvatar	18:46:44.159497	civil_status_mtlb	\N
185	1	search	18:46:46.171346	civil_status_mtlb_attachment	\N
186	1	search	18:46:46.380228	civil_status_mtlb_attachment	\N
187	1	search	19:04:51.119786	country_metadata	\N
188	1	search	19:04:51.155765	country_metadata	\N
189	1	joinCivilStatusMtlbAvatar	19:04:55.482291	civil_status_mtlb	\N
190	1	search	19:04:58.381633	civil_status_mtlb_attachment	\N
191	1	search	19:04:58.578521	civil_status_mtlb_attachment	\N
192	1	update	19:05:05.17375	civil_status_mtlb	1
193	1	joinCivilStatusMtlbAvatar	19:05:07.432458	civil_status_mtlb	\N
194	1	joinPersonAvatar	19:05:13.378059	person	\N
195	1	joinCivilStatusMtlbAvatar	19:05:15.267978	civil_status_mtlb	\N
196	1	joinPersonAvatar	19:05:35.388474	person	\N
198	1	search	19:05:41.384048	civil_status_mtlb	\N
199	1	joinPersonAvatar	19:05:44.309373	person	\N
200	1	joinCivilStatusMtlbAvatar	19:05:45.045952	civil_status_mtlb	\N
202	1	joinPersonAvatar	19:05:56.745262	person	\N
203	1	joinCivilStatusMtlbAvatar	19:05:59.061938	civil_status_mtlb	\N
197	1	joinCivilStatusMtlbAvatar	19:05:36.231991	civil_status_mtlb	\N
201	1	joinPersonAvatar	19:05:49.439441	person	\N
204	1	search	19:09:24.881268	country_metadata	\N
205	1	search	19:09:24.993204	country_metadata	\N
206	1	joinCivilStatusMtlbAvatar	19:09:29.117846	civil_status_mtlb	\N
207	1	search	19:09:40.057592	civil_status_mtlb	\N
208	1	joinPersonAvatar	19:09:45.70936	person	\N
209	1	joinCivilStatusMtlbAvatar	19:10:54.754882	civil_status_mtlb	\N
210	1	joinCivilStatusMtlbAvatar	19:11:01.800854	civil_status_mtlb	\N
211	1	search	19:11:09.500451	civil_status_mtlb_attachment	\N
212	1	search	19:11:09.649365	civil_status_mtlb_attachment	\N
213	1	search	19:13:12.579042	country_metadata	\N
214	1	search	19:13:12.629014	country_metadata	\N
215	1	joinCivilStatusMtlbAvatar	19:13:17.558198	civil_status_mtlb	\N
216	1	search	19:13:28.062189	civil_status_mtlb_attachment	\N
217	1	search	19:13:28.23709	civil_status_mtlb_attachment	\N
218	1	update	19:14:00.505639	civil_status_mtlb	1
219	1	joinCivilStatusMtlbAvatar	19:14:03.091161	civil_status_mtlb	\N
220	1	search	19:14:04.821174	civil_status_mtlb_attachment	\N
221	1	search	19:14:04.994074	civil_status_mtlb_attachment	\N
222	1	search	19:18:24.310312	country_metadata	\N
223	1	search	19:18:24.363281	country_metadata	\N
224	1	joinCivilStatusMtlbAvatar	19:18:28.119133	civil_status_mtlb	\N
225	1	search	19:18:29.89312	civil_status_mtlb_attachment	\N
226	1	search	19:18:30.100001	civil_status_mtlb_attachment	\N
227	1	joinPersonAvatar	19:19:01.773891	person	\N
228	1	joinPersonAvatar	19:19:25.498326	person	\N
229	1	joinCivilStatusMtlbAvatar	19:19:26.510747	civil_status_mtlb	\N
230	1	joinPersonAvatar	19:19:27.670085	person	\N
231	1	joinPersonAvatar	19:19:33.105976	person	\N
232	1	joinCivilStatusMtlbAvatar	19:19:33.457774	civil_status_mtlb	\N
233	1	joinPersonAvatar	19:19:34.270311	person	\N
234	1	joinCivilStatusMtlbAvatar	19:19:55.302599	civil_status_mtlb	\N
235	1	search	19:36:29.655405	country_metadata	\N
236	1	search	19:36:29.676393	country_metadata	\N
237	1	search	19:38:13.263493	country_metadata	\N
238	1	search	19:38:13.407412	country_metadata	\N
239	1	search	20:23:41.912447	country_metadata	\N
240	1	search	20:23:41.912447	country_metadata	\N
241	1	joinIdApplicationMtlbAvatar	20:23:47.530234	id_application_mtlb	\N
242	1	joinCivilStatusMtlbAvatar	20:23:53.392883	civil_status_mtlb	\N
243	1	joinPersonAvatar	20:23:54.377321	person	\N
244	1	joinIdApplicationMtlbAvatar	20:23:55.255817	id_application_mtlb	\N
245	1	search	20:33:55.629731	country_metadata	\N
246	1	search	20:33:55.628732	country_metadata	\N
247	1	joinIdApplicationMtlbAvatar	20:34:02.614738	id_application_mtlb	\N
248	1	search	20:34:05.932841	country_metadata	\N
249	1	search	20:42:43.613044	country_metadata	\N
250	1	search	20:42:43.684002	country_metadata	\N
251	1	joinIdApplicationMtlbAvatar	20:42:48.550221	id_application_mtlb	\N
252	1	create	20:42:51.651448	id_application_mtlb	1
253	1	search	20:42:52.568923	id_application_mtlb_attachment	\N
254	1	search	20:42:52.876747	id_application_mtlb_attachment	\N
255	1	update	20:43:21.435425	id_application_mtlb	1
256	1	joinIdApplicationMtlbAvatar	20:43:24.519661	id_application_mtlb	\N
257	1	joinCivilStatusMtlbAvatar	20:43:31.088898	civil_status_mtlb	\N
258	1	joinIdApplicationMtlbAvatar	20:43:31.986386	id_application_mtlb	\N
259	1	search	20:43:33.841325	id_application_mtlb_attachment	\N
260	1	search	20:43:33.943267	id_application_mtlb_attachment	\N
261	1	search	20:43:37.358315	id_application_mtlb	\N
262	1	joinIdApplicationMtlbAvatar	20:43:40.434556	id_application_mtlb	\N
263	1	joinCivilStatusMtlbAvatar	20:43:48.220103	civil_status_mtlb	\N
264	1	create	20:43:51.044487	civil_status_mtlb	2
265	1	search	20:43:51.371302	civil_status_mtlb_attachment	\N
266	1	search	20:43:51.563192	civil_status_mtlb_attachment	\N
267	1	joinCivilStatusMtlbAvatar	20:43:54.055766	civil_status_mtlb	\N
268	1	delete	20:44:00.890858	civil_status_mtlb	2
269	1	joinPersonAvatar	20:44:07.072324	person	\N
270	1	delete	20:44:10.957102	person	5
271	1	search	20:44:14.971807	country_metadata	\N
272	1	search	20:44:32.474799	country_metadata	\N
273	1	joinIdApplicationMtlbAvatar	20:54:25.089336	id_application_mtlb	\N
274	1	search	21:00:53.441317	id_application_mtlb	\N
275	1	joinIdApplicationMtlbAvatar	21:00:55.396198	id_application_mtlb	\N
276	1	joinCivilStatusMtlbAvatar	21:00:56.776409	civil_status_mtlb	\N
277	1	joinPersonAvatar	21:00:57.726866	person	\N
278	1	joinCivilStatusMtlbAvatar	21:00:58.387488	civil_status_mtlb	\N
279	1	joinIdApplicationMtlbAvatar	21:00:59.618787	id_application_mtlb	\N
280	1	search	21:01:03.377635	id_application_mtlb_attachment	\N
281	1	search	21:01:03.502564	id_application_mtlb_attachment	\N
282	1	create	21:01:35.178451	id_application_mtlb_avatar	1
283	1	update	21:01:44.230277	id_application_mtlb_avatar	1
284	1	update	21:01:47.328505	id_application_mtlb	1
285	1	joinIdApplicationMtlbAvatar	21:01:49.091498	id_application_mtlb	\N
286	1	joinCivilStatusMtlbAvatar	21:02:10.463277	civil_status_mtlb	\N
287	1	joinPersonAvatar	21:02:12.847914	person	\N
288	1	joinCivilStatusMtlbAvatar	21:02:13.466561	civil_status_mtlb	\N
291	1	joinCivilStatusMtlbAvatar	21:02:18.386747	civil_status_mtlb	\N
292	1	joinIdApplicationMtlbAvatar	21:02:19.97384	id_application_mtlb	\N
294	1	joinUserLoginAvatar	21:02:25.180861	user_login	\N
295	1	search	21:02:28.942711	country_metadata	\N
296	1	joinPersonAvatar	21:02:30.765669	person	\N
289	1	joinIdApplicationMtlbAvatar	21:02:13.953282	id_application_mtlb	\N
290	1	joinPersonAvatar	21:02:17.354339	person	\N
293	1	search	21:02:23.987552	country_metadata	\N
297	1	joinCivilStatusMtlbAvatar	21:02:33.903874	civil_status_mtlb	\N
298	1	joinIdApplicationMtlbAvatar	21:02:37.32292	id_application_mtlb	\N
299	1	search	21:28:34.183341	country_metadata	\N
300	1	search	21:28:34.300274	country_metadata	\N
301	1	search	21:33:24.6258	country_metadata	\N
302	1	search	21:33:24.6268	country_metadata	\N
303	1	search	21:35:06.348579	country_metadata	\N
304	1	search	21:35:06.348579	country_metadata	\N
305	1	search	21:35:08.316454	administrative_update_mtlb	\N
306	1	search	21:35:14.064168	country_metadata	\N
307	1	search	21:37:44.000457	country_metadata	\N
308	1	search	21:37:47.424499	administrative_update_mtlb	\N
309	1	search	21:37:51.683064	country_metadata	\N
310	1	search	21:47:52.479786	country_metadata	\N
311	1	search	21:47:52.520762	country_metadata	\N
312	1	search	21:47:58.325443	administrative_update_mtlb	\N
313	1	search	21:48:02.838862	country_metadata	\N
315	1	search	21:53:49.427777	country_metadata	\N
314	1	search	21:53:49.429776	country_metadata	\N
316	1	search	21:53:55.365382	administrative_update_mtlb	\N
317	1	create	21:54:17.99844	administrative_update_mtlb	1
318	1	search	21:54:20.23816	administrative_update_mtlb	\N
319	1	search	21:57:36.372377	administrative_update_mtlb_attachment	\N
320	1	search	21:57:36.445337	administrative_update_mtlb_attachment	\N
321	1	search	21:58:23.873219	administrative_update_mtlb	\N
322	1	search	22:02:40.022563	country_metadata	\N
323	1	search	22:02:40.023565	country_metadata	\N
324	1	search	22:02:44.454029	administrative_update_mtlb	\N
325	1	joinIdApplicationMtlbAvatar	22:02:46.414907	id_application_mtlb	\N
326	1	joinCivilStatusMtlbAvatar	22:02:47.74015	civil_status_mtlb	\N
327	1	search	22:02:49.934895	country_metadata	\N
328	1	joinPersonAvatar	22:02:51.948744	person	\N
329	1	search	22:03:01.251425	country_metadata	\N
330	1	search	22:13:39.189272	country_metadata	\N
331	1	search	22:13:39.35118	country_metadata	\N
332	1	search	22:15:52.808249	country_metadata	\N
333	1	search	22:15:52.807249	country_metadata	\N
334	1	search	22:15:56.711017	removal_mtlb	\N
335	1	create	22:16:10.69602	removal_mtlb	1
336	1	search	22:16:12.945735	removal_mtlb	\N
337	1	search	22:16:35.586076	removal_mtlb_attachment	\N
338	1	search	22:16:35.645041	removal_mtlb_attachment	\N
339	1	search	22:16:38.543385	removal_mtlb	\N
340	1	search	11:38:54.120066	country_metadata	\N
341	1	search	11:38:54.119066	country_metadata	\N
342	1	search	11:38:58.922318	removal_mtlb	\N
343	1	search	11:39:01.914603	administrative_update_mtlb	\N
344	1	joinIdApplicationMtlbAvatar	11:39:06.431019	id_application_mtlb	\N
345	1	joinCivilStatusMtlbAvatar	11:39:08.795663	civil_status_mtlb	\N
346	1	search	11:39:13.16816	country_metadata	\N
347	1	joinPersonAvatar	11:39:16.216433	person	\N
348	1	joinUserLoginAvatar	11:39:20.028232	user_login	\N
349	1	joinPersonAvatar	11:39:59.49569	person	\N
350	1	joinUserLoginAvatar	11:40:01.697431	user_login	\N
351	1	search	11:40:03.381467	i18n	\N
352	1	joinUserLoginAvatar	11:40:04.538803	user_login	\N
353	1	search	11:40:05.908018	country_metadata	\N
354	1	joinCivilStatusMtlbAvatar	11:40:24.068621	civil_status_mtlb	\N
355	1	search	11:40:26.34132	civil_status_mtlb_attachment	\N
356	1	search	11:40:26.508225	civil_status_mtlb_attachment	\N
357	1	search	11:49:52.254403	country_metadata	\N
358	1	search	11:49:52.368337	country_metadata	\N
359	1	joinCivilStatusMtlbAvatar	11:50:03.743824	civil_status_mtlb	\N
360	1	joinIdApplicationMtlbAvatar	11:50:05.699705	id_application_mtlb	\N
361	1	search	11:50:08.74696	administrative_update_mtlb	\N
362	1	search	11:50:10.158154	removal_mtlb	\N
363	1	search	11:50:12.043073	administrative_update_mtlb	\N
364	1	search	11:50:13.871026	removal_mtlb	\N
365	1	search	11:50:14.652579	administrative_update_mtlb	\N
366	1	search	11:50:17.573907	country_metadata	\N
367	1	joinPersonAvatar	11:50:33.399846	person	\N
368	1	search	11:50:34.577173	i18n	\N
369	1	joinUserLoginAvatar	11:50:35.443675	user_login	\N
370	1	search	11:50:37.074741	country_metadata	\N
371	1	joinCivilStatusMtlbAvatar	11:52:32.8815	civil_status_mtlb	\N
372	1	joinIdApplicationMtlbAvatar	11:52:36.765277	id_application_mtlb	\N
373	1	joinCivilStatusMtlbAvatar	11:52:39.276839	civil_status_mtlb	\N
374	1	joinIdApplicationMtlbAvatar	11:56:19.590728	id_application_mtlb	\N
375	1	search	11:56:42.701496	administrative_update_mtlb	\N
376	1	search	11:56:52.001171	removal_mtlb	\N
377	1	joinCivilStatusMtlbAvatar	11:58:29.363428	civil_status_mtlb	\N
378	1	search	11:58:36.600285	civil_status_mtlb_attachment	\N
379	1	search	11:58:36.681238	civil_status_mtlb_attachment	\N
380	1	search	11:58:52.509177	country_metadata	\N
381	1	joinPersonAvatar	11:58:54.395097	person	\N
382	1	search	11:59:43.554069	country_metadata	\N
383	1	joinCivilStatusMtlbAvatar	11:59:45.535929	civil_status_mtlb	\N
384	1	search	11:59:56.888429	country_metadata	\N
385	1	joinUserLoginAvatar	12:00:08.237984	user_login	\N
387	1	joinCivilStatusMtlbAvatar	12:00:15.453853	civil_status_mtlb	\N
388	1	search	12:00:43.028091	civil_status_mtlb_attachment	\N
389	1	search	12:00:43.141027	civil_status_mtlb_attachment	\N
390	1	search	12:13:53.733809	administrative_update_mtlb	\N
391	1	search	12:13:56.219386	administrative_update_mtlb_attachment	\N
392	1	search	12:13:56.260363	administrative_update_mtlb_attachment	\N
393	1	search	12:13:59.489515	administrative_update_mtlb	\N
386	1	search	12:00:13.960708	country_metadata	\N
394	1	joinCivilStatusMtlbAvatar	12:22:31.464455	civil_status_mtlb	\N
395	1	search	12:22:35.729014	civil_status_mtlb_attachment	\N
396	1	search	12:22:35.805972	civil_status_mtlb_attachment	\N
397	1	search	12:29:53.535272	country_metadata	\N
398	1	search	12:29:53.553261	country_metadata	\N
399	1	joinCivilStatusMtlbAvatar	12:29:58.417673	civil_status_mtlb	\N
400	1	search	12:29:59.917815	civil_status_mtlb_attachment	\N
401	1	search	12:30:00.133692	civil_status_mtlb_attachment	\N
402	1	search	12:32:33.716074	country_metadata	\N
403	1	search	12:32:33.732062	country_metadata	\N
404	1	search	12:32:45.247764	administrative_update_mtlb	\N
405	1	joinCivilStatusMtlbAvatar	12:32:54.391645	civil_status_mtlb	\N
406	1	search	12:32:55.887828	civil_status_mtlb_attachment	\N
407	1	search	12:32:56.330575	civil_status_mtlb_attachment	\N
409	1	search	12:38:56.11643	country_metadata	\N
408	1	search	12:38:56.11743	country_metadata	\N
410	1	joinCivilStatusMtlbAvatar	12:39:00.809855	civil_status_mtlb	\N
411	1	search	12:39:02.375957	civil_status_mtlb_attachment	\N
412	1	search	12:39:02.611822	civil_status_mtlb_attachment	\N
413	1	search	12:46:18.325001	country_metadata	\N
414	1	search	12:46:18.408954	country_metadata	\N
415	1	joinPersonAvatar	12:46:22.868537	person	\N
416	1	search	12:46:33.633588	country_metadata	\N
417	1	search	12:48:51.470987	country_metadata	\N
418	1	search	12:48:51.469988	country_metadata	\N
419	1	search	12:48:56.10538	person	\N
420	1	search	12:50:24.166928	civil_status_mtlb	\N
421	1	search	12:50:29.081114	id_application_mtlb	\N
422	1	search	12:50:35.731525	administrative_update_mtlb	\N
423	1	search	12:50:38.073184	removal_mtlb	\N
424	1	search	12:50:40.359933	administrative_update_mtlb	\N
425	1	search	12:50:41.038546	id_application_mtlb	\N
426	1	search	12:50:43.144338	country_metadata	\N
427	1	joinUserLoginAvatar	12:50:45.723862	user_login	\N
428	1	search	12:50:46.990136	i18n	\N
429	1	search	12:50:50.561136	country_metadata	\N
430	1	search	12:50:55.039622	country_metadata	\N
431	1	search	13:03:41.214302	country_metadata	\N
432	1	search	13:03:41.222297	country_metadata	\N
433	1	search	13:03:49.791607	birth_mtlb	\N
434	1	search	13:03:54.185264	person	\N
435	1	search	13:03:55.60745	birth_mtlb	\N
436	1	search	13:06:55.77811	civil_status_mtlb	\N
437	1	search	13:06:58.539529	civil_status_mtlb_attachment	\N
438	1	search	13:06:58.799378	civil_status_mtlb_attachment	\N
439	1	search	13:07:54.493517	birth_mtlb	\N
440	1	search	14:42:42.269824	country_metadata	\N
441	1	search	14:42:42.38276	country_metadata	\N
442	1	search	14:42:47.582036	person	\N
443	1	search	14:43:17.445378	administrative_update_mtlb	\N
444	1	search	14:43:22.069927	person	\N
445	1	search	14:48:11.787438	country_metadata	\N
446	1	search	14:48:11.787438	country_metadata	\N
447	1	search	14:48:18.552795	administrative_update_mtlb	\N
448	1	search	14:48:20.317825	civil_status_mtlb	\N
449	1	search	14:48:21.698036	person	\N
450	1	search	14:48:23.006286	id_application_mtlb	\N
451	1	search	14:48:25.112081	administrative_update_mtlb	\N
452	1	search	14:48:35.899523	country_metadata	\N
453	1	search	14:48:41.832357	country_metadata	\N
454	1	search	14:48:48.649788	person_trash	\N
455	1	search	14:48:56.753265	user_login_trash	\N
456	1	joinUserLoginAvatar	14:49:02.168401	user_login	\N
457	1	search	14:49:03.161831	i18n	\N
458	1	search	14:49:07.849305	country_metadata	\N
459	1	search	16:45:21.024344	country_metadata	\N
460	1	search	16:45:21.033338	country_metadata	\N
461	1	search	16:45:25.208121	vital_records	\N
462	1	search	16:45:29.276188	civil_status_mtlb	\N
463	1	search	16:45:30.743349	vital_records	\N
464	1	search	16:45:34.845188	vital_records_attachment	\N
465	1	search	16:45:35.045076	vital_records_attachment	\N
466	1	search	17:08:45.884748	country_metadata	\N
467	1	search	17:08:45.903737	country_metadata	\N
468	1	search	17:08:51.058833	vital_records	\N
469	1	search	17:08:54.791697	vital_records_attachment	\N
470	1	search	17:08:55.06754	vital_records_attachment	\N
471	1	update	17:09:05.102358	vital_records	3
472	1	search	17:09:07.775864	vital_records	\N
473	1	search	17:09:16.884742	civil_status_mtlb	\N
474	1	search	17:09:18.60979	id_application_mtlb	\N
475	1	search	17:09:20.04397	civil_status_mtlb	\N
476	1	search	17:09:22.424607	civil_status_mtlb_attachment	\N
477	1	search	17:09:22.636485	civil_status_mtlb_attachment	\N
478	1	update	17:09:36.139022	civil_status_mtlb	1
479	1	search	17:09:38.535649	civil_status_mtlb	\N
480	1	search	17:09:42.260698	id_application_mtlb	\N
481	1	search	17:09:46.608246	id_application_mtlb_attachment	\N
482	1	search	17:09:46.70119	id_application_mtlb_attachment	\N
483	1	update	17:10:07.363697	id_application_mtlb	1
484	1	search	17:10:09.245651	id_application_mtlb	\N
485	1	search	17:10:12.915599	administrative_update_mtlb	\N
486	1	search	17:10:15.45719	administrative_update_mtlb_attachment	\N
487	1	search	17:10:15.524152	administrative_update_mtlb_attachment	\N
488	1	update	17:10:21.035706	administrative_update_mtlb	1
490	1	search	17:10:25.481208	removal_mtlb	\N
491	1	search	17:10:27.597996	removal_mtlb_attachment	\N
492	1	search	17:10:27.65996	removal_mtlb_attachment	\N
493	1	update	17:10:40.050904	removal_mtlb	1
494	1	search	17:10:44.428428	vital_records	\N
495	1	search	17:10:48.620031	country_metadata	\N
496	1	search	17:13:18.332177	vital_records_trash	\N
498	1	search	17:13:21.726316	vital_records_trash	\N
499	1	search	17:14:49.379512	vital_records_trash	\N
500	1	search	17:15:58.50557	user_login_trash	\N
501	1	search	17:15:59.841803	vital_records_trash	\N
502	1	permanent delete	17:16:09.522327	vital_records_trash	5
503	1	search	17:16:28.697597	user_login_trash	\N
504	1	search	17:16:29.683033	vital_records_trash	\N
505	1	search	17:16:34.089588	country_metadata	\N
507	1	joinUserLoginAvatar	17:16:39.411542	user_login	\N
508	1	search	17:16:41.506342	country_metadata	\N
510	1	create	17:16:47.240167	vital_records	6
511	1	search	17:16:47.629924	vital_records_attachment	\N
512	1	search	17:16:47.781837	vital_records_attachment	\N
513	1	search	17:16:54.525026	vital_records	\N
514	1	delete	17:16:58.478787	vital_records	6
515	1	search	17:17:01.952822	country_metadata	\N
516	1	search	17:17:04.130575	vital_records_trash	\N
489	1	search	17:10:22.558834	administrative_update_mtlb	\N
497	1	search	17:13:20.391055	user_login_trash	\N
506	1	search	17:16:37.141841	i18n	\N
509	1	search	17:16:43.320374	vital_records	\N
517	1	search	17:22:33.062679	country_metadata	\N
518	1	search	17:22:33.11265	country_metadata	\N
519	1	search	17:22:41.707812	country_metadata	\N
520	1	search	17:22:45.906442	vital_records_trash	\N
521	1	restore	17:22:51.204476	vital_records_trash	6
522	1	search	17:22:56.372539	country_metadata	\N
523	1	search	17:22:57.507004	vital_records	\N
524	1	delete	17:23:08.490827	vital_records	6
525	1	search	17:25:06.642593	country_metadata	\N
526	1	search	17:25:09.053212	vital_records_trash	\N
527	1	search	17:25:32.720323	country_metadata	\N
528	1	search	17:25:34.172563	vital_records	\N
529	1	search	17:25:39.75353	vital_records_attachment	\N
530	1	search	17:25:39.992395	vital_records_attachment	\N
531	1	search	17:41:47.893179	country_metadata	\N
532	1	search	17:41:47.971135	country_metadata	\N
533	1	search	17:42:01.313496	vital_records	\N
534	1	search	17:42:05.050357	country_metadata	\N
535	1	search	17:42:07.774797	vital_records_trash	\N
536	1	search	17:42:14.845351	user_login_trash	\N
537	1	search	17:42:18.338353	country_metadata	\N
538	1	search	22:36:25.532902	country_metadata	\N
539	1	search	22:36:26.160544	country_metadata	\N
540	1	search	22:36:30.890836	vital_records	\N
541	1	search	22:36:36.726494	vital_records_attachment	\N
542	1	search	22:36:37.186231	vital_records_attachment	\N
\.


--
-- TOC entry 3003 (class 0 OID 34915)
-- Dependencies: 210
-- Data for Name: civil_status_mtlb; Type: TABLE DATA; Schema: public; Owner: idcore
--

COPY public.civil_status_mtlb (civil_status_mtlb_id, firstname, middlename, lastname, gender, birthdate, birth_day_known, birth_month_known, birthcountry, father_id, modher_id, street_address, phone_number, email, national_id, occupation_id, notes, draft, application_type, birth_year_estimated, marital_status_id, status, left_thumb, left_index_finger, left_middle_finger, left_ring_finger, left_pinky, right_thumb, right_index_finger, right_middle_finger, right_ring_finger, right_pinky, signature, face, city_address, zip_code, residence_country_id, primary_citizenship, other_citizenship_csv) FROM stdin;
1	Chokri	\N	\N	\N	1993-07-16	t	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
\.


--
-- TOC entry 3005 (class 0 OID 34949)
-- Dependencies: 212
-- Data for Name: country_metadata; Type: TABLE DATA; Schema: public; Owner: idcore
--

COPY public.country_metadata (country_id, country_name, country_flag) FROM stdin;
\.


--
-- TOC entry 3007 (class 0 OID 34993)
-- Dependencies: 214
-- Data for Name: i18n; Type: TABLE DATA; Schema: public; Owner: idcore
--

COPY public.i18n (id, message_id, locale_id, domain_id, value) FROM stdin;
\.


--
-- TOC entry 3009 (class 0 OID 35039)
-- Dependencies: 216
-- Data for Name: id_mtlb; Type: TABLE DATA; Schema: public; Owner: idcore
--

COPY public.id_mtlb (id_mtlb_id, renewal, loss, damaged, stolen, national_id, notes, draft, first, status, left_thumb, left_index_finger, left_middle_finger, left_ring_finger, left_pinky, right_thumb, right_index_finger, right_middle_finger, right_ring_finger, right_pinky, firstname, middlename, lastname, face, signature, mtlb_location, requested_id_type) FROM stdin;
1	f	f	f	f	\N	\N	t	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Chokri	\N	Chakroun	\N	\N	\N	\N
\.


--
-- TOC entry 3001 (class 0 OID 34867)
-- Dependencies: 208
-- Data for Name: marital_status_metadata; Type: TABLE DATA; Schema: public; Owner: idcore
--

COPY public.marital_status_metadata (marital_status_id, civil_information_name) FROM stdin;
\.


--
-- TOC entry 3022 (class 0 OID 35248)
-- Dependencies: 229
-- Data for Name: mtlb_status_metadata; Type: TABLE DATA; Schema: public; Owner: idcore
--

COPY public.mtlb_status_metadata (mtlb_status_id, mtlb_status_name) FROM stdin;
\.


--
-- TOC entry 2997 (class 0 OID 34851)
-- Dependencies: 204
-- Data for Name: mtlb_type_metadata; Type: TABLE DATA; Schema: public; Owner: idcore
--

COPY public.mtlb_type_metadata (mtlb_type_id, mtlb_type_name) FROM stdin;
\.


--
-- TOC entry 3011 (class 0 OID 35087)
-- Dependencies: 218
-- Data for Name: occupation_metadata; Type: TABLE DATA; Schema: public; Owner: idcore
--

COPY public.occupation_metadata (occupation_id, occupation_name) FROM stdin;
\.


--
-- TOC entry 3013 (class 0 OID 35109)
-- Dependencies: 220
-- Data for Name: permission; Type: TABLE DATA; Schema: public; Owner: idcore
--

COPY public.permission (id, permission_name, description) FROM stdin;
1	ALL	\N
\.


--
-- TOC entry 3017 (class 0 OID 35203)
-- Dependencies: 224
-- Data for Name: removal_mtlb; Type: TABLE DATA; Schema: public; Owner: idcore
--

COPY public.removal_mtlb (removal_mtlb_id, national_id, removal_type, notes, status, requestor_national_id, requestor_face, requestor_fingerprint, requestor_finger_which, requestor_phone, requestor_email) FROM stdin;
1	45455	\N	test	\N	\N	\N	\N	\N	\N	\N
\.


--
-- TOC entry 3019 (class 0 OID 35223)
-- Dependencies: 226
-- Data for Name: role; Type: TABLE DATA; Schema: public; Owner: idcore
--

COPY public.role (id, role_name, description) FROM stdin;
1	ADMIN	\N
\.


--
-- TOC entry 3021 (class 0 OID 35239)
-- Dependencies: 228
-- Data for Name: role_permission; Type: TABLE DATA; Schema: public; Owner: idcore
--

COPY public.role_permission (role_id, permission_id) FROM stdin;
1	1
\.


--
-- TOC entry 3024 (class 0 OID 35256)
-- Dependencies: 231
-- Data for Name: user_login; Type: TABLE DATA; Schema: public; Owner: idcore
--

COPY public.user_login (id, username, password, active, approved, draft) FROM stdin;
1	admin	test	t	t	\N
2	user	0000	t	t	\N
\.


--
-- TOC entry 3026 (class 0 OID 35294)
-- Dependencies: 233
-- Data for Name: user_login_role; Type: TABLE DATA; Schema: public; Owner: idcore
--

COPY public.user_login_role (user_login_id, role) FROM stdin;
1	1
\.


--
-- TOC entry 3015 (class 0 OID 35171)
-- Dependencies: 222
-- Data for Name: vital_records; Type: TABLE DATA; Schema: public; Owner: idcore
--

COPY public.vital_records (vital_records_id, firstname, middlename, lastname, gender, birthdate, birth_day_known, birth_month_known, birth_year_estimated, birthcountry, father_id, mother_id, address, phone_number, email, national_id, occupation_id, notes, draft, marital_status_id, jobtitle, citizenship_id) FROM stdin;
4	Mohamed	Chokri	Chakroun	\N	\N	f	f	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	\N
3	create test	test	test	\N	2020-07-14	f	f	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	\N
\.


--
-- TOC entry 3047 (class 0 OID 0)
-- Dependencies: 203
-- Name: administrative_update_administrative_update_id_seq; Type: SEQUENCE SET; Schema: public; Owner: idcore
--

SELECT pg_catalog.setval('public.administrative_update_administrative_update_id_seq', 1, true);


--
-- TOC entry 3048 (class 0 OID 0)
-- Dependencies: 205
-- Name: application_type_metadata_application_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: idcore
--

SELECT pg_catalog.setval('public.application_type_metadata_application_type_id_seq', 1, false);


--
-- TOC entry 3049 (class 0 OID 0)
-- Dependencies: 207
-- Name: audit_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: idcore
--

SELECT pg_catalog.setval('public.audit_log_id_seq', 542, true);


--
-- TOC entry 3050 (class 0 OID 0)
-- Dependencies: 209
-- Name: civil_information_metadata_civil_information_id_seq; Type: SEQUENCE SET; Schema: public; Owner: idcore
--

SELECT pg_catalog.setval('public.civil_information_metadata_civil_information_id_seq', 1, false);


--
-- TOC entry 3051 (class 0 OID 0)
-- Dependencies: 211
-- Name: civil_status_id_seq; Type: SEQUENCE SET; Schema: public; Owner: idcore
--

SELECT pg_catalog.setval('public.civil_status_id_seq', 2, true);


--
-- TOC entry 3052 (class 0 OID 0)
-- Dependencies: 213
-- Name: country_metadata_country_id_seq; Type: SEQUENCE SET; Schema: public; Owner: idcore
--

SELECT pg_catalog.setval('public.country_metadata_country_id_seq', 1, false);


--
-- TOC entry 3053 (class 0 OID 0)
-- Dependencies: 215
-- Name: i18n_id_seq; Type: SEQUENCE SET; Schema: public; Owner: idcore
--

SELECT pg_catalog.setval('public.i18n_id_seq', 1, false);


--
-- TOC entry 3054 (class 0 OID 0)
-- Dependencies: 217
-- Name: id_application_id_application_id_seq; Type: SEQUENCE SET; Schema: public; Owner: idcore
--

SELECT pg_catalog.setval('public.id_application_id_application_id_seq', 1, true);


--
-- TOC entry 3055 (class 0 OID 0)
-- Dependencies: 219
-- Name: occupation_metadata_occupation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: idcore
--

SELECT pg_catalog.setval('public.occupation_metadata_occupation_id_seq', 1, false);


--
-- TOC entry 3056 (class 0 OID 0)
-- Dependencies: 221
-- Name: permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: idcore
--

SELECT pg_catalog.setval('public.permission_id_seq', 1, true);


--
-- TOC entry 3057 (class 0 OID 0)
-- Dependencies: 223
-- Name: person_person_id_seq; Type: SEQUENCE SET; Schema: public; Owner: idcore
--

SELECT pg_catalog.setval('public.person_person_id_seq', 6, true);


--
-- TOC entry 3058 (class 0 OID 0)
-- Dependencies: 225
-- Name: removal_removal_id_seq; Type: SEQUENCE SET; Schema: public; Owner: idcore
--

SELECT pg_catalog.setval('public.removal_removal_id_seq', 1, true);


--
-- TOC entry 3059 (class 0 OID 0)
-- Dependencies: 227
-- Name: role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: idcore
--

SELECT pg_catalog.setval('public.role_id_seq', 1, true);


--
-- TOC entry 3060 (class 0 OID 0)
-- Dependencies: 230
-- Name: status_metadata_status_id_seq; Type: SEQUENCE SET; Schema: public; Owner: idcore
--

SELECT pg_catalog.setval('public.status_metadata_status_id_seq', 1, false);


--
-- TOC entry 3061 (class 0 OID 0)
-- Dependencies: 232
-- Name: user_login_id_seq; Type: SEQUENCE SET; Schema: public; Owner: idcore
--

SELECT pg_catalog.setval('public.user_login_id_seq', 1, true);


--
-- TOC entry 2810 (class 2606 OID 35404)
-- Name: administrative_update_mtlb administrative_update_pkey; Type: CONSTRAINT; Schema: public; Owner: idcore
--

ALTER TABLE ONLY public.administrative_update_mtlb
    ADD CONSTRAINT administrative_update_pkey PRIMARY KEY (administrative_update_mtlb_id);


--
-- TOC entry 2812 (class 2606 OID 35408)
-- Name: mtlb_type_metadata application_type_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: idcore
--

ALTER TABLE ONLY public.mtlb_type_metadata
    ADD CONSTRAINT application_type_metadata_pkey PRIMARY KEY (mtlb_type_id);


--
-- TOC entry 2814 (class 2606 OID 35410)
-- Name: audit_log audit_log_pkey; Type: CONSTRAINT; Schema: public; Owner: idcore
--

ALTER TABLE ONLY public.audit_log
    ADD CONSTRAINT audit_log_pkey PRIMARY KEY (id);


--
-- TOC entry 2816 (class 2606 OID 35414)
-- Name: marital_status_metadata civil_information_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: idcore
--

ALTER TABLE ONLY public.marital_status_metadata
    ADD CONSTRAINT civil_information_metadata_pkey PRIMARY KEY (marital_status_id);


--
-- TOC entry 2818 (class 2606 OID 35434)
-- Name: civil_status_mtlb civil_status_pkey; Type: CONSTRAINT; Schema: public; Owner: idcore
--

ALTER TABLE ONLY public.civil_status_mtlb
    ADD CONSTRAINT civil_status_pkey PRIMARY KEY (civil_status_mtlb_id);


--
-- TOC entry 2820 (class 2606 OID 35438)
-- Name: country_metadata country_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: idcore
--

ALTER TABLE ONLY public.country_metadata
    ADD CONSTRAINT country_metadata_pkey PRIMARY KEY (country_id);


--
-- TOC entry 2822 (class 2606 OID 35450)
-- Name: i18n i18n_pkey; Type: CONSTRAINT; Schema: public; Owner: idcore
--

ALTER TABLE ONLY public.i18n
    ADD CONSTRAINT i18n_pkey PRIMARY KEY (id);


--
-- TOC entry 2824 (class 2606 OID 35470)
-- Name: id_mtlb id_mtlb_pkey; Type: CONSTRAINT; Schema: public; Owner: idcore
--

ALTER TABLE ONLY public.id_mtlb
    ADD CONSTRAINT id_mtlb_pkey PRIMARY KEY (id_mtlb_id);


--
-- TOC entry 2826 (class 2606 OID 35474)
-- Name: occupation_metadata occupation_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: idcore
--

ALTER TABLE ONLY public.occupation_metadata
    ADD CONSTRAINT occupation_metadata_pkey PRIMARY KEY (occupation_id);


--
-- TOC entry 2828 (class 2606 OID 35480)
-- Name: permission permission_pkey; Type: CONSTRAINT; Schema: public; Owner: idcore
--

ALTER TABLE ONLY public.permission
    ADD CONSTRAINT permission_pkey PRIMARY KEY (id);


--
-- TOC entry 2830 (class 2606 OID 35498)
-- Name: vital_records person_national_id_key; Type: CONSTRAINT; Schema: public; Owner: idcore
--

ALTER TABLE ONLY public.vital_records
    ADD CONSTRAINT person_national_id_key UNIQUE (national_id);


--
-- TOC entry 2832 (class 2606 OID 35500)
-- Name: vital_records person_pkey; Type: CONSTRAINT; Schema: public; Owner: idcore
--

ALTER TABLE ONLY public.vital_records
    ADD CONSTRAINT person_pkey PRIMARY KEY (vital_records_id);


--
-- TOC entry 2834 (class 2606 OID 35512)
-- Name: removal_mtlb removal_pkey; Type: CONSTRAINT; Schema: public; Owner: idcore
--

ALTER TABLE ONLY public.removal_mtlb
    ADD CONSTRAINT removal_pkey PRIMARY KEY (removal_mtlb_id);


--
-- TOC entry 2838 (class 2606 OID 35518)
-- Name: role_permission role_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: idcore
--

ALTER TABLE ONLY public.role_permission
    ADD CONSTRAINT role_permission_pkey PRIMARY KEY (role_id, permission_id);


--
-- TOC entry 2836 (class 2606 OID 35520)
-- Name: role role_pkey; Type: CONSTRAINT; Schema: public; Owner: idcore
--

ALTER TABLE ONLY public.role
    ADD CONSTRAINT role_pkey PRIMARY KEY (id);


--
-- TOC entry 2840 (class 2606 OID 35524)
-- Name: mtlb_status_metadata status_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: idcore
--

ALTER TABLE ONLY public.mtlb_status_metadata
    ADD CONSTRAINT status_metadata_pkey PRIMARY KEY (mtlb_status_id);


--
-- TOC entry 2842 (class 2606 OID 35534)
-- Name: user_login user_login_pkey; Type: CONSTRAINT; Schema: public; Owner: idcore
--

ALTER TABLE ONLY public.user_login
    ADD CONSTRAINT user_login_pkey PRIMARY KEY (id);


--
-- TOC entry 2846 (class 2606 OID 35536)
-- Name: user_login_role user_login_role_pkey; Type: CONSTRAINT; Schema: public; Owner: idcore
--

ALTER TABLE ONLY public.user_login_role
    ADD CONSTRAINT user_login_role_pkey PRIMARY KEY (user_login_id, role);


--
-- TOC entry 2844 (class 2606 OID 35540)
-- Name: user_login user_username_key; Type: CONSTRAINT; Schema: public; Owner: idcore
--

ALTER TABLE ONLY public.user_login
    ADD CONSTRAINT user_username_key UNIQUE (username);


--
-- TOC entry 2847 (class 2606 OID 35547)
-- Name: administrative_update_mtlb administrative_update_status_fkey; Type: FK CONSTRAINT; Schema: public; Owner: idcore
--

ALTER TABLE ONLY public.administrative_update_mtlb
    ADD CONSTRAINT administrative_update_status_fkey FOREIGN KEY (status) REFERENCES public.mtlb_status_metadata(mtlb_status_id);


--
-- TOC entry 2850 (class 2606 OID 35562)
-- Name: civil_status_mtlb civil_status_application_type_fkey; Type: FK CONSTRAINT; Schema: public; Owner: idcore
--

ALTER TABLE ONLY public.civil_status_mtlb
    ADD CONSTRAINT civil_status_application_type_fkey FOREIGN KEY (application_type) REFERENCES public.mtlb_type_metadata(mtlb_type_id);


--
-- TOC entry 2851 (class 2606 OID 35582)
-- Name: civil_status_mtlb civil_status_birthcountry_fkey; Type: FK CONSTRAINT; Schema: public; Owner: idcore
--

ALTER TABLE ONLY public.civil_status_mtlb
    ADD CONSTRAINT civil_status_birthcountry_fkey FOREIGN KEY (birthcountry) REFERENCES public.country_metadata(country_id);


--
-- TOC entry 2852 (class 2606 OID 35587)
-- Name: civil_status_mtlb civil_status_father_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: idcore
--

ALTER TABLE ONLY public.civil_status_mtlb
    ADD CONSTRAINT civil_status_father_id_fkey FOREIGN KEY (father_id) REFERENCES public.vital_records(vital_records_id);


--
-- TOC entry 2853 (class 2606 OID 35592)
-- Name: civil_status_mtlb civil_status_marital_status_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: idcore
--

ALTER TABLE ONLY public.civil_status_mtlb
    ADD CONSTRAINT civil_status_marital_status_id_fkey FOREIGN KEY (marital_status_id) REFERENCES public.marital_status_metadata(marital_status_id);


--
-- TOC entry 2854 (class 2606 OID 35597)
-- Name: civil_status_mtlb civil_status_mother_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: idcore
--

ALTER TABLE ONLY public.civil_status_mtlb
    ADD CONSTRAINT civil_status_mother_id_fkey FOREIGN KEY (modher_id) REFERENCES public.vital_records(vital_records_id);


--
-- TOC entry 2849 (class 2606 OID 35735)
-- Name: civil_status_mtlb civil_status_mtlb_primary_citizenship_fkey; Type: FK CONSTRAINT; Schema: public; Owner: idcore
--

ALTER TABLE ONLY public.civil_status_mtlb
    ADD CONSTRAINT civil_status_mtlb_primary_citizenship_fkey FOREIGN KEY (primary_citizenship) REFERENCES public.country_metadata(country_id);


--
-- TOC entry 2848 (class 2606 OID 35730)
-- Name: civil_status_mtlb civil_status_mtlb_residence_country_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: idcore
--

ALTER TABLE ONLY public.civil_status_mtlb
    ADD CONSTRAINT civil_status_mtlb_residence_country_id_fkey FOREIGN KEY (residence_country_id) REFERENCES public.country_metadata(country_id);


--
-- TOC entry 2855 (class 2606 OID 35602)
-- Name: civil_status_mtlb civil_status_occupation_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: idcore
--

ALTER TABLE ONLY public.civil_status_mtlb
    ADD CONSTRAINT civil_status_occupation_id_fkey FOREIGN KEY (occupation_id) REFERENCES public.occupation_metadata(occupation_id);


--
-- TOC entry 2856 (class 2606 OID 35607)
-- Name: civil_status_mtlb civil_status_status_fkey; Type: FK CONSTRAINT; Schema: public; Owner: idcore
--

ALTER TABLE ONLY public.civil_status_mtlb
    ADD CONSTRAINT civil_status_status_fkey FOREIGN KEY (status) REFERENCES public.mtlb_status_metadata(mtlb_status_id);


--
-- TOC entry 2857 (class 2606 OID 35627)
-- Name: id_mtlb id_mtlb_status_fkey; Type: FK CONSTRAINT; Schema: public; Owner: idcore
--

ALTER TABLE ONLY public.id_mtlb
    ADD CONSTRAINT id_mtlb_status_fkey FOREIGN KEY (status) REFERENCES public.mtlb_status_metadata(mtlb_status_id);


--
-- TOC entry 2865 (class 2606 OID 35632)
-- Name: role_permission permission_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: idcore
--

ALTER TABLE ONLY public.role_permission
    ADD CONSTRAINT permission_id_fkey FOREIGN KEY (permission_id) REFERENCES public.permission(id);


--
-- TOC entry 2864 (class 2606 OID 35642)
-- Name: removal_mtlb removal_status_fkey; Type: FK CONSTRAINT; Schema: public; Owner: idcore
--

ALTER TABLE ONLY public.removal_mtlb
    ADD CONSTRAINT removal_status_fkey FOREIGN KEY (status) REFERENCES public.mtlb_status_metadata(mtlb_status_id);


--
-- TOC entry 2867 (class 2606 OID 35647)
-- Name: user_login_role role_fkey; Type: FK CONSTRAINT; Schema: public; Owner: idcore
--

ALTER TABLE ONLY public.user_login_role
    ADD CONSTRAINT role_fkey FOREIGN KEY (role) REFERENCES public.role(id);


--
-- TOC entry 2866 (class 2606 OID 35652)
-- Name: role_permission role_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: idcore
--

ALTER TABLE ONLY public.role_permission
    ADD CONSTRAINT role_id_fkey FOREIGN KEY (role_id) REFERENCES public.role(id);


--
-- TOC entry 2868 (class 2606 OID 35667)
-- Name: user_login_role user_login_fkey; Type: FK CONSTRAINT; Schema: public; Owner: idcore
--

ALTER TABLE ONLY public.user_login_role
    ADD CONSTRAINT user_login_fkey FOREIGN KEY (user_login_id) REFERENCES public.user_login(id);


--
-- TOC entry 2859 (class 2606 OID 35687)
-- Name: vital_records vital_records_birthcountry_fkey; Type: FK CONSTRAINT; Schema: public; Owner: idcore
--

ALTER TABLE ONLY public.vital_records
    ADD CONSTRAINT vital_records_birthcountry_fkey FOREIGN KEY (birthcountry) REFERENCES public.country_metadata(country_id);


--
-- TOC entry 2858 (class 2606 OID 35725)
-- Name: vital_records vital_records_citizenship_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: idcore
--

ALTER TABLE ONLY public.vital_records
    ADD CONSTRAINT vital_records_citizenship_id_fkey FOREIGN KEY (citizenship_id) REFERENCES public.country_metadata(country_id);


--
-- TOC entry 2860 (class 2606 OID 35692)
-- Name: vital_records vital_records_father_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: idcore
--

ALTER TABLE ONLY public.vital_records
    ADD CONSTRAINT vital_records_father_id_fkey FOREIGN KEY (father_id) REFERENCES public.vital_records(vital_records_id);


--
-- TOC entry 2861 (class 2606 OID 35697)
-- Name: vital_records vital_records_marital_status_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: idcore
--

ALTER TABLE ONLY public.vital_records
    ADD CONSTRAINT vital_records_marital_status_id_fkey FOREIGN KEY (marital_status_id) REFERENCES public.marital_status_metadata(marital_status_id);


--
-- TOC entry 2862 (class 2606 OID 35702)
-- Name: vital_records vital_records_mother_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: idcore
--

ALTER TABLE ONLY public.vital_records
    ADD CONSTRAINT vital_records_mother_id_fkey FOREIGN KEY (mother_id) REFERENCES public.vital_records(vital_records_id);


--
-- TOC entry 2863 (class 2606 OID 35707)
-- Name: vital_records vital_records_occupation_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: idcore
--

ALTER TABLE ONLY public.vital_records
    ADD CONSTRAINT vital_records_occupation_id_fkey FOREIGN KEY (occupation_id) REFERENCES public.occupation_metadata(occupation_id);


-- Completed on 2020-08-21 14:40:48

--
-- PostgreSQL database dump complete
--

