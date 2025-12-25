-- Création un UNDO tablespace dédié pour tes transactions :
CREATE UNDO TABLESPACE UNDO_TRANS
DATAFILE 'undo_trans01.dbf'
SIZE 50M
AUTOEXTEND ON
NEXT 10M
MAXSIZE 500M;




-- Affecter le nouveau UNDO tablespace
ALTER SYSTEM SET UNDO_TABLESPACE = UNDO_TRANS;
--L’option UNDO_RETENTION définit combien de temps Oracle conserve les informations UNDO pour permettre des ROLLBACK :
-- Configurer la rétention des UNDO (en seconde)
ALTER SYSTEM SET UNDO_RETENTION = 1;  
