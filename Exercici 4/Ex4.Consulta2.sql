use Exercici4;
Select client.DNI as "DNI", client.Nom as "Nom", client.Cognoms as "Cognoms", polissa.NumPolissa as "Número de la Pòlissa", TipusPolissa.Nom as "Tipus"
From client, polissa, TipusPolissa
where client.idclient=polissa.client_idclient and TipusPolissa.idTipusPolissa=polissa.TipusPolissa_idTipusPolissa and TipusPolissa.Nom like "%Viatge%";