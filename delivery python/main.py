from DataLogicLair.ClientRepository import  *


c = Client_Repository()

#res = c.statusOfClients()
#for i in res:
#   print(i)


ttyty = c.workersOfServices()
for i in ttyty:
    print(i)