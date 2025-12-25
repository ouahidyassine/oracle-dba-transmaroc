-- 1. Insertion des Clients (TS_CLIENTS)
INSERT INTO CLIENTS (nom, prenom, email, telephone) VALUES ('Alami', 'Mehdi', 'm.alami@email.com', '0661000001');
INSERT INTO CLIENTS (nom, prenom, email, telephone) VALUES ('Bennani', 'Sanaa', 's.bennani@email.com', '0661000002');
INSERT INTO CLIENTS (nom, prenom, email, telephone) VALUES ('Idrissi', 'Youssef', 'y.idrissi@email.com', '0661000003');
INSERT INTO CLIENTS (nom, prenom, email, telephone) VALUES ('Tazi', 'Amine', 'a.tazi@email.com', '0661000004');
INSERT INTO CLIENTS (nom, prenom, email, telephone) VALUES ('Mansouri', 'Layla', 'l.mansouri@email.com', '0661000005');

-- 2. Insertion des Billets (TS_BILLETS)
-- Note: id_billet et id_client sont gérés par IDENTITY ou correspondent aux IDs ci-dessus
INSERT INTO BILLETS (id_client, date_depart, ville_depart, ville_arrivee, prix, statut) 
VALUES (1, TIMESTAMP '2025-07-01 08:00:00', 'Casablanca', 'Tanger', 150.00, 'CONFIRME');

INSERT INTO BILLETS (id_client, date_depart, ville_depart, ville_arrivee, prix, statut) 
VALUES (2, TIMESTAMP '2025-07-01 09:30:00', 'Marrakech', 'Agadir', 95.00, 'CONFIRME');

INSERT INTO BILLETS (id_client, date_depart, ville_depart, ville_arrivee, prix, statut) 
VALUES (3, TIMESTAMP '2025-07-02 14:00:00', 'Rabat', 'Fès', 85.00, 'ANNULE');

INSERT INTO BILLETS (id_client, date_depart, ville_depart, ville_arrivee, prix, statut) 
VALUES (4, TIMESTAMP '2025-07-05 18:45:00', 'Oujda', 'Nador', 60.00, 'ATTENTE');

INSERT INTO BILLETS (id_client, date_depart, ville_depart, ville_arrivee, prix, statut) 
VALUES (5, TIMESTAMP '2025-08-10 10:00:00', 'Tétouan', 'Casablanca', 210.00, 'CONFIRME');

-- 3. Insertion des Paiements (TS_PAIEMENTS)
INSERT INTO PAIEMENTS (id_billet, montant, mode_paiement) VALUES (1, 150.00, 'CARTE');
INSERT INTO PAIEMENTS (id_billet, montant, mode_paiement) VALUES (2, 95.00, 'ESPECES');
INSERT INTO PAIEMENTS (id_billet, montant, mode_paiement) VALUES (3, 85.00, 'CARTE'); -- Paiement d'un billet annulé (utile pour tester le ROLLBACK)
INSERT INTO PAIEMENTS (id_billet, montant, mode_paiement) VALUES (5, 210.00, 'VIREMENT');
INSERT INTO PAIEMENTS (id_billet, montant, mode_paiement) VALUES (1, 0.00, 'AVOIR'); -- Simulation d'un ajustement

-- 4. Insertion dans l'Archive (TS_ARCHIVE)
INSERT INTO ARCHIVE_VOYAGES (id_archive, details_voyage) VALUES (2020, 'Archive Voyage Année 2020 : 5000 trajets effectués.');
INSERT INTO ARCHIVE_VOYAGES (id_archive, details_voyage) VALUES (2021, 'Archive Voyage Année 2021 : 12000 trajets effectués.');
INSERT INTO ARCHIVE_VOYAGES (id_archive, details_voyage) VALUES (2022, 'Archive Voyage Année 2022 : 18500 trajets effectués.');
INSERT INTO ARCHIVE_VOYAGES (id_archive, details_voyage) VALUES (2023, 'Archive Voyage Année 2023 : 25000 trajets effectués.');
INSERT INTO ARCHIVE_VOYAGES (id_archive, details_voyage) VALUES (2024, 'Archive Voyage Année 2024 (Jan-Juin) : 10000 trajets effectués.');

COMMIT;
