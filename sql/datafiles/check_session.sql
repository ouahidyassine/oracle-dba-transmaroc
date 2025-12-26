--Vérifier l’impact sur les utilisateurs actifs
Sessions actives
SELECT sid,
       serial#,
       username,
       status,
       program
FROM v$session
WHERE username IS NOT NULL;


--2 Vérifier les verrous éventuels
SELECT s.sid,
       s.username,
       l.type,
       l.lmode,
       l.request
FROM v$lock l
JOIN v$session s ON l.sid = s.sid;
