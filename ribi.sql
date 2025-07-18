PGDMP                      }            fishdata    17.5    17.5 3    Q           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            R           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            S           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            T           1262    16403    fishdata    DATABASE     |   CREATE DATABASE fishdata WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE fishdata;
                     postgres    false                        2615    16404 	   sensor_db    SCHEMA        CREATE SCHEMA sensor_db;
    DROP SCHEMA sensor_db;
                     postgres    false            �            1259    16415    device    TABLE     �   CREATE TABLE sensor_db.device (
    id character varying NOT NULL,
    pool_id integer,
    polling boolean NOT NULL,
    version integer NOT NULL
);
    DROP TABLE sensor_db.device;
    	   sensor_db         heap r       postgres    false    6            �            1259    16414    device_version_seq    SEQUENCE     �   CREATE SEQUENCE sensor_db.device_version_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE sensor_db.device_version_seq;
    	   sensor_db               postgres    false    6    222            U           0    0    device_version_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE sensor_db.device_version_seq OWNED BY sensor_db.device.version;
       	   sensor_db               postgres    false    221            �            1259    16455    oxygen_concentration    TABLE     �   CREATE TABLE sensor_db.oxygen_concentration (
    id integer NOT NULL,
    pool_id integer NOT NULL,
    reading real NOT NULL,
    reading_time timestamp with time zone NOT NULL
);
 +   DROP TABLE sensor_db.oxygen_concentration;
    	   sensor_db         heap r       postgres    false    6            �            1259    16454    oxygen_concentration_id_seq    SEQUENCE     �   CREATE SEQUENCE sensor_db.oxygen_concentration_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE sensor_db.oxygen_concentration_id_seq;
    	   sensor_db               postgres    false    228    6            V           0    0    oxygen_concentration_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE sensor_db.oxygen_concentration_id_seq OWNED BY sensor_db.oxygen_concentration.id;
       	   sensor_db               postgres    false    227            �            1259    16442    oxygen_saturation    TABLE     �   CREATE TABLE sensor_db.oxygen_saturation (
    id integer NOT NULL,
    pool_id integer NOT NULL,
    reading real NOT NULL,
    reading_time timestamp with time zone NOT NULL
);
 (   DROP TABLE sensor_db.oxygen_saturation;
    	   sensor_db         heap r       postgres    false    6            �            1259    16441    oxygen_saturation_id_seq    SEQUENCE     �   CREATE SEQUENCE sensor_db.oxygen_saturation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE sensor_db.oxygen_saturation_id_seq;
    	   sensor_db               postgres    false    226    6            W           0    0    oxygen_saturation_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE sensor_db.oxygen_saturation_id_seq OWNED BY sensor_db.oxygen_saturation.id;
       	   sensor_db               postgres    false    225            �            1259    16407    pool    TABLE     W   CREATE TABLE sensor_db.pool (
    id integer NOT NULL,
    version integer NOT NULL
);
    DROP TABLE sensor_db.pool;
    	   sensor_db         heap r       postgres    false    6            �            1259    16405    pool_id_seq    SEQUENCE     �   CREATE SEQUENCE sensor_db.pool_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE sensor_db.pool_id_seq;
    	   sensor_db               postgres    false    6    220            X           0    0    pool_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE sensor_db.pool_id_seq OWNED BY sensor_db.pool.id;
       	   sensor_db               postgres    false    218            �            1259    16406    pool_version_seq    SEQUENCE     �   CREATE SEQUENCE sensor_db.pool_version_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE sensor_db.pool_version_seq;
    	   sensor_db               postgres    false    6    220            Y           0    0    pool_version_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE sensor_db.pool_version_seq OWNED BY sensor_db.pool.version;
       	   sensor_db               postgres    false    219            �            1259    16429    temperature    TABLE     �   CREATE TABLE sensor_db.temperature (
    id integer NOT NULL,
    pool_id integer NOT NULL,
    reading real NOT NULL,
    reading_time timestamp with time zone NOT NULL
);
 "   DROP TABLE sensor_db.temperature;
    	   sensor_db         heap r       postgres    false    6            �            1259    16428    temperature_id_seq    SEQUENCE     �   CREATE SEQUENCE sensor_db.temperature_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE sensor_db.temperature_id_seq;
    	   sensor_db               postgres    false    224    6            Z           0    0    temperature_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE sensor_db.temperature_id_seq OWNED BY sensor_db.temperature.id;
       	   sensor_db               postgres    false    223            �           2604    16418    device version    DEFAULT     v   ALTER TABLE ONLY sensor_db.device ALTER COLUMN version SET DEFAULT nextval('sensor_db.device_version_seq'::regclass);
 @   ALTER TABLE sensor_db.device ALTER COLUMN version DROP DEFAULT;
    	   sensor_db               postgres    false    222    221    222            �           2604    16458    oxygen_concentration id    DEFAULT     �   ALTER TABLE ONLY sensor_db.oxygen_concentration ALTER COLUMN id SET DEFAULT nextval('sensor_db.oxygen_concentration_id_seq'::regclass);
 I   ALTER TABLE sensor_db.oxygen_concentration ALTER COLUMN id DROP DEFAULT;
    	   sensor_db               postgres    false    228    227    228            �           2604    16445    oxygen_saturation id    DEFAULT     �   ALTER TABLE ONLY sensor_db.oxygen_saturation ALTER COLUMN id SET DEFAULT nextval('sensor_db.oxygen_saturation_id_seq'::regclass);
 F   ALTER TABLE sensor_db.oxygen_saturation ALTER COLUMN id DROP DEFAULT;
    	   sensor_db               postgres    false    225    226    226            �           2604    16410    pool id    DEFAULT     h   ALTER TABLE ONLY sensor_db.pool ALTER COLUMN id SET DEFAULT nextval('sensor_db.pool_id_seq'::regclass);
 9   ALTER TABLE sensor_db.pool ALTER COLUMN id DROP DEFAULT;
    	   sensor_db               postgres    false    220    218    220            �           2604    16411    pool version    DEFAULT     r   ALTER TABLE ONLY sensor_db.pool ALTER COLUMN version SET DEFAULT nextval('sensor_db.pool_version_seq'::regclass);
 >   ALTER TABLE sensor_db.pool ALTER COLUMN version DROP DEFAULT;
    	   sensor_db               postgres    false    220    219    220            �           2604    16432    temperature id    DEFAULT     v   ALTER TABLE ONLY sensor_db.temperature ALTER COLUMN id SET DEFAULT nextval('sensor_db.temperature_id_seq'::regclass);
 @   ALTER TABLE sensor_db.temperature ALTER COLUMN id DROP DEFAULT;
    	   sensor_db               postgres    false    224    223    224            H          0    16415    device 
   TABLE DATA           B   COPY sensor_db.device (id, pool_id, polling, version) FROM stdin;
 	   sensor_db               postgres    false    222   �;       N          0    16455    oxygen_concentration 
   TABLE DATA           U   COPY sensor_db.oxygen_concentration (id, pool_id, reading, reading_time) FROM stdin;
 	   sensor_db               postgres    false    228    <       L          0    16442    oxygen_saturation 
   TABLE DATA           R   COPY sensor_db.oxygen_saturation (id, pool_id, reading, reading_time) FROM stdin;
 	   sensor_db               postgres    false    226   =       F          0    16407    pool 
   TABLE DATA           .   COPY sensor_db.pool (id, version) FROM stdin;
 	   sensor_db               postgres    false    220   �=       J          0    16429    temperature 
   TABLE DATA           L   COPY sensor_db.temperature (id, pool_id, reading, reading_time) FROM stdin;
 	   sensor_db               postgres    false    224   <>       [           0    0    device_version_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('sensor_db.device_version_seq', 6, true);
       	   sensor_db               postgres    false    221            \           0    0    oxygen_concentration_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('sensor_db.oxygen_concentration_id_seq', 18, true);
       	   sensor_db               postgres    false    227            ]           0    0    oxygen_saturation_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('sensor_db.oxygen_saturation_id_seq', 18, true);
       	   sensor_db               postgres    false    225            ^           0    0    pool_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('sensor_db.pool_id_seq', 12, true);
       	   sensor_db               postgres    false    218            _           0    0    pool_version_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('sensor_db.pool_version_seq', 1, false);
       	   sensor_db               postgres    false    219            `           0    0    temperature_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('sensor_db.temperature_id_seq', 18, true);
       	   sensor_db               postgres    false    223            �           2606    16422    device device_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY sensor_db.device
    ADD CONSTRAINT device_pkey PRIMARY KEY (id);
 ?   ALTER TABLE ONLY sensor_db.device DROP CONSTRAINT device_pkey;
    	   sensor_db                 postgres    false    222            �           2606    16460 .   oxygen_concentration oxygen_concentration_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY sensor_db.oxygen_concentration
    ADD CONSTRAINT oxygen_concentration_pkey PRIMARY KEY (id);
 [   ALTER TABLE ONLY sensor_db.oxygen_concentration DROP CONSTRAINT oxygen_concentration_pkey;
    	   sensor_db                 postgres    false    228            �           2606    16447 (   oxygen_saturation oxygen_saturation_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY sensor_db.oxygen_saturation
    ADD CONSTRAINT oxygen_saturation_pkey PRIMARY KEY (id);
 U   ALTER TABLE ONLY sensor_db.oxygen_saturation DROP CONSTRAINT oxygen_saturation_pkey;
    	   sensor_db                 postgres    false    226            �           2606    16413    pool pool_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY sensor_db.pool
    ADD CONSTRAINT pool_pkey PRIMARY KEY (id);
 ;   ALTER TABLE ONLY sensor_db.pool DROP CONSTRAINT pool_pkey;
    	   sensor_db                 postgres    false    220            �           2606    16434    temperature temperature_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY sensor_db.temperature
    ADD CONSTRAINT temperature_pkey PRIMARY KEY (id);
 I   ALTER TABLE ONLY sensor_db.temperature DROP CONSTRAINT temperature_pkey;
    	   sensor_db                 postgres    false    224            �           1259    16466 %   oxygen_concentration_reading_time_idx    INDEX     q   CREATE INDEX oxygen_concentration_reading_time_idx ON sensor_db.oxygen_concentration USING btree (reading_time);
 <   DROP INDEX sensor_db.oxygen_concentration_reading_time_idx;
    	   sensor_db                 postgres    false    228            �           1259    16453 "   oxygen_saturation_reading_time_idx    INDEX     k   CREATE INDEX oxygen_saturation_reading_time_idx ON sensor_db.oxygen_saturation USING btree (reading_time);
 9   DROP INDEX sensor_db.oxygen_saturation_reading_time_idx;
    	   sensor_db                 postgres    false    226            �           1259    16440    temperature_reading_time_idx    INDEX     _   CREATE INDEX temperature_reading_time_idx ON sensor_db.temperature USING btree (reading_time);
 3   DROP INDEX sensor_db.temperature_reading_time_idx;
    	   sensor_db                 postgres    false    224            �           2606    16423    device device_pool_id_fkey    FK CONSTRAINT     ~   ALTER TABLE ONLY sensor_db.device
    ADD CONSTRAINT device_pool_id_fkey FOREIGN KEY (pool_id) REFERENCES sensor_db.pool(id);
 G   ALTER TABLE ONLY sensor_db.device DROP CONSTRAINT device_pool_id_fkey;
    	   sensor_db               postgres    false    220    222    4771            �           2606    16461 6   oxygen_concentration oxygen_concentration_pool_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY sensor_db.oxygen_concentration
    ADD CONSTRAINT oxygen_concentration_pool_id_fkey FOREIGN KEY (pool_id) REFERENCES sensor_db.pool(id);
 c   ALTER TABLE ONLY sensor_db.oxygen_concentration DROP CONSTRAINT oxygen_concentration_pool_id_fkey;
    	   sensor_db               postgres    false    4771    228    220            �           2606    16448 0   oxygen_saturation oxygen_saturation_pool_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY sensor_db.oxygen_saturation
    ADD CONSTRAINT oxygen_saturation_pool_id_fkey FOREIGN KEY (pool_id) REFERENCES sensor_db.pool(id);
 ]   ALTER TABLE ONLY sensor_db.oxygen_saturation DROP CONSTRAINT oxygen_saturation_pool_id_fkey;
    	   sensor_db               postgres    false    220    4771    226            �           2606    16435 $   temperature temperature_pool_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY sensor_db.temperature
    ADD CONSTRAINT temperature_pool_id_fkey FOREIGN KEY (pool_id) REFERENCES sensor_db.pool(id);
 Q   ALTER TABLE ONLY sensor_db.temperature DROP CONSTRAINT temperature_pool_id_fkey;
    	   sensor_db               postgres    false    220    4771    224            H   ,   x�+I�-�7�4�L�4�*q9����J0��Ӕ+F��� �z
      N   �   x�uҹ1�XW�s�������H9��v�z�  ��^��x38��/4�<���b<�����$�0�S��v��d)f3t���VLӹ�w(lV7��bq\ZL��'d/�80��a��/���Rx�Î98������&�f����\�~�3P֍��<���ڹrz/W?�+��|T���{}�Ž3�X�E���W���u� 8рX      L   �   x�u�91c�+�)T������w`�dh�.M��4hD�`��B>X�o$atz�\<x��.-�82A���8]�nd�T.h��1�NI�8[���|��t)Ϋ,A�?G%皳�8e����"�D�\7��osdǏ��:t�������+.��7�r�kf��,���x��oӘ�АvҚ���=!�J^U��&�Q�� Mi.Ŵ_i���4�8��-�:d��m>p]��j      F   -   x�3�4�2bc 6bS 6bs � bK 64 � �4F��� ���      J   �   x�u�1�D!Dc�)6������ϱ"�-��u�hh�Ϋ1�|��@?,o�7��0)~In������2N�4F�7Hi7���������ۻ��d�BK�6��*����8ZD=>���Rg��I"g�o�>��8��
1u�Ļ�dS? ��V%8$�Cm]��T��9:.��G9oW����9"f^{���W���Y�����Zs5[.�e�}��2��7��<�q部     