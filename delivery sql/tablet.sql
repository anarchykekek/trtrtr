CREATE TABLE [service] (
  Id int identity,
  NameService nvarchar(20) NOT NULL,
  Id_worker int NOT NULL,
  Price money NOT NULL,
  CONSTRAINT [PK_server] PRIMARY KEY CLUSTERED
  (
  [Id] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [worker] (
  Id int identity,
  NameWorker nvarchar(20) NOT NULL,
  Post nvarchar(20) NOT NULL,
  Timetable nvarchar(20) NOT NULL,
  PricePerJob money NOT NULL,
  CONSTRAINT [PK_worker] PRIMARY KEY CLUSTERED
  (
  [Id] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [client] (
  Id int identity,
  NameClient nvarchar(20) NOT NULL,
  Area nvarchar(20) NOT NULL,
  Address nvarchar(20) NOT NULL,
  Age int NOT NULL,
  Id_status int NOT NULL,
  CONSTRAINT [PK_client] PRIMARY KEY CLUSTERED
  (
  [Id] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [status] (
  Id int identity,
  NameStatus nvarchar(20) NOT NULL,
  Sale int NOT NULL,
  CONSTRAINT [PK_status] PRIMARY KEY CLUSTERED
  (
  [Id] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [order] (
  Id int identity,
  Id_service int NOT NULL,
  Id_client int NOT NULL,
  Date date NOT NULL,
  TotalPrice money NOT NULL,
  CONSTRAINT [PK_order] PRIMARY KEY CLUSTERED
  (
  [Id] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
ALTER TABLE [service] WITH CHECK ADD CONSTRAINT [service_fk0] FOREIGN KEY ([Id_worker]) REFERENCES [worker]([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [service] CHECK CONSTRAINT [service_fk0]
GO


ALTER TABLE [client] WITH CHECK ADD CONSTRAINT [client_fk0] FOREIGN KEY ([Id_status]) REFERENCES [status]([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [client] CHECK CONSTRAINT [client_fk0]
GO


ALTER TABLE [order] WITH CHECK ADD CONSTRAINT [order_fk0] FOREIGN KEY ([Id_service]) REFERENCES [service]([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [order] CHECK CONSTRAINT [order_fk0]
GO
ALTER TABLE [order] WITH CHECK ADD CONSTRAINT [order_fk1] FOREIGN KEY ([Id_client]) REFERENCES [client]([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [order] CHECK CONSTRAINT [order_fk1]
GO