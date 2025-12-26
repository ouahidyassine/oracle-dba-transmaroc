--Test utilisateur pendant l’opération (preuve)
-- Connexion avec agent_vente
CONNECT agent_vente/AgentVente2025@PDB_TRANSMAROC;

-- Test d'insertion
INSERT INTO BILLETS (id_client, date_depart, ville_depart, ville_arrivee, prix, statut)
VALUES (2, SYSTIMESTAMP, 'Rabat', 'Casablanca', 45, 'CONFIRME');

COMMIT;

