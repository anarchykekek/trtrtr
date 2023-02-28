from DataLogicLair.ClientRepository import  *


c = Client_Repository()

res = c.statusOfClients()
for i in res:
    print(i)


