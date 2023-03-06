use tablet



select * from [client]
select * from [status]
select * from [order]
select * from [service]

select * from [worker]



insert [client] values
('ars', 'mega', 'c', 16, 4)


select [nameclient], [age], [age]*[id] as chch from [client]
where [address] = 'a'



select [nameclient], [age] from [client]
where [age]>=18


select * from [client], [status]
where [client].[id_status] = [status].[id]


insert [status] values
('second_class', 150)


insert [worker] values
('misha', 'steklotari', 'every day', 500)

insert [service] values
('delivery', 1, 100)

insert [order] values
(8, 2, '20220217', 2890)


select [nameclient], sum([TotalPrice]) as [AmountOfRedemption]
from [client] 
inner join [client].[NameClient] on [order].[Id_client] = [client].[Id]


select [worker].[NameWorker], sum ( [service].[Price] ) as [summa]
from [service]
inner join [worker] on [service].[Id_worker] = [worker].[Id]
 


 select [client].[NameClient], [status].[Sale]
 from [client]
 inner join [status] on [client].[Id_status] = [status].[Id]


use tablet

exec ComeOfAge

exec ClientsSale

exec performedByWorkersAndMoney

exec statusOfClients

exec workersOfServices


