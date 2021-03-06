PGDMP         %                x            LECHO    9.6.12    9.6.12 E    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            �           1262    25803    LECHO    DATABASE     �   CREATE DATABASE "LECHO" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE "LECHO";
             postgres    false            �           0    0    DATABASE "LECHO"    COMMENT     F   COMMENT ON DATABASE "LECHO" IS 'Database for LECHO web application.';
                  postgres    false    2213                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12387    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    25804    choices    TABLE     _   CREATE TABLE public.choices (
    user_id integer NOT NULL,
    subject_id integer NOT NULL
);
    DROP TABLE public.choices;
       public         postgres    false    3            �            1259    25807 	   faculties    TABLE       CREATE TABLE public.faculties (
    faculty_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text NOT NULL,
    address character varying(255) NOT NULL,
    map_location_x double precision NOT NULL,
    map_location_y double precision NOT NULL
);
    DROP TABLE public.faculties;
       public         postgres    false    3            �            1259    25813    faculties_faculty_id_seq    SEQUENCE     �   CREATE SEQUENCE public.faculties_faculty_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.faculties_faculty_id_seq;
       public       postgres    false    3    186            �           0    0    faculties_faculty_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.faculties_faculty_id_seq OWNED BY public.faculties.faculty_id;
            public       postgres    false    187            �            1259    25815 
   favourites    TABLE     b   CREATE TABLE public.favourites (
    user_id integer NOT NULL,
    subject_id integer NOT NULL
);
    DROP TABLE public.favourites;
       public         postgres    false    3            �            1259    25818 	   lecturers    TABLE     �   CREATE TABLE public.lecturers (
    user_id integer NOT NULL,
    faculty integer NOT NULL,
    profile_link character varying(2049) NOT NULL
);
    DROP TABLE public.lecturers;
       public         postgres    false    3            �            1259    25824    period    TABLE     �   CREATE TABLE public.period (
    period_id integer NOT NULL,
    period_begining timestamp without time zone NOT NULL,
    period_end timestamp without time zone NOT NULL
);
    DROP TABLE public.period;
       public         postgres    false    3            �            1259    25827    period_period_id_seq    SEQUENCE     }   CREATE SEQUENCE public.period_period_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.period_period_id_seq;
       public       postgres    false    3    190            �           0    0    period_period_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.period_period_id_seq OWNED BY public.period.period_id;
            public       postgres    false    191            �            1259    25829    students    TABLE     �   CREATE TABLE public.students (
    user_id integer NOT NULL,
    faculty integer NOT NULL,
    grade_book_id character varying(15),
    course integer
);
    DROP TABLE public.students;
       public         postgres    false    3            �            1259    25832    subjects    TABLE     0  CREATE TABLE public.subjects (
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
       public         postgres    false    3            �            1259    25838    subjects_subject_id_seq    SEQUENCE     �   CREATE SEQUENCE public.subjects_subject_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.subjects_subject_id_seq;
       public       postgres    false    193    3            �           0    0    subjects_subject_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.subjects_subject_id_seq OWNED BY public.subjects.subject_id;
            public       postgres    false    194            �            1259    25840    users    TABLE     3  CREATE TABLE public.users (
    user_id integer NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    middle_name character varying(50) NOT NULL,
    role integer NOT NULL,
    login character varying(255) NOT NULL,
    password character varying(50)
);
    DROP TABLE public.users;
       public         postgres    false    3            �            1259    25843    users_user_id_seq    SEQUENCE     z   CREATE SEQUENCE public.users_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.users_user_id_seq;
       public       postgres    false    3    195            �           0    0    users_user_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;
            public       postgres    false    196            �           2604    25845    faculties faculty_id    DEFAULT     |   ALTER TABLE ONLY public.faculties ALTER COLUMN faculty_id SET DEFAULT nextval('public.faculties_faculty_id_seq'::regclass);
 C   ALTER TABLE public.faculties ALTER COLUMN faculty_id DROP DEFAULT;
       public       postgres    false    187    186            �           2604    25846    period period_id    DEFAULT     t   ALTER TABLE ONLY public.period ALTER COLUMN period_id SET DEFAULT nextval('public.period_period_id_seq'::regclass);
 ?   ALTER TABLE public.period ALTER COLUMN period_id DROP DEFAULT;
       public       postgres    false    191    190            �           2604    25847    subjects subject_id    DEFAULT     z   ALTER TABLE ONLY public.subjects ALTER COLUMN subject_id SET DEFAULT nextval('public.subjects_subject_id_seq'::regclass);
 B   ALTER TABLE public.subjects ALTER COLUMN subject_id DROP DEFAULT;
       public       postgres    false    194    193            �           2604    25848    users user_id    DEFAULT     n   ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);
 <   ALTER TABLE public.users ALTER COLUMN user_id DROP DEFAULT;
       public       postgres    false    196    195            �          0    25804    choices 
   TABLE DATA               6   COPY public.choices (user_id, subject_id) FROM stdin;
    public       postgres    false    185   �N       �          0    25807 	   faculties 
   TABLE DATA               k   COPY public.faculties (faculty_id, name, description, address, map_location_x, map_location_y) FROM stdin;
    public       postgres    false    186   �N       �           0    0    faculties_faculty_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.faculties_faculty_id_seq', 1, false);
            public       postgres    false    187            �          0    25815 
   favourites 
   TABLE DATA               9   COPY public.favourites (user_id, subject_id) FROM stdin;
    public       postgres    false    188   �N       �          0    25818 	   lecturers 
   TABLE DATA               C   COPY public.lecturers (user_id, faculty, profile_link) FROM stdin;
    public       postgres    false    189   O       �          0    25824    period 
   TABLE DATA               H   COPY public.period (period_id, period_begining, period_end) FROM stdin;
    public       postgres    false    190   7O       �           0    0    period_period_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.period_period_id_seq', 1, false);
            public       postgres    false    191            �          0    25829    students 
   TABLE DATA               K   COPY public.students (user_id, faculty, grade_book_id, course) FROM stdin;
    public       postgres    false    192   TO       �          0    25832    subjects 
   TABLE DATA               �   COPY public.subjects (subject_id, name, description, faculty_id, lecturer_id, number_of_students, max_number_of_students, semester) FROM stdin;
    public       postgres    false    193   qO       �           0    0    subjects_subject_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.subjects_subject_id_seq', 1, false);
            public       postgres    false    194            �          0    25840    users 
   TABLE DATA               c   COPY public.users (user_id, first_name, last_name, middle_name, role, login, password) FROM stdin;
    public       postgres    false    195   �O       �           0    0    users_user_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.users_user_id_seq', 1, true);
            public       postgres    false    196            �           2606    25850    choices choises_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.choices
    ADD CONSTRAINT choises_pkey PRIMARY KEY (user_id, subject_id);
 >   ALTER TABLE ONLY public.choices DROP CONSTRAINT choises_pkey;
       public         postgres    false    185    185    185            �           2606    25852    faculties faculties_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.faculties
    ADD CONSTRAINT faculties_pkey PRIMARY KEY (faculty_id);
 B   ALTER TABLE ONLY public.faculties DROP CONSTRAINT faculties_pkey;
       public         postgres    false    186    186                       2606    25854    favourites favourites_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.favourites
    ADD CONSTRAINT favourites_pkey PRIMARY KEY (user_id, subject_id);
 D   ALTER TABLE ONLY public.favourites DROP CONSTRAINT favourites_pkey;
       public         postgres    false    188    188    188                       2606    25856    lecturers lecturer_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.lecturers
    ADD CONSTRAINT lecturer_pkey PRIMARY KEY (user_id);
 A   ALTER TABLE ONLY public.lecturers DROP CONSTRAINT lecturer_pkey;
       public         postgres    false    189    189                       2606    25858    period period_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.period
    ADD CONSTRAINT period_pkey PRIMARY KEY (period_id);
 <   ALTER TABLE ONLY public.period DROP CONSTRAINT period_pkey;
       public         postgres    false    190    190                       2606    25860    students student_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.students
    ADD CONSTRAINT student_pkey PRIMARY KEY (user_id);
 ?   ALTER TABLE ONLY public.students DROP CONSTRAINT student_pkey;
       public         postgres    false    192    192                       2606    25862    subjects subjects_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.subjects
    ADD CONSTRAINT subjects_pkey PRIMARY KEY (subject_id);
 @   ALTER TABLE ONLY public.subjects DROP CONSTRAINT subjects_pkey;
       public         postgres    false    193    193                       2606    25864    users users_login_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_login_key UNIQUE (login);
 ?   ALTER TABLE ONLY public.users DROP CONSTRAINT users_login_key;
       public         postgres    false    195    195                       2606    25866    users users_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public         postgres    false    195    195            �           1259    25867    fki_choises_student_user_id    INDEX     R   CREATE INDEX fki_choises_student_user_id ON public.choices USING btree (user_id);
 /   DROP INDEX public.fki_choises_student_user_id;
       public         postgres    false    185            �           1259    25868    fki_choises_subject_subject_id    INDEX     X   CREATE INDEX fki_choises_subject_subject_id ON public.choices USING btree (subject_id);
 2   DROP INDEX public.fki_choises_subject_subject_id;
       public         postgres    false    185                       1259    25869    fki_faculty_id_fkey    INDEX     L   CREATE INDEX fki_faculty_id_fkey ON public.lecturers USING btree (faculty);
 '   DROP INDEX public.fki_faculty_id_fkey;
       public         postgres    false    189                       1259    25870    fki_favourites_student_user_id    INDEX     X   CREATE INDEX fki_favourites_student_user_id ON public.favourites USING btree (user_id);
 2   DROP INDEX public.fki_favourites_student_user_id;
       public         postgres    false    188                       1259    25871 !   fki_favourites_subject_subject_id    INDEX     ^   CREATE INDEX fki_favourites_subject_subject_id ON public.favourites USING btree (subject_id);
 5   DROP INDEX public.fki_favourites_subject_subject_id;
       public         postgres    false    188            	           1259    25872 #   fki_student_faculty_faculty_id_fkey    INDEX     [   CREATE INDEX fki_student_faculty_faculty_id_fkey ON public.students USING btree (faculty);
 7   DROP INDEX public.fki_student_faculty_faculty_id_fkey;
       public         postgres    false    192                       1259    25873    fki_subject_faculty_faculty_id    INDEX     Y   CREATE INDEX fki_subject_faculty_faculty_id ON public.subjects USING btree (faculty_id);
 2   DROP INDEX public.fki_subject_faculty_faculty_id;
       public         postgres    false    193                       1259    25874    fki_subject_lecturer_user_id    INDEX     X   CREATE INDEX fki_subject_lecturer_user_id ON public.subjects USING btree (lecturer_id);
 0   DROP INDEX public.fki_subject_lecturer_user_id;
       public         postgres    false    193            
           1259    25875    fki_user_id_fkey    INDEX     H   CREATE INDEX fki_user_id_fkey ON public.students USING btree (user_id);
 $   DROP INDEX public.fki_user_id_fkey;
       public         postgres    false    192                       2606    25876    choices choises_student_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.choices
    ADD CONSTRAINT choises_student_user_id FOREIGN KEY (user_id) REFERENCES public.students(user_id);
 I   ALTER TABLE ONLY public.choices DROP CONSTRAINT choises_student_user_id;
       public       postgres    false    192    2060    185                       2606    25881 "   choices choises_subject_subject_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.choices
    ADD CONSTRAINT choises_subject_subject_id FOREIGN KEY (subject_id) REFERENCES public.subjects(subject_id);
 L   ALTER TABLE ONLY public.choices DROP CONSTRAINT choises_subject_subject_id;
       public       postgres    false    2064    193    185                       2606    25886    students faculty_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.students
    ADD CONSTRAINT faculty_id_fkey FOREIGN KEY (faculty) REFERENCES public.faculties(faculty_id);
 B   ALTER TABLE ONLY public.students DROP CONSTRAINT faculty_id_fkey;
       public       postgres    false    192    2047    186                       2606    25891 %   favourites favourites_student_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.favourites
    ADD CONSTRAINT favourites_student_user_id FOREIGN KEY (user_id) REFERENCES public.students(user_id);
 O   ALTER TABLE ONLY public.favourites DROP CONSTRAINT favourites_student_user_id;
       public       postgres    false    188    2060    192                       2606    25896 (   favourites favourites_subject_subject_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.favourites
    ADD CONSTRAINT favourites_subject_subject_id FOREIGN KEY (subject_id) REFERENCES public.subjects(subject_id);
 R   ALTER TABLE ONLY public.favourites DROP CONSTRAINT favourites_subject_subject_id;
       public       postgres    false    188    2064    193                       2606    25901 )   lecturers lecturer_faulty_faculty_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.lecturers
    ADD CONSTRAINT lecturer_faulty_faculty_id_fkey FOREIGN KEY (faculty) REFERENCES public.faculties(faculty_id);
 S   ALTER TABLE ONLY public.lecturers DROP CONSTRAINT lecturer_faulty_faculty_id_fkey;
       public       postgres    false    189    2047    186                       2606    25906 $   lecturers lecturer_user_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.lecturers
    ADD CONSTRAINT lecturer_user_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);
 N   ALTER TABLE ONLY public.lecturers DROP CONSTRAINT lecturer_user_user_id_fkey;
       public       postgres    false    189    2068    195                       2606    25911 "   students student_user_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.students
    ADD CONSTRAINT student_user_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);
 L   ALTER TABLE ONLY public.students DROP CONSTRAINT student_user_user_id_fkey;
       public       postgres    false    192    195    2068                       2606    25916 #   subjects subject_faculty_faculty_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.subjects
    ADD CONSTRAINT subject_faculty_faculty_id FOREIGN KEY (faculty_id) REFERENCES public.faculties(faculty_id);
 M   ALTER TABLE ONLY public.subjects DROP CONSTRAINT subject_faculty_faculty_id;
       public       postgres    false    186    193    2047                       2606    25921 !   subjects subject_lecturer_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.subjects
    ADD CONSTRAINT subject_lecturer_user_id FOREIGN KEY (lecturer_id) REFERENCES public.lecturers(user_id);
 K   ALTER TABLE ONLY public.subjects DROP CONSTRAINT subject_lecturer_user_id;
       public       postgres    false    2054    193    189            �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   )   x�3��T���N�,��,���LK�4�tL��̃�\1z\\\ �$
�     