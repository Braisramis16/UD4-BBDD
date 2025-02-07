use Exercici7;
select t.NumFac as Factura, t.Data as "Data", t.HoraVenta as Hora, e.nom as Empleat, SUM(((p.Preu*p.Unitat)-lt.Descompte))
from Tickets as t, Empleat as e, LiniaTicket as lt, Producte as p
where e.idEmpleat = t.Empleat_idEmpleat and t.id=lt.Tickets_idTickets and p.idProducte = lt.Producte_idProducte
group by t.NumFac, t.Data, t.HoraVenta, e.Nom