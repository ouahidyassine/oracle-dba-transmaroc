-- =====================================================
-- BACKUP & RECOVERY - TRANSMAROC
-- Base : ORCLCDB / PDB_TRANSMAROC
-- Objectif : Sécuriser les données (RMAN)
-- =====================================================

-- =====================================================
-- PARTIE 1 : VERIFICATION DU MODE ARCHIVELOG
-- A exécuter dans SQL*Plus (SYSDBA)
-- =====================================================

ARCHIVE LOG LIST;

-- =====================================================
-- PARTIE 2 : ACTIVATION DU MODE ARCHIVELOG
-- ATTENTION : niveau CDB
-- =====================================================

SHUTDOWN IMMEDIATE;
STARTUP MOUNT;
ALTER DATABASE ARCHIVELOG;
ALTER DATABASE OPEN;

-- =====================================================
-- PARTIE 3 : COMMANDES RMAN
-- A exécuter dans le terminal RMAN
-- =====================================================

-- Connexion :
-- rman target /

-- Sauvegarde complète hebdomadaire
BACKUP DATABASE
FORMAT '/u03/backup_transmaroc/full_%U.bkp'
PLUS ARCHIVELOG;

-- Sauvegarde incrémentielle quotidienne
BACKUP INCREMENTAL LEVEL 1 DATABASE
FORMAT '/u03/backup_transmaroc/incr_%U.bkp';

-- Vérification des sauvegardes
LIST BACKUP;

-- =====================================================
-- PARTIE 4 : RESTAURATION (THEORIQUE)
-- =====================================================

-- RESTORE DATABASE;
-- RECOVER DATABASE;

