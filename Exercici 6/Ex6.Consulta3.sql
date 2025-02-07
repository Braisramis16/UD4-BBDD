use Exercici6;
select a.Marca as Marca, a .Model as Model, a.Capacitat as Capacitat, v.Numero as NumVol, v.Origen as Origen, v.Destí as Desti, v.HSortida as "Hora de sortida", v.HArribada as "Hora d'arribada"  
from Avions as a, Vols as v
where a.idAvions = v.Avions_idAvions and a.Marca like "%Airbus%"