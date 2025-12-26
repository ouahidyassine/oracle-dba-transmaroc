-- Se positionner sur la PDB TransMaroc
ALTER SESSION SET CONTAINER = PDB_TRANSMAROC;


-- Lister les datafiles et leur emplacement
SELECT tablespace_name,
       file_name,
       ROUND(bytes/1024/1024) AS size_mb,
       autoextensible
FROM dba_data_files
ORDER BY tablespace_name;

-- Ajout d’un nouveau datafile sur un nouveau disque (/u02)
ALTER TABLESPACE TS_BILLETS
ADD DATAFILE '/u02/oradata/ORCLCDB/pdb_transmaroc/ts_billets02.dbf'
SIZE 50M
AUTOEXTEND ON
NEXT 10M
MAXSIZE 200M;

--Vérifier l’ajout du datafile
SELECT tablespace_name,
       file_name,
       ROUND(bytes/1024/1024) AS size_mb
FROM dba_data_files
WHERE tablespace_name = 'TS_BILLETS';

