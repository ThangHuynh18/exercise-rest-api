PGDMP     '                    y            Employee    13.3    13.3     ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    24733    Employee    DATABASE     n   CREATE DATABASE "Employee" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE "Employee";
                postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                postgres    false            ?           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   postgres    false    3            ?            1259    24736 	   employees    TABLE     ?   CREATE TABLE public.employees (
    id integer NOT NULL,
    first_name character varying NOT NULL,
    last_name character varying NOT NULL,
    email character varying NOT NULL,
    role character varying NOT NULL
);
    DROP TABLE public.employees;
       public         heap    postgres    false    3            ?            1259    24734    employees_id_seq    SEQUENCE     ?   ALTER TABLE public.employees ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.employees_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    3    201            ?          0    24736 	   employees 
   TABLE DATA                 public          postgres    false    201            ?           0    0    employees_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.employees_id_seq', 2, true);
          public          postgres    false    200            $           2606    24743    employees employees_pk_id 
   CONSTRAINT     W   ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_pk_id PRIMARY KEY (id);
 C   ALTER TABLE ONLY public.employees DROP CONSTRAINT employees_pk_id;
       public            postgres    false    201            ?   ?   x???v
Q???W((M??L?K?-?ɯLM-V?s
?t??sW?q?Us?	u???
?:
?%?y??@FFie^?:L?!=713G/9?$???????i??I?uF ??@???C8???????? c@?          ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    24733    Employee    DATABASE     n   CREATE DATABASE "Employee" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE "Employee";
                postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                postgres    false            ?           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   postgres    false    3            ?            1259    24736 	   employees    TABLE     ?   CREATE TABLE public.employees (
    id integer NOT NULL,
    first_name character varying NOT NULL,
    last_name character varying NOT NULL,
    email character varying NOT NULL,
    role character varying NOT NULL
);
    DROP TABLE public.employees;
       public         heap    postgres    false    3            ?            1259    24734    employees_id_seq    SEQUENCE     ?   ALTER TABLE public.employees ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.employees_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    3    201            ?          0    24736 	   employees 
   TABLE DATA                 public          postgres    false    201   
       ?           0    0    employees_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.employees_id_seq', 2, true);
          public          postgres    false    200            $           2606    24743    employees employees_pk_id 
   CONSTRAINT     W   ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_pk_id PRIMARY KEY (id);
 C   ALTER TABLE ONLY public.employees DROP CONSTRAINT employees_pk_id;
       public            postgres    false    201           