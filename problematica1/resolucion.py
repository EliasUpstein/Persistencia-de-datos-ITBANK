from importlib.resources import path
import sqlite3
import os


def exSql(path):
    file = open(path, 'r')
    data = file.read()
    cursor.execute(data)



#La siguiente ejecucion permite vincular los datos de tipo de cliente de cada cliente en la tabla cuenta, dado que un cliente classic solo puede tener una caja en pesos, a diferencia del cliente classic que puede tener caja en dolares
def tipoClienteACuenta(cuenta, cursor):
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

if __name__ == "__main__":
    connection = sqlite3.connect('./itbank.db')
    cursor = connection.cursor()

    #A_path = os.path.join("sql", "1_reestructura_bd_A.sql")
    A_path = "problematica1/sql/1_reestructura_bd_A.sql"
    exSql(A_path)

    #B_path = os.path.join("sql", "2_generar_datos_A.sql")
    B_path = "problematica1/sql/2_generar_datos_A.sql"
    exSql(B_path)

    cursor.execute('SELECT * FROM cuenta')
    cuenta = cursor.fetchall()
    #Para poder ejecutar esta funcion es necesario haber ejecutado los primeros 2 sql.
    tipoClienteACuenta(cuenta, cursor)
    connection.commit()
    connection.close()
