-- Tablespace pour les billets (Train/Bus)
CREATE TABLESPACE TS_BILLETS 
DATAFILE 'ts_billets01.dbf' SIZE 50M 
AUTOEXTEND ON NEXT 10M MAXSIZE 500M;

-- Tablespace pour les transactions financières
CREATE TABLESPACE TS_PAIEMENTS 
DATAFILE 'ts_paiements01.dbf' SIZE 50M 
AUTOEXTEND ON NEXT 10M MAXSIZE 500M;

-- Tablespace pour les comptes clients
CREATE TABLESPACE TS_CLIENTS 
DATAFILE 'ts_clients01.dbf' SIZE 30M 
AUTOEXTEND ON NEXT 5M MAXSIZE 200M;

-- Tablespace pour l'archivage historique
CREATE TABLESPACE TS_ARCHIVE 
DATAFILE 'ts_archive01.dbf' SIZE 100M 
AUTOEXTEND ON NEXT 20M MAXSIZE 1G;

