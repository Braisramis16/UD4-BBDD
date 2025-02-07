use Exercici5;
select c.idCita as num, c.Data as Dia, c.Hora as hora, v.Marca as Marca, v.Model as Modelo, cl.Nom as Nom  
From Cita as c, Vehicle as v, Client as cl 
where v.idVehicle=c.Vehicle_idVehicle and cl.idClient=v.Client_idClient and c.Data>"25/01/2025";