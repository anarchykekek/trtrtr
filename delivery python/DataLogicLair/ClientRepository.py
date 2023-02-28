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