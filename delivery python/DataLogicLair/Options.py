class Options:
    def __init__(self):
        self.connection_string = 'DRIVER={SQL Server};SERVER=HOME-PC\SQLEXPRESS;DATABASE=tablet;'
        self.status_of_clients = 'exec statusOfClients'
        self.come_of_age = 'exec ComeOfAge'
        self.clients_sale = 'exec ClientsSale'
        self.workers_of_services = 'exec workersOfServices'

