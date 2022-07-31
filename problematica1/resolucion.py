import sqlite3

connection = sqlite3.connect('./itbank.db')
cursor = connection.cursor()


#La siguiente ejecucion permite vincular los datos de tipo de cliente de cada cliente en la tabla cuenta, dado que un ciente classic solo puede tener una caja en pesos, a diferencia de 
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
