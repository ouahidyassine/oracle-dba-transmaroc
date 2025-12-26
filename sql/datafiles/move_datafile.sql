--Déplacer un datafile vers un nouveau disque
--Identifier le datafile
SELECT file_id, file_name
FROM dba_data_files
WHERE tablespace_name = 'TS_CLIENTS';

--.2 Déplacement du datafile (ONLINE)
ALTER DATABASE MOVE DATAFILE
'/opt/oracle/oradata/ORCLCDB/pdb_transmaroc/ts_clients01.dbf'
TO
'/u02/oradata/ORCLCDB/pdb_transmaroc/ts_clients01.dbf';


--Vérifier après déplacement
SELECT file_name
FROM dba_data_files
WHERE tablespace_name = 'TS_CLIENTS';
