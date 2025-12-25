                ---------------------------- Annulation d’une réservation (ROLLBACK) -------------------------------------
-- Début de transaction
UPDATE BILLETS 
SET STATUT = 'ANNULE' 
WHERE ID_BILLET = 1;

-- Le client change d'avis ou le paiement échoue
ROLLBACK; 

-- Vérification : la donnée est revenue à son état initial grâce au segment UNDO
SELECT STATUT FROM BILLETS WHERE ID_BILLET = 1;

-- Annulation
ROLLBACK;

-- Vérifier que la ligne a été annulée
SELECT * FROM BILLETS ;


-- Simulation d’une transaction longue (paiement bloqué)
--BEGIN
  --FOR i IN 1..100 LOOP
    --INSERT INTO PAIEMENTS (id_billet, montant, mode_paiement)
    --VALUES (2, 500.00, 'ESPECES');
  --END LOOP;
--END;
               ---------------------------- Annulation d’une réservation (ROLLBACK) -------------------------------------


-- Début de transaction
UPDATE BILLETS 
SET STATUT = 'ANNULE' 
WHERE ID_BILLET = 1;

-- Le client change d'avis ou le paiement échoue
ROLLBACK; 

-- Vérification : la donnée est revenue à son état initial grâce au segment UNDO
SELECT STATUT FROM BILLETS WHERE ID_BILLET = 1;
