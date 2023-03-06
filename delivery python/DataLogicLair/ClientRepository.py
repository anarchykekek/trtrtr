import pyodbc
from DataLogicLair.ConnectionGenerator import *
from DataLogicLair.Options import *


class Client_Repository:
    def __init__(self):
        self.__options = Options()

    def statusOfClients(self):
        cursor = get_connection().cursor()
        query = self.__options.status_of_clients
        cursor.execute(query)
        return cursor.fetchall()


    def comeOfAge(self):
        cursor = get_connection().cursor()
        query = self.__options.come_of_age
        cursor.execute(query)
        return cursor.fetchall()

    def clientsSale(self):
        cursor = get_connection().cursor()
        query = self.__options.clients_sale
        cursor.execute(query)
        return cursor.fetchall()

    def workersOfServices(self):
        cursor = get_connection().cursor()
        query = self.__options.workers_of_services
        cursor.execute(query)
        return cursor.fetchall()