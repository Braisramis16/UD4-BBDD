USE Exercici6;
SELECT COUNT(Reserva.idReserva) AS "Número de reservas",
       Vols.idVols AS "Número de vol",
       Vols.Origen AS "Origen",
       Vols.Destí AS "Destí",
       Vols.HSortida AS "Hora de sortida",
       Vols.HArribada AS "Hora d'arribada"
FROM Reserva, Vols
WHERE Reserva.Vols_idVols = Vols.idVols AND Vols.idVols = 3
GROUP BY Reserva.Vols_idVols, Vols.idVols, Vols.Origen, Vols.Destí, Vols.HSortida, Vols.HArribada;
