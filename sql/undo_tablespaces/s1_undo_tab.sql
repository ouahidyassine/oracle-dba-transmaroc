--Utilisateur 1 (La requête longue) : Lance un calcul très lourd qui dure 2 minutes :
--SELECT SUM(MONTANT) FROM PAIEMENTS;


SELECT * FROM paiements WHERE ID_PAIEMENT = 1;

--UPDATE paiements SET MONTANT = 900 WHERE ID_PAIEMENT = 1;

select * from PAIEMENTS;


-- Simulation d’une transaction longue (paiement bloqué)
INSERT INTO PAIEMENTS (id_billet, montant, mode_paiement)
    VALUES (2, 500.00, 'ESPECES');
