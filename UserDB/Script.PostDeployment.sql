/*
Script de post-déploiement	-- création data						
--------------------------------------------------------------------------------------
Script de peuplement de fausses données à la démo
Le script ne s'exécute uniquement que si la table est vide			
--------------------------------------------------------------------------------------
*/


if not exists (select 1 from dbo.[User])
BEGIN
    INSERT INTO dbo.[User] (FirstName, LastName)
    VALUES ('John', 'Doe'),
    ('Sue', 'Storm'),
    ('John', 'Smith'),
    ('Mary', 'Jones');
END