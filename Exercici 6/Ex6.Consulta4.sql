use Exercici6;
select r.Numero as "Numero de Reservas", p.Nom as Nom, p.Cognoms as Cognoms, v.Numero as "Número de Vol"
from Reserva as r, Passatgers as p, Vols as v
where r.Passatgers_idPassatgers = p.idPassatgers and r.Vols_idVols=v.idVols and r.Data= "29/01/2025"