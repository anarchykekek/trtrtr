use tablet


go
create procedure statusOfClients as
select [client].[id], [client].[NameClient], [status].[NameStatus] 
from [client]
 inner join [status]
on [client].[id_status] = [status].[id]

go
create procedure performedByWorkersAndMoney as
select [worker].[NameWorker], [service].[NameService], [service].[Price] 
from [worker]
 inner join [service]
on [worker].[id] = [service].[Id_worker]

go
create procedure workersOfServices as
select [order].[Id], [client].[NameClient], [worker].[NameWorker] 
from [order]
 inner join [client] on [order].[Id_client] = [client].[id] 
 inner join [service] on [order].[Id_service] = [service].[Id]
 inner join [worker] on [service].[Id_worker] = [worker].[Id]

 go
 create procedure ClientsSale as
  select [client].[NameClient], [status].[Sale]
 from [client]
 inner join [status] on [client].[Id_status] = [status].[Id]


go
create procedure AmountOfRedemption as
select sum([TotalPrice]) as [AmountOfRedemption] from [order]
 
