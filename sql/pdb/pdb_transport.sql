-- Création de la PDB à partir de la Seed
CREATE PLUGGABLE DATABASE PDB_TRANSMAROC 
ADMIN USER admin_tm IDENTIFIED BY Oracle123
FILE_NAME_CONVERT = ('/opt/oracle/oradata/ORCLCDB/pdbseed/', '/opt/oracle/oradata/ORCLCDB/pdb_transmaroc/');

-- Ouverture de la PDB
ALTER PLUGGABLE DATABASE PDB_TRANSMAROC OPEN;
ALTER PLUGGABLE DATABASE PDB_TRANSMAROC SAVE STATE;

-- Basculer sur la nouvelle PDB pour la suite
ALTER SESSION SET CONTAINER = PDB_TRANSMAROC;

