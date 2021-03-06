PGDMP                         x            LECHO    11.7    11.7 @    R           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            S           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            T           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            U           1262    16393    LECHO    DATABASE     �   CREATE DATABASE "LECHO" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Ukrainian_Ukraine.1251' LC_CTYPE = 'Ukrainian_Ukraine.1251';
    DROP DATABASE "LECHO";
             postgres    false            �            1259    16394    choices    TABLE     _   CREATE TABLE public.choices (
    user_id integer NOT NULL,
    subject_id integer NOT NULL
);
    DROP TABLE public.choices;
       public         postgres    false            �            1259    16397 	   faculties    TABLE       CREATE TABLE public.faculties (
    faculty_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text NOT NULL,
    address character varying(255) NOT NULL,
    map_location_x double precision NOT NULL,
    map_location_y double precision NOT NULL
);
    DROP TABLE public.faculties;
       public         postgres    false            �            1259    16403    faculties_faculty_id_seq    SEQUENCE     �   CREATE SEQUENCE public.faculties_faculty_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.faculties_faculty_id_seq;
       public       postgres    false    197            V           0    0    faculties_faculty_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.faculties_faculty_id_seq OWNED BY public.faculties.faculty_id;
            public       postgres    false    198            �            1259    16405 
   favourites    TABLE     b   CREATE TABLE public.favourites (
    user_id integer NOT NULL,
    subject_id integer NOT NULL
);
    DROP TABLE public.favourites;
       public         postgres    false            �            1259    16408 	   lecturers    TABLE     �   CREATE TABLE public.lecturers (
    user_id integer NOT NULL,
    faculty integer NOT NULL,
    profile_link character varying(2049) NOT NULL
);
    DROP TABLE public.lecturers;
       public         postgres    false            �            1259    16414    period    TABLE     �   CREATE TABLE public.period (
    period_id integer NOT NULL,
    period_begining timestamp without time zone NOT NULL,
    period_end timestamp without time zone NOT NULL
);
    DROP TABLE public.period;
       public         postgres    false            �            1259    16417    period_period_id_seq    SEQUENCE     }   CREATE SEQUENCE public.period_period_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.period_period_id_seq;
       public       postgres    false    201            W           0    0    period_period_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.period_period_id_seq OWNED BY public.period.period_id;
            public       postgres    false    202            �            1259    16419    students    TABLE     �   CREATE TABLE public.students (
    user_id integer NOT NULL,
    faculty integer NOT NULL,
    grade_book_id character varying(15),
    course integer
);
    DROP TABLE public.students;
       public         postgres    false            �            1259    16422    subjects    TABLE     0  CREATE TABLE public.subjects (
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
       public         postgres    false            �            1259    16428    subjects_subject_id_seq    SEQUENCE     �   CREATE SEQUENCE public.subjects_subject_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.subjects_subject_id_seq;
       public       postgres    false    204            X           0    0    subjects_subject_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.subjects_subject_id_seq OWNED BY public.subjects.subject_id;
            public       postgres    false    205            �            1259    16430    users    TABLE     3  CREATE TABLE public.users (
    user_id integer NOT NULL,
    last_name character varying(50) NOT NULL,
    first_name character varying(50) NOT NULL,
    middle_name character varying(50) NOT NULL,
    role integer NOT NULL,
    login character varying(255) NOT NULL,
    password character varying(50)
);
    DROP TABLE public.users;
       public         postgres    false            �            1259    16433    users_user_id_seq    SEQUENCE     z   CREATE SEQUENCE public.users_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.users_user_id_seq;
       public       postgres    false    206            Y           0    0    users_user_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;
            public       postgres    false    207            �
           2604    16435    faculties faculty_id    DEFAULT     |   ALTER TABLE ONLY public.faculties ALTER COLUMN faculty_id SET DEFAULT nextval('public.faculties_faculty_id_seq'::regclass);
 C   ALTER TABLE public.faculties ALTER COLUMN faculty_id DROP DEFAULT;
       public       postgres    false    198    197            �
           2604    16436    period period_id    DEFAULT     t   ALTER TABLE ONLY public.period ALTER COLUMN period_id SET DEFAULT nextval('public.period_period_id_seq'::regclass);
 ?   ALTER TABLE public.period ALTER COLUMN period_id DROP DEFAULT;
       public       postgres    false    202    201            �
           2604    16437    subjects subject_id    DEFAULT     z   ALTER TABLE ONLY public.subjects ALTER COLUMN subject_id SET DEFAULT nextval('public.subjects_subject_id_seq'::regclass);
 B   ALTER TABLE public.subjects ALTER COLUMN subject_id DROP DEFAULT;
       public       postgres    false    205    204            �
           2604    16438    users user_id    DEFAULT     n   ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);
 <   ALTER TABLE public.users ALTER COLUMN user_id DROP DEFAULT;
       public       postgres    false    207    206            D          0    16394    choices 
   TABLE DATA               6   COPY public.choices (user_id, subject_id) FROM stdin;
    public       postgres    false    196   �J       E          0    16397 	   faculties 
   TABLE DATA               k   COPY public.faculties (faculty_id, name, description, address, map_location_x, map_location_y) FROM stdin;
    public       postgres    false    197   �J       G          0    16405 
   favourites 
   TABLE DATA               9   COPY public.favourites (user_id, subject_id) FROM stdin;
    public       postgres    false    199   �N       H          0    16408 	   lecturers 
   TABLE DATA               C   COPY public.lecturers (user_id, faculty, profile_link) FROM stdin;
    public       postgres    false    200   �N       I          0    16414    period 
   TABLE DATA               H   COPY public.period (period_id, period_begining, period_end) FROM stdin;
    public       postgres    false    201   �X       K          0    16419    students 
   TABLE DATA               K   COPY public.students (user_id, faculty, grade_book_id, course) FROM stdin;
    public       postgres    false    203   �X       L          0    16422    subjects 
   TABLE DATA               �   COPY public.subjects (subject_id, name, description, faculty_id, lecturer_id, number_of_students, max_number_of_students, semester) FROM stdin;
    public       postgres    false    204   #Z       N          0    16430    users 
   TABLE DATA               c   COPY public.users (user_id, last_name, first_name, middle_name, role, login, password) FROM stdin;
    public       postgres    false    206   Rf       Z           0    0    faculties_faculty_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.faculties_faculty_id_seq', 19, true);
            public       postgres    false    198            [           0    0    period_period_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.period_period_id_seq', 1, false);
            public       postgres    false    202            \           0    0    subjects_subject_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.subjects_subject_id_seq', 128, true);
            public       postgres    false    205            ]           0    0    users_user_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.users_user_id_seq', 201, true);
            public       postgres    false    207            �
           2606    16440    choices choises_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.choices
    ADD CONSTRAINT choises_pkey PRIMARY KEY (user_id, subject_id);
 >   ALTER TABLE ONLY public.choices DROP CONSTRAINT choises_pkey;
       public         postgres    false    196    196            �
           2606    16442    faculties faculties_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.faculties
    ADD CONSTRAINT faculties_pkey PRIMARY KEY (faculty_id);
 B   ALTER TABLE ONLY public.faculties DROP CONSTRAINT faculties_pkey;
       public         postgres    false    197            �
           2606    16444    favourites favourites_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.favourites
    ADD CONSTRAINT favourites_pkey PRIMARY KEY (user_id, subject_id);
 D   ALTER TABLE ONLY public.favourites DROP CONSTRAINT favourites_pkey;
       public         postgres    false    199    199            �
           2606    16446    lecturers lecturer_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.lecturers
    ADD CONSTRAINT lecturer_pkey PRIMARY KEY (user_id);
 A   ALTER TABLE ONLY public.lecturers DROP CONSTRAINT lecturer_pkey;
       public         postgres    false    200            �
           2606    16448    period period_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.period
    ADD CONSTRAINT period_pkey PRIMARY KEY (period_id);
 <   ALTER TABLE ONLY public.period DROP CONSTRAINT period_pkey;
       public         postgres    false    201            �
           2606    16450    students student_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.students
    ADD CONSTRAINT student_pkey PRIMARY KEY (user_id);
 ?   ALTER TABLE ONLY public.students DROP CONSTRAINT student_pkey;
       public         postgres    false    203            �
           2606    16452    subjects subjects_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.subjects
    ADD CONSTRAINT subjects_pkey PRIMARY KEY (subject_id);
 @   ALTER TABLE ONLY public.subjects DROP CONSTRAINT subjects_pkey;
       public         postgres    false    204            �
           2606    16454    users users_login_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_login_key UNIQUE (login);
 ?   ALTER TABLE ONLY public.users DROP CONSTRAINT users_login_key;
       public         postgres    false    206            �
           2606    16456    users users_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public         postgres    false    206            �
           1259    16457    fki_choises_student_user_id    INDEX     R   CREATE INDEX fki_choises_student_user_id ON public.choices USING btree (user_id);
 /   DROP INDEX public.fki_choises_student_user_id;
       public         postgres    false    196            �
           1259    16458    fki_choises_subject_subject_id    INDEX     X   CREATE INDEX fki_choises_subject_subject_id ON public.choices USING btree (subject_id);
 2   DROP INDEX public.fki_choises_subject_subject_id;
       public         postgres    false    196            �
           1259    16459    fki_faculty_id_fkey    INDEX     L   CREATE INDEX fki_faculty_id_fkey ON public.lecturers USING btree (faculty);
 '   DROP INDEX public.fki_faculty_id_fkey;
       public         postgres    false    200            �
           1259    16460    fki_favourites_student_user_id    INDEX     X   CREATE INDEX fki_favourites_student_user_id ON public.favourites USING btree (user_id);
 2   DROP INDEX public.fki_favourites_student_user_id;
       public         postgres    false    199            �
           1259    16461 !   fki_favourites_subject_subject_id    INDEX     ^   CREATE INDEX fki_favourites_subject_subject_id ON public.favourites USING btree (subject_id);
 5   DROP INDEX public.fki_favourites_subject_subject_id;
       public         postgres    false    199            �
           1259    16462 #   fki_student_faculty_faculty_id_fkey    INDEX     [   CREATE INDEX fki_student_faculty_faculty_id_fkey ON public.students USING btree (faculty);
 7   DROP INDEX public.fki_student_faculty_faculty_id_fkey;
       public         postgres    false    203            �
           1259    16463    fki_subject_faculty_faculty_id    INDEX     Y   CREATE INDEX fki_subject_faculty_faculty_id ON public.subjects USING btree (faculty_id);
 2   DROP INDEX public.fki_subject_faculty_faculty_id;
       public         postgres    false    204            �
           1259    16464    fki_subject_lecturer_user_id    INDEX     X   CREATE INDEX fki_subject_lecturer_user_id ON public.subjects USING btree (lecturer_id);
 0   DROP INDEX public.fki_subject_lecturer_user_id;
       public         postgres    false    204            �
           1259    16465    fki_user_id_fkey    INDEX     H   CREATE INDEX fki_user_id_fkey ON public.students USING btree (user_id);
 $   DROP INDEX public.fki_user_id_fkey;
       public         postgres    false    203            �
           2606    16466    choices choises_student_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.choices
    ADD CONSTRAINT choises_student_user_id FOREIGN KEY (user_id) REFERENCES public.students(user_id);
 I   ALTER TABLE ONLY public.choices DROP CONSTRAINT choises_student_user_id;
       public       postgres    false    196    203    2744            �
           2606    16471 "   choices choises_subject_subject_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.choices
    ADD CONSTRAINT choises_subject_subject_id FOREIGN KEY (subject_id) REFERENCES public.subjects(subject_id);
 L   ALTER TABLE ONLY public.choices DROP CONSTRAINT choises_subject_subject_id;
       public       postgres    false    196    204    2748            �
           2606    16476    students faculty_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.students
    ADD CONSTRAINT faculty_id_fkey FOREIGN KEY (faculty) REFERENCES public.faculties(faculty_id);
 B   ALTER TABLE ONLY public.students DROP CONSTRAINT faculty_id_fkey;
       public       postgres    false    203    197    2731            �
           2606    16481 %   favourites favourites_student_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.favourites
    ADD CONSTRAINT favourites_student_user_id FOREIGN KEY (user_id) REFERENCES public.students(user_id);
 O   ALTER TABLE ONLY public.favourites DROP CONSTRAINT favourites_student_user_id;
       public       postgres    false    199    203    2744            �
           2606    16486 (   favourites favourites_subject_subject_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.favourites
    ADD CONSTRAINT favourites_subject_subject_id FOREIGN KEY (subject_id) REFERENCES public.subjects(subject_id);
 R   ALTER TABLE ONLY public.favourites DROP CONSTRAINT favourites_subject_subject_id;
       public       postgres    false    2748    199    204            �
           2606    16491 )   lecturers lecturer_faulty_faculty_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.lecturers
    ADD CONSTRAINT lecturer_faulty_faculty_id_fkey FOREIGN KEY (faculty) REFERENCES public.faculties(faculty_id);
 S   ALTER TABLE ONLY public.lecturers DROP CONSTRAINT lecturer_faulty_faculty_id_fkey;
       public       postgres    false    2731    197    200            �
           2606    16496 $   lecturers lecturer_user_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.lecturers
    ADD CONSTRAINT lecturer_user_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);
 N   ALTER TABLE ONLY public.lecturers DROP CONSTRAINT lecturer_user_user_id_fkey;
       public       postgres    false    2752    200    206            �
           2606    16501 "   students student_user_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.students
    ADD CONSTRAINT student_user_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);
 L   ALTER TABLE ONLY public.students DROP CONSTRAINT student_user_user_id_fkey;
       public       postgres    false    206    2752    203            �
           2606    16506 #   subjects subject_faculty_faculty_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.subjects
    ADD CONSTRAINT subject_faculty_faculty_id FOREIGN KEY (faculty_id) REFERENCES public.faculties(faculty_id);
 M   ALTER TABLE ONLY public.subjects DROP CONSTRAINT subject_faculty_faculty_id;
       public       postgres    false    2731    204    197            �
           2606    16511 !   subjects subject_lecturer_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.subjects
    ADD CONSTRAINT subject_lecturer_user_id FOREIGN KEY (lecturer_id) REFERENCES public.lecturers(user_id);
 K   ALTER TABLE ONLY public.subjects DROP CONSTRAINT subject_lecturer_user_id;
       public       postgres    false    200    204    2738            D      x������ � �      E   "  x��VMo�F=/o�(��r����^�����P,�9��� H��@�����l%�,�a�ufI���L@Z/g߼y�f��̥^�;xn̥�Y�t����TO�¼�w捙蹙�g����Y�77����E�74}�A��^�q���0'��E�a�+�F/0�^7|������38w��4��Opډ��+ 0%B5�@P%U���IE�fMq�}� v|�tw�d���r&�^�!���^�)�en��8R<. �0$���^���no�q����
r��pA�o6�
��n�~����࿷��� ua&���3���[�6|��N����d7��YP�&^D������u�q`�(�@����x4pR~au1G��?0�����/��m*(+�<���m�E��C`d�+�Y"��N���u�qˉ��^! ���Y�\+S�=,��uA�B�J��s��y��D�[j���]Ji�����A-� ��͙�a��<�K�ӊ&� ��mn����8��F��,~�����4
7z�yK�T�[43�ͩ�` �8h�\(x$��&���x�����m{#l��5�o��p�|�?�@EE���9�EB�qg2h��|��ks��4�`�_r�<ou��#|�@����r2�M��.e=��Y\䣲�(��$<&������ݼ2o}�^֑V��F��֠�m���;�������ԫ�r5�{RV�#�X�!���3�E���fjM=;��q�����m��P1�X̋q$ÌrӖg�(�|��){t��U��G�6,m�M Ct��������a)+�1Y�� ����| w!�3SVaL!/ݔ�fG�v` ����.@�0��#���p��R��a��<���=�v��{���f�}�R%>FD�Nw�E�:e����)�r�ֶ��ߑ����G�AU����tc��ވ�i=�ٶ�e��AX^!=F���u:��~�Gb2�w5���?�K۵�	����\mx)��cʪg��͇��07� �~w�;Z����X����[u���y޿I5      G      x������ � �      H   �	  x��Ym��6�l���-K~��$����i��z9��E[�(R %m�_C���d�˻6�Mg�3�<3^͢h��u���LԊ�9͜fͼ�������Ґ3���H3Ih&t�z%��CN�[RƁ�6����lf�fP�K.O摔�*
 �5���9�Sm�$��(���aN9=�J
v�SQi�X� c��.�`�RȲ:75U�9�i��caE��x�r8���$��9���C+[v��y]�`7���P�'m���:�cu
�f:��k5 ��	p�ǎ��-,�����E�d�4*��æg�����m�����Cm-�z�ֹ�R�/���"�vK�� ^�,���fDy�VE���ı��j#�]�K��%pZk�H�+����ֈ ��ղ��� �QU��aO�ܭ�)�A�sW��8m�o�>�Uk�Sn�`�sY�R�B����4�J������b	�q���v���5f�����\0��<�����`5��a[���D<D�`�����'k�p@ELH)d~��FX�B��ʦF\�'�/Au8�Y��A҉�WP�Oz���˖����T�t�h�,O�B~����V*L����j����.`.h}�JV�'6p�-E����-{��˪s�\���6+_�S8+<!����ƚlO'q�Y��`i���e���Y���/ �lf�a�Y6JL�)e���)�3�U�;�m;�9b�շ�j"9-��)���W�'��:���[�z�g�o��{.�s5�G���}�6����h龎&���;q���|��v������ɡ��C���䱈q�]w :u�x)��n��4�h4-{"�]xy9L�3��9�b���rx���h�J��Z�9f�T�ȣM�����I`	ѡ`���������$a�����DG�sw}�&6f=�7�'u�G>DS�D�vy��tI����lTZy�c4t7�n��۵#�薈�?��H[O6l�O���4�[�go��D�Lr�3gbz��a}�Pk��s1�a^��'�1�O,�[������N�\�c�a�dՠ���E�:�5��*
���ʧ��)E�|��R�*�7�BfƯ���Мɛ���lm)��cKF˂�i]��^j%�e$ȊF�h�[���<��oˌ��7��MvA��Δt[�$�����(�����^��/�X��ɢ��:p���w���d��)�.'���o���d����rl,�����3+u�0ei��Jl�����]p��ɟ�7���[�E~Ղv�l�)@��cy2=%s$�6K�,�%���z���ުT�a�z�>T�:U����!� ��o0����ӄu�VC��[�7���1�р���Q�2�ú�mz��|��b�S�:�9�n$J�Y��sbo6GH�%��Q�X�OR�8j�ٸ�B�h�^￴�9zc���]�_�&��<�=�mn��hx8+�t�G���-%�~��G�B"/��y���*��4�^D�\5s�I~_�ֹ|��D��%}]���/���+�b��>��h��#�l2��ܙ���N@�wj�FN����i&)-6�L`��\%��݄���p���ϟ?�oAA
:�Ǉy�Q���3.WѠ
Z.�w<�&�h�,��U��y#͡�L���r��&�h��a�������p�Q�I��a�;�+�+SVLt~`%S��c �Q��8Ꜷ�a
H�ag�w�*y���8qm��7��}����ɖ9"q���I�l���_PC���~�Ϡ��]?����Bl_�T�Zy�꺅�w��fa���p������~�����ǟ��z��ݯ�_�������]!v��;wȩm�~~a1�C�ޟ[��Fk�4l��TKw'"�����gq�e����՝�a��"kA/<�:�6�Dq4���g�G����6�c�}T����T"l�����,�e,��H�D7s�!^y�'^�dc�Y��ڏ�T4�(�W�!Ύ#=꘭ָ[�c7	�Z:T%�Gaw�܏u��'ϵk\����v�h:D����x|2v�˱=[��7ӕ�d�/0�k(�dd(��t�h'�������q9�w���vg=N���K��Z�>��K�\�65Μ�̳�DXOmtֲ��r�l�2ik6r��+o������֘�}i��0��F9�,#U�[���Ie����[&��ς�L�M��J��K�Q��A�A����{���o��
cǀ��_E~����+�C[D�AD�9
Ҁ�J��`���]��Ϙ�/��u��ݲ�V���`?I�,cg�Y��S2+?�����lӪ����je���F
g�W�"C�����d�_?��a��]���������t�x�-:��~w���^HW�5´Q���^L[L��䜞�@k�P���vw�݈d4o.ü��xT�̃ �/� �Z      I      x������ � �      K   c  x�E��u�0г��T�'$�K�KG))�=����y�%�.>|��~]�v�����M
JR�t4a�
�oMVe5��jT6�P�Y	��c��	Q5����E�hL/^��=@L/Qm5a�uz�Y�^�	��M�=����%GV���fA��M�sNI�F!I���AI�P2��H�u߿~��^%�*Q�@��!�s�%Y����W|P"��y�����<�(
QʄX�s�[6k�ɚ�ڐd��`W@�5	9oc^󔌈w���p�PR�aM�t�&<��&���&;�	�/G���K!ի͓ޯ��I=k�C��@J�d�g�7�����C6����%��� �<AҴ���|>���'�      L     x��Y]o�}^��}L���r��ފ6H�Z$)��;��Pm�	��Me���q
H�:I�>S%�������93w��.� Y"��ܙ9s�c{i���ǟ���;����vo��r�ߜl�7�rQ^㯓r��(.��|�9�<���r�Q�EԊڭV���eQy&�+<>ܜ��cT.�U9�Ӑy�xo���->���l3�7O�z��.��y9�qt�+��$���Ӊ�������o��oq��\�M�,��n�����(�U\^�)�1�3I%���^T����s�]�7q��Xn�ߜ��b���>5-�BBZ;J���C,_�e��DD���'��k��E�Vu#h���YP&����گš�0l�;��F�jh��GC�1n-N���7�/Iڕܼ�_A�[��>SlB�����;����K��k�W@�"$�?/ע�vC�r�[��L�,��r�3�P0�<ř�T�P�y�mQ��E�XU���k�����[9���E�Z�B;b0���И��ϗ�;����;CU���26��'L���*H/� 8���(W�LdQb�KD|IW8�TO�_ָ�L�>i�������! �^`sB!s1#!��7}9�K��ʀů��.�ڷ��	S;y��c�^�G�^ �W����%�A:�����#��(ПS�_(�ʷ��s10�|���Oċ���DE��ۂ�h��9!(zͲz���	q3����M�k,�@��VN����	��C�ǌ�h��:�s�V�E#���kqÊ�z���ԟ��<�Nz�e��[��r��4P>�p�,ގ-^�Fur���V�"���T#���S��!dM�ʪ��$Y�0�"�9���s����lѼ��R<q��gD���BS��<�#���D��`i1B�4JO(⚥r&Cj� )����u]��= l�"N\�u�W�=X��Q�?� �F��� �m��K���3���HRT�Z�Rl;�^B�����0;k8x�)Q�eb�v�8q�}%l���%,r5��ye�.erۭB΀��㋉�*��/�h2�@���ɥ�:t����6i�&��M@��ZV|u{^4*巸�}�u��I|�D0�d���B�FiA�ٷ#^{=maW��J��>gt��[��`���{�y&��jp�ȥI-I�L&��<c;�h�n��J���O�v�F�׵d��藬y�K���dQ���mHt��x���Gy�W3k�Pj����<~�y]L�8��
%�}�ګmsQ+ِ_�|m��*�B�m��CԸO��z'��Z�{�)��FZ}IE�$�R��¢��2�B��4�U��c�vmP���\�ݼCT[
Ԉ�����cKMri���@kq��2����\���{��`���.j�oL9��֪&F��4Kl3��%�s-q�1r|
�H�6גa�y�%� ��)��}�d+z}�L�w�7J&��6��$`���ǌ��F��gC�l����ua}�(vl�D£>Rd��m�;�3V�V�`�K��<l᭔� �����
(�@�h�,m�c["��@�P\6����[�őRF�/W�}."��asm-�PU`�k���h��YZ���tJ�`��L	�9��L<PU]Gh�~�,R�k���(���:e%�[u�_Z����of ֏�EV�ȵIq4�X�Y�\,M"}�~��%|c�`ۏ�EG��:�����\�f��=�9����B� i������f��?`�ņ�2��d�>QG��Q��P���V�|���j�&ڶ�������q-�N/�!�_۴�)�4��ץE��)Q�������S��c�0�M|��ݡq�� N�C�LG]5�(��m�H�rw[;��I9>�A�\�l�=�X{5��s54~烣ǟ�;�����~��O��>�_��㽣��G�~�|��:Yϴ�������G�G�,��N�S�Cݽ����bpl`��rJ���� �[5Y&&�w��Gr%-���B�%`�b`]�Y�����8U�|��D⍛9�v�4x��@�7����nKҬ:��|�$�\L(Co�����Ƴ�eR噕�V/��w7�z6�V��A@���Ul���5&�K�xۯ\�Bj�ϯ� ~=fZ����:�������	}��;K�=�KPZD}��?���o���� \1�7+��Y��=L��j֏1����v�����Ds��~A��e^�>��J�~.�I�jK։rO�8��p�i사�?HW��_��}�y�����8�ķ����&X7g�e�?ܡO�P��M�)�	����O8�ɐ[`v���of���S���|��	�r���%����'����V��IT-��d��U����~�4'�M�h��^��^j��wF~�5�h��y4icY��N��Z;��3��OtcE���е1cqU���Y�q�Ьm
����%Z �`g��g��˱���l~!dk�>C��Vw��!��>�P���|�/[�����.�ҙ�ZGO:��O�n�Ձou.��V�Os#o�a���'�]���ʇϬb�@���b���� 1�l�m,�{i)S=M����Fԅ�j��4R�Ӹ�p0�A�vtI�	��ƪ�OUP�«</O	��µ�Ġ)�aW���y�!{�^%�=/Nz���J=�����zɊs<ۖ���ı�K�j��-�	t�C�����Ħ;Ɵ� C�V�L	ne��n�r]K^[<��v����[�/j�dI��C�\8��7eUs��=I���Jj���~��U����ɠݒ���p��-�~i�z�r]�����n�O�K��ږY��;']�ڸ;S�v#~88fY �A���ȿ���jU۵�iYv��L�k�@�ś�ù�H6�+�r��1�}���fߚ�K�96ƨ����,�aYl��FmM0��F>SFn*n����I�lZw�%*��V�U�����
"ɂܗ��wnGn�y�m�s#0��h'dk��2b���廱pP��_�+Ȇ����.���O|��?�ŝ`Fh�]]W���u|}Xpmܨ�F�!��@?�Up(�ܮ�˺%h�62�w�;�,����U�SFa���Z�g������t�v%      N      x��[[��Fv~~Ÿ�ڭJ�P��C*vV��y�X��y��T�@4��,�I3�.�rY��%��"�r�v^dJ���3��_ �B~I�9� ����ć����-��-��l-v�H�ݩ���ۓ��G��-�}�ty�<���i��z�<��O�'˅��
�⋻˗���PkkQ��1�̶����������rq��`y�_������������+�lk���IHz/������w��cX���^��Җ��+'�}X���pu��|��.�a�ǫ[�M"9Y�1-J�v8g!�����|�;������C��@���p�γ�� 6��ط�1���vg�P[~_>^�n�׵�װ�ZP���(vg��{�穭����K����<�l�e��VAI";4�1� ����Kz�/i��g�9FX������-��T�b��Ag҇�}�\ �S<{�9�,�;����#:�5����d���I�f���D����H�����ڲ6	>�sm�d�n�����=�_Y��-]]#�Y��(�p��L�m�ݴPm@�P+a9B�IR������yE�;!��c��>h���	���4($~��}��(�r#P��S6N�83n𑱻�k��!��p�3Z=�=�͎�}�����>H��m��r�M�c�79l`��,՘oo�m�l�m�9l��쮷��\x�OA��;)�����X�n���0x8����r?���Z����Q��}q����K�UD�kf�ڠ��v������1��	��gC�P������n�$OI���-�u�Go&WQ�f��`�����e6f{��햰lY�՟��z��;<������'adGz�$P�8u#��U6�w���,�|��&�gr\x{�}p���ps7,P�|�?��6��Â�@����k�Jt����D[�')ʜV���*���f����ˏ�T��N��U�l?��[�����۠�_��^����>��yAa�b�l�O���v֫�T.Fo�����b�$G¸��mP�o��?�cدY�gRz�*�!%�H��6�F�g�1�L��s>��4�L�d(��e���7 �H}���T�9��X���@���̎>�����A��H�(�����o��Ֆ�!E����,�Cn8�� �˷G.�(���s~��E�cn�;e�޾y}��H��Ƀ��6��ǳ=$?���X������I�,0�i='6���9����E�[%UV�=7�%��پ=��VW̒�B���,�3��!�{�j�����f,��1b!x
�(>�D�_*.�(���i�Ɍ�3a�1�F���w���s0���ۭF4a�����P��jn�����j?���/K1�T,f���3Bsߎ2�5wx �W�%�N+RO�6���0�����[Z��X��&o��,���t��։��&1T�m<����c��'A�&h��a�J$p����4Q���9u= .l}/eޟ��'\��D�C��P��O})oP"c*x�}>ClP�I����Q��'����G�
��O�0���S擟Į@|�l��PB���sz��S��۾E��[R]��aQC>��B��h=��}��~��3���hKI�TlPL/~��Yj���Cq���69�EM
�R�D9+Ib��v!�"!��o�R�~B�7��m	�|��Bh��%���Xa��?�� 4Qc�� �!�()��lI�����"Ƽ��
�6yv�]���� ��g�]ju�a�� ��7S���;XB��d�i�V%7��,���p#p�^����
sx�[ʰYR��*�%!��w��1�+�X����H$�F��3:4z+{�Hh�
#(k�N5N kn�����
��_	��h��Kķp%����n�dL�azw RUT�۫;�r�He�1�@E�5X�PFܜ�>*Lz��B��5���;�{-r ��B�J>BK᭖Ռ�p�#S�ܔ��.�=b���W�{�"�i�77d��L��|�lp��D���ۂU���OP���G*�����	P5��{V�F���@%�h�c���BT�b>�!{�7�^�H����O���8J����8׮v��Z���z�+��\q�����*u!!���'�,8��Ȼk��&a�,�4>��+Y}��C;.���P��wQ1��{ra�cp�Z�mN/g@��5���}Hu:�R��S��%:|�.�e���U�4j�������o!��՜�3�B4%VqB����+T�����`~��JCm�x�]�p8J��=~L\�r,���4��l#�C{�8\;b3�oIy,_l(:��B�l���#��#rM�@�ጎ�x������fݙC��#�6`�;��?������Ǖ���J3v��-��4n[��o��ߣ*I��B��%��do'3�*\�y��L@�8�o�1�g��@oʹ�V�0�ݎ>�#{DB>̝E��'�T؁t!� ���h�x���y�>���yMt���P]unO �=Cb7��y߆/����I��XW''���>�D7�D(���� N�p[J�h9�ߵ߉��f��r2��l�n�)3=#�9y�`n����11��|� ���bp�≜�	df2Y$���ڨ�UF�<��&�Q"H�I��$���I| n2�(�&������J��6K�N�&�~�L�F��'��/HPRc(�&Ɂ?�����s $?U]���a�$�ǆ�y���D��,x#�p̕t�9���0���c$3�t(c�(����"�7�p��1O¼K�ޕ�Hr�>��"�q����+�M
'q�Q`�LVX�PD{d���� ������\C���y9@|���Q�z�J�����u�`�y��J-�Uc7���VL�;�He��8��T�"�e�)!
�&����"�&�q����S_��Ƕ��s8�$�Ќ$�̛i
�U�	5-�֊b�LZ�7�	���jx����M�q��8D��4D0l���/�I2E[T��
ǧ�U���OU z�7�2}�(��+yXsy^�>��Ye�p�Av��I��b�g�	�cQ��:�tv�,�baz8�Cf��E��>lIe���T9�("��Q�V2N��$b؎ԇ�� �z),$o�����V���Ɍ8yԐ�h����W?�ȕ5�9w�,�ݛ"��8�TS�v�Zw�C[[����N;��L�ȋ�i��MAG�5XO�3��tb�s��>�浛g�����\��(�,���hr��Þ�A�Ś�� (��W��ge*��Z$^�-�S75�@:�}�m�zQ2��5�i�!`F6�\��և!�{���KQb�f���pb�$�}�C���nj�����X�:R+��r��V:�쿟��n���j=��I��+���ĆCx�\� ��]^�WE"���j)���9CG���l�SW�զ��o�;/�xs.I4z"�h!d۴:�.-�R��y��������#N����n8�hg
��f��	yi��e�j����:���b>v�-�VW8B�(ƍVN��/��Fޟ���Vo����~EɛK��aS�߿��R�b�U͋\sMr}�]�ʰ?�!�F��+�jѹ��}|�;�����v��#b[��h��b6	2�|�ƣK�`y���t��B�V7��ܧ�CM̥�}E1�N�ɦ����N ��A�Rƺ"��D�����u�;lc��Rr�0�	>\��i5x��3`�8ۜ��g�=�n=���b�I"J/�
3 I���(LQT���k��ٜOC&��̆EwSmr�fK!^P�Rz��0�w�[+e�#{/���8��:87c����Sq
���k�G!Ӏ���/���щM�|��
����c��R7�,$���iJ�s����/�B�u�x��5��Z %[N/�%eʧ�sI�}V"z#?�i<�! s��8�7"����SM_�)�2_ī�i�w~; �-�5$)���VK�\��B�S�A�ؗ7]g�OE!���}�Z�Z;F�q��;�'��@�L �  ����M�4O��kh��i�� 6��c�l���EQyjc>	�Ć�t�r>F��Ze�9"1��`�݂���'�1�M���%���ir#�k�(QL,�6յ��d�̷����&^[}�hZ��u�MǊoN5ԡ�o������ �� 5����~('%e�s��N�<�V�s�Q��>&t��d[B���z��D����`�![�,�9���"��j	|ӡ����cj_�߱��=��/�Պ4���H$��'b�����'Pw��t~���1ғ,3@=�F�Ǚ���-�R�Q%� �}�qZpaWX��z)�5P�b��p�C�<G�~�[���T���^.���l�3�R_�W_I'V�K4�4��iB��ŉwlk'�o��¹8�_��)��S���Q�C1����1|��8k
,׶�4��c��qSP.ݴZ���ńz��Nv����+���ݶe�q6������\��\n��5�f���E N��X5ORsb�������4�f�F���/$��xY����5o�8���g�೉��E_c$�3�u�!iO����|� ����'e��J+�>x��K(6��%	%3�b��k������A�Hҙv}��u�'�j�_������9��c�h��p��!��h�@X��rQ"��+�x�X?T;B�N1�%�妏��nA�ơ�*��>�Ƽ��`�V7�����en�����u��[A�cs:���и�"����:��kS��)_]O���l
AX̦ݢa�E�Z���oe��U���u+��d~�"�MC~���|��(��`�*��"֓��dPG8��p�P{k�Y|��u��Ҩ��Z�TrSr*bJ@=7���x	xL*�QN�R��W
��8�9�RR��.��̈y >��EZ"x�Q'j�M���R�O���-��L���KBķ�FCʹ���*��+H^ss��e��pT���^�D�k���`S�~�y�g4%l��0C~&�p��ͅY��j�e�~�6H���,�+�҉E���Ő�s�-��X����y�M�$���X��/��C!:ŉ(
m�hBh�  T�C����:�*f��,�m Į�sc�g4�.&E��~��LQx�	
[T�^�c�;`���.�[R8|ـ���	��ʃ}�	w�c�S:"U�D��Nj���t_K����n���Aq�p�/�_O�.A�c�q�B��B�脖Չ+�"D��2��s��P#k:N�w�j�}���lp�c�����UFòc'˶��	�B���m��M`vS2��M"��v�4z�RSE��o��@�}`xZ��F$��d{����w��kjA��b}O<����n�`S���j��vLmP�,]�0z�����k�(��T\k5H�'Y)oH��$g��T�� ����B�˚���=Q�B����.+�~9��Fc�3e>
�V����cگM�������(�RTFMlG�H9�\-
�4�K��� J-���	6�E����Edv�����.�3#��x|�6�������X�}#��QR�U?�(]�����u��Q8`bc��u3��U��k<�H �mD)�%`�Z[���CA�~��/Ȭ�='r��t��j�q\C���|8��IFg��r���_�4���	ÈFs��(2t]�?E�     