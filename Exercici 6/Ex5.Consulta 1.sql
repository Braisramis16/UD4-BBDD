use Exercici6;
select Passatgers.DNI as DNI, Passatgers.Nom as Nom, Passatgers.Cognoms as Cognoms, Vols.Numero as "Número de Vol", Vols.Origen as Origen, Vols.Destí as Desti, Reserva.Import as "Import de la reserva"
from Passatgers, Vols, Reserva 
where Passatgers.idPassatgers=Reserva.passatgers_idPassatgers and Vols.idVols=Reserva.vols_idVols;
