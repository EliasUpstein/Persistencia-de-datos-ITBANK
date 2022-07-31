from importlib.resources import path
import sqlite3

connection = sqlite3.connect('./itbank.db')
cursor = connection.cursor()


A_path = ("sql\reestructura_bd_1.sql")
with open(A_path, 'r') as myfile:
    data = myfile.read()
    cursor.execute(data)


B_path = ("sql\generar_datos_1.sql")
with open(B_path, 'r') as myfile:
    data = myfile.read()
    cursor.execute(data)


#La siguiente ejecucion permite vincular los datos de tipo de cliente de cada cliente en la tabla cuenta, dado que un cliente classic solo puede tener una caja en pesos, a diferencia del cliente classic que puede tener caja en dolares
cursor.execute('SELECT * FROM cuenta')
cuenta = cursor.fetchall()

indice = 0
for row in cuenta:
    sql = f''' 
            UPDATE cuenta
            SET account_type = (SELECT clie.customer_type_id
            FROM cuenta acco INNER JOIN  cliente clie
            ON acco.customer_id = clie.customer_id
            LIMIT 1 OFFSET {indice})
            WHERE account_id in( SELECT account_id FROM cuenta LIMIT 1 OFFSET {indice})
            '''
    cursor.execute(sql)
    indice = indice + 1

#print(cuenta)

connection.commit()
connection.close()
