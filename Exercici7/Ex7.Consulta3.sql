use Exercici7;
select count(lt.idLiniaTicket) as "Número de línies de tickets"
from LiniaTicket as lt, Empleat as e, Tickets as t
where t.Empleat_idEmpleat=e.idEmpleat and t.id=lt.Tickets_idTickets and e.Nom like "L%"