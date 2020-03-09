PGDMP     ;            	        x            LECHO    9.6.15    9.6.15 E    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            �           1262    25028    LECHO    DATABASE     �   CREATE DATABASE "LECHO" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Ukrainian_Ukraine.1251' LC_CTYPE = 'Ukrainian_Ukraine.1251';
    DROP DATABASE "LECHO";
             postgres    false            �           0    0    DATABASE "LECHO"    COMMENT     F   COMMENT ON DATABASE "LECHO" IS 'Database for LECHO web application.';
                  postgres    false    2213                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12387    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    25070    choises    TABLE     _   CREATE TABLE public.choises (
    user_id integer NOT NULL,
    subject_id integer NOT NULL
);
    DROP TABLE public.choises;
       public         postgres    false    3            �            1259    25052 	   faculties    TABLE       CREATE TABLE public.faculties (
    faculty_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text NOT NULL,
    adress character varying(255) NOT NULL,
    map_location_x double precision NOT NULL,
    map_location_y double precision NOT NULL
);
    DROP TABLE public.faculties;
       public         postgres    false    3            �            1259    25050    faculties_faculty_id_seq    SEQUENCE     �   CREATE SEQUENCE public.faculties_faculty_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.faculties_faculty_id_seq;
       public       postgres    false    3    190            �           0    0    faculties_faculty_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.faculties_faculty_id_seq OWNED BY public.faculties.faculty_id;
            public       postgres    false    189            �            1259    25073 
   favourites    TABLE     b   CREATE TABLE public.favourites (
    user_id integer NOT NULL,
    subject_id integer NOT NULL
);
    DROP TABLE public.favourites;
       public         postgres    false    3            �            1259    25064    lecturer    TABLE     �   CREATE TABLE public.lecturer (
    user_id integer NOT NULL,
    faculty integer NOT NULL,
    profile_link character varying(2049) NOT NULL
);
    DROP TABLE public.lecturer;
       public         postgres    false    3            �            1259    25078    period    TABLE     �   CREATE TABLE public.period (
    period_id integer NOT NULL,
    period_begining timestamp without time zone NOT NULL,
    period_end timestamp without time zone NOT NULL
);
    DROP TABLE public.period;
       public         postgres    false    3            �            1259    25076    period_period_id_seq    SEQUENCE     }   CREATE SEQUENCE public.period_period_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.period_period_id_seq;
       public       postgres    false    3    196            �           0    0    period_period_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.period_period_id_seq OWNED BY public.period.period_id;
            public       postgres    false    195            �            1259    25061    student    TABLE     �   CREATE TABLE public.student (
    user_id integer NOT NULL,
    faculty integer NOT NULL,
    grade_book_id character varying(15),
    course integer
);
    DROP TABLE public.student;
       public         postgres    false    3            �            1259    25041    subjects    TABLE     0  CREATE TABLE public.subjects (
    subject_id integer NOT NULL,
    name character varying(70) NOT NULL,
    description text NOT NULL,
    faculty_id integer NOT NULL,
    lecturer_id integer NOT NULL,
    number_of_students integer,
    max_number_of_students integer NOT NULL,
    semester integer
);
    DROP TABLE public.subjects;
       public         postgres    false    3            �            1259    25039    subjects_subject_id_seq    SEQUENCE     �   CREATE SEQUENCE public.subjects_subject_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.subjects_subject_id_seq;
       public       postgres    false    188    3            �           0    0    subjects_subject_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.subjects_subject_id_seq OWNED BY public.subjects.subject_id;
            public       postgres    false    187            �            1259    25031    users    TABLE     2  CREATE TABLE public.users (
    user_id integer NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    midle_name character varying(50) NOT NULL,
    role integer NOT NULL,
    login character varying(255) NOT NULL,
    password character varying(50)
);
    DROP TABLE public.users;
       public         postgres    false    3            �            1259    25029    users_user_id_seq    SEQUENCE     z   CREATE SEQUENCE public.users_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.users_user_id_seq;
       public       postgres    false    186    3            �           0    0    users_user_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;
            public       postgres    false    185            �           2604    25055    faculties faculty_id    DEFAULT     |   ALTER TABLE ONLY public.faculties ALTER COLUMN faculty_id SET DEFAULT nextval('public.faculties_faculty_id_seq'::regclass);
 C   ALTER TABLE public.faculties ALTER COLUMN faculty_id DROP DEFAULT;
       public       postgres    false    190    189    190            �           2604    25081    period period_id    DEFAULT     t   ALTER TABLE ONLY public.period ALTER COLUMN period_id SET DEFAULT nextval('public.period_period_id_seq'::regclass);
 ?   ALTER TABLE public.period ALTER COLUMN period_id DROP DEFAULT;
       public       postgres    false    196    195    196            �           2604    25044    subjects subject_id    DEFAULT     z   ALTER TABLE ONLY public.subjects ALTER COLUMN subject_id SET DEFAULT nextval('public.subjects_subject_id_seq'::regclass);
 B   ALTER TABLE public.subjects ALTER COLUMN subject_id DROP DEFAULT;
       public       postgres    false    188    187    188            �           2604    25034    users user_id    DEFAULT     n   ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);
 <   ALTER TABLE public.users ALTER COLUMN user_id DROP DEFAULT;
       public       postgres    false    185    186    186            �          0    25070    choises 
   TABLE DATA               6   COPY public.choises (user_id, subject_id) FROM stdin;
    public       postgres    false    193   �N       �          0    25052 	   faculties 
   TABLE DATA               j   COPY public.faculties (faculty_id, name, description, adress, map_location_x, map_location_y) FROM stdin;
    public       postgres    false    190   �N       �           0    0    faculties_faculty_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.faculties_faculty_id_seq', 1, false);
            public       postgres    false    189            �          0    25073 
   favourites 
   TABLE DATA               9   COPY public.favourites (user_id, subject_id) FROM stdin;
    public       postgres    false    194   �N       �          0    25064    lecturer 
   TABLE DATA               B   COPY public.lecturer (user_id, faculty, profile_link) FROM stdin;
    public       postgres    false    192   O       �          0    25078    period 
   TABLE DATA               H   COPY public.period (period_id, period_begining, period_end) FROM stdin;
    public       postgres    false    196   )O       �           0    0    period_period_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.period_period_id_seq', 1, false);
            public       postgres    false    195            �          0    25061    student 
   TABLE DATA               J   COPY public.student (user_id, faculty, grade_book_id, course) FROM stdin;
    public       postgres    false    191   FO       �          0    25041    subjects 
   TABLE DATA               �   COPY public.subjects (subject_id, name, description, faculty_id, lecturer_id, number_of_students, max_number_of_students, semester) FROM stdin;
    public       postgres    false    188   cO       �           0    0    subjects_subject_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.subjects_subject_id_seq', 1, false);
            public       postgres    false    187            �          0    25031    users 
   TABLE DATA               b   COPY public.users (user_id, first_name, last_name, midle_name, role, login, password) FROM stdin;
    public       postgres    false    186   �O       �           0    0    users_user_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.users_user_id_seq', 1, true);
            public       postgres    false    185                       2606    25155    choises choises_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.choises
    ADD CONSTRAINT choises_pkey PRIMARY KEY (user_id, subject_id);
 >   ALTER TABLE ONLY public.choises DROP CONSTRAINT choises_pkey;
       public         postgres    false    193    193    193                       2606    25060    faculties faculties_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.faculties
    ADD CONSTRAINT faculties_pkey PRIMARY KEY (faculty_id);
 B   ALTER TABLE ONLY public.faculties DROP CONSTRAINT faculties_pkey;
       public         postgres    false    190    190                       2606    25153    favourites favourites_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.favourites
    ADD CONSTRAINT favourites_pkey PRIMARY KEY (user_id, subject_id);
 D   ALTER TABLE ONLY public.favourites DROP CONSTRAINT favourites_pkey;
       public         postgres    false    194    194    194            
           2606    25085    lecturer lecturer_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.lecturer
    ADD CONSTRAINT lecturer_pkey PRIMARY KEY (user_id);
 @   ALTER TABLE ONLY public.lecturer DROP CONSTRAINT lecturer_pkey;
       public         postgres    false    192    192                       2606    25083    period period_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.period
    ADD CONSTRAINT period_pkey PRIMARY KEY (period_id);
 <   ALTER TABLE ONLY public.period DROP CONSTRAINT period_pkey;
       public         postgres    false    196    196                       2606    25127    student student_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.student
    ADD CONSTRAINT student_pkey PRIMARY KEY (user_id);
 >   ALTER TABLE ONLY public.student DROP CONSTRAINT student_pkey;
       public         postgres    false    191    191                       2606    25049    subjects subjects_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.subjects
    ADD CONSTRAINT subjects_pkey PRIMARY KEY (subject_id);
 @   ALTER TABLE ONLY public.subjects DROP CONSTRAINT subjects_pkey;
       public         postgres    false    188    188            �           2606    25038    users users_login_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_login_key UNIQUE (login);
 ?   ALTER TABLE ONLY public.users DROP CONSTRAINT users_login_key;
       public         postgres    false    186    186            �           2606    25036    users users_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public         postgres    false    186    186                       1259    25133    fki_choises_student_user_id    INDEX     R   CREATE INDEX fki_choises_student_user_id ON public.choises USING btree (user_id);
 /   DROP INDEX public.fki_choises_student_user_id;
       public         postgres    false    193                       1259    25139    fki_choises_subject_subject_id    INDEX     X   CREATE INDEX fki_choises_subject_subject_id ON public.choises USING btree (subject_id);
 2   DROP INDEX public.fki_choises_subject_subject_id;
       public         postgres    false    193                       1259    25096    fki_faculty_id_fkey    INDEX     K   CREATE INDEX fki_faculty_id_fkey ON public.lecturer USING btree (faculty);
 '   DROP INDEX public.fki_faculty_id_fkey;
       public         postgres    false    192                       1259    25145    fki_favourites_student_user_id    INDEX     X   CREATE INDEX fki_favourites_student_user_id ON public.favourites USING btree (user_id);
 2   DROP INDEX public.fki_favourites_student_user_id;
       public         postgres    false    194                       1259    25151 !   fki_favourites_subject_subject_id    INDEX     ^   CREATE INDEX fki_favourites_subject_subject_id ON public.favourites USING btree (subject_id);
 5   DROP INDEX public.fki_favourites_subject_subject_id;
       public         postgres    false    194                       1259    25113 #   fki_student_faculty_faculty_id_fkey    INDEX     Z   CREATE INDEX fki_student_faculty_faculty_id_fkey ON public.student USING btree (faculty);
 7   DROP INDEX public.fki_student_faculty_faculty_id_fkey;
       public         postgres    false    191            �           1259    25119    fki_subject_faculty_faculty_id    INDEX     Y   CREATE INDEX fki_subject_faculty_faculty_id ON public.subjects USING btree (faculty_id);
 2   DROP INDEX public.fki_subject_faculty_faculty_id;
       public         postgres    false    188            �           1259    25125    fki_subject_lecturer_user_id    INDEX     X   CREATE INDEX fki_subject_lecturer_user_id ON public.subjects USING btree (lecturer_id);
 0   DROP INDEX public.fki_subject_lecturer_user_id;
       public         postgres    false    188                       1259    25102    fki_user_id_fkey    INDEX     G   CREATE INDEX fki_user_id_fkey ON public.student USING btree (user_id);
 $   DROP INDEX public.fki_user_id_fkey;
       public         postgres    false    191                       2606    25128    choises choises_student_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.choises
    ADD CONSTRAINT choises_student_user_id FOREIGN KEY (user_id) REFERENCES public.student(user_id);
 I   ALTER TABLE ONLY public.choises DROP CONSTRAINT choises_student_user_id;
       public       postgres    false    191    2055    193                       2606    25134 "   choises choises_subject_subject_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.choises
    ADD CONSTRAINT choises_subject_subject_id FOREIGN KEY (subject_id) REFERENCES public.subjects(subject_id);
 L   ALTER TABLE ONLY public.choises DROP CONSTRAINT choises_subject_subject_id;
       public       postgres    false    188    2049    193                       2606    25103    student faculty_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.student
    ADD CONSTRAINT faculty_id_fkey FOREIGN KEY (faculty) REFERENCES public.faculties(faculty_id);
 A   ALTER TABLE ONLY public.student DROP CONSTRAINT faculty_id_fkey;
       public       postgres    false    191    190    2051                       2606    25140 %   favourites favourites_student_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.favourites
    ADD CONSTRAINT favourites_student_user_id FOREIGN KEY (user_id) REFERENCES public.student(user_id);
 O   ALTER TABLE ONLY public.favourites DROP CONSTRAINT favourites_student_user_id;
       public       postgres    false    191    194    2055                       2606    25146 (   favourites favourites_subject_subject_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.favourites
    ADD CONSTRAINT favourites_subject_subject_id FOREIGN KEY (subject_id) REFERENCES public.subjects(subject_id);
 R   ALTER TABLE ONLY public.favourites DROP CONSTRAINT favourites_subject_subject_id;
       public       postgres    false    188    194    2049                       2606    25091 (   lecturer lecturer_faulty_faculty_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.lecturer
    ADD CONSTRAINT lecturer_faulty_faculty_id_fkey FOREIGN KEY (faculty) REFERENCES public.faculties(faculty_id);
 R   ALTER TABLE ONLY public.lecturer DROP CONSTRAINT lecturer_faulty_faculty_id_fkey;
       public       postgres    false    2051    192    190                       2606    25086 #   lecturer lecturer_user_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.lecturer
    ADD CONSTRAINT lecturer_user_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);
 M   ALTER TABLE ONLY public.lecturer DROP CONSTRAINT lecturer_user_user_id_fkey;
       public       postgres    false    2045    186    192                       2606    25097 !   student student_user_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.student
    ADD CONSTRAINT student_user_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);
 K   ALTER TABLE ONLY public.student DROP CONSTRAINT student_user_user_id_fkey;
       public       postgres    false    191    186    2045                       2606    25114 #   subjects subject_faculty_faculty_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.subjects
    ADD CONSTRAINT subject_faculty_faculty_id FOREIGN KEY (faculty_id) REFERENCES public.faculties(faculty_id);
 M   ALTER TABLE ONLY public.subjects DROP CONSTRAINT subject_faculty_faculty_id;
       public       postgres    false    190    188    2051                       2606    25120 !   subjects subject_lecturer_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.subjects
    ADD CONSTRAINT subject_lecturer_user_id FOREIGN KEY (lecturer_id) REFERENCES public.lecturer(user_id);
 K   ALTER TABLE ONLY public.subjects DROP CONSTRAINT subject_lecturer_user_id;
       public       postgres    false    192    188    2058            �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   )   x�3��T���N�,��,���LK�4�tL��̃�\1z\\\ �$
�     