use Exercici4;
select count(*) as numpolisses
from polissa, client
where client_idclient = polissa.client_idclient and client.nom like "%Joan%"; 