use Exercici7;
select p.idProducte as Codi, p.nom as Producte, p.Descripcio as Descripcio, p.preu as "Preu unitari", p.IVA as "IVA", p.CodiBarres as "Codi de Barres"
from Producte as p 
where p.IVA="21" and p.CodiBarres like "%8%"