from ctypes import c_bool
from distutils.log import error
from importlib.resources import path
import sqlite3

#Ejecuta un script de sql referenciado por un path
def exSql(path):
    try:
        file = open(path, 'r')
        data = file.readlines()
        sqlString = " ".join(data)
        print(sqlString)
        cursor.executescript(sqlString)
    except FileNotFoundError:
        print("Ruta no encontrada.")
    
"""La siguiente ejecucion permite vincular los datos de tipo de cliente de cada cliente en la tabla cuenta, dado que un cliente classic solo puede tener una caja en pesos, a diferencia del cliente black que puede tener caja en dolares y cuenta corriente en pesos"""
def tipoClienteACuenta(cuenta, cursor):
    try:
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
        print("""
            Se ejecuto el siguiente script iterado por cada cliente
            UPDATE cuenta
                    SET account_type = (SELECT clie.customer_type_id
                    FROM cuenta acco INNER JOIN  cliente clie
                    ON acco.customer_id = clie.customer_id
                    LIMIT 1 OFFSET {iterador})
                    WHERE account_id in( SELECT account_id FROM cuenta LIMIT 1 OFFSET {iterador})
            """)
    except error as e:
        print(e)


#Se destaca que la ejecucion debe ser en el orden explicitado dado que de lo contario habran fallas en la ejecucion por la necesidad de que existan valores previos o bien referencias a tablas existentes. Vease el resultado del diagrama entidad-relacion en la carpeta assets o bien en el readme.
if __name__ == "__main__":
    #Creamos la coneccion con la bd
    connection = sqlite3.connect('./itbank.db')
    cursor = connection.cursor()

    """Primer etapa de reestructura de la bd, ver en detalle en el siguiente script comentado. 
    Reestablece las foreign key faltantes, crea las nuevas tablas."""
    A_path = "problematica1/sql/1_reestructura_bd_A.sql"
    exSql(A_path)

    """Primer etapa de generacion y asignacion de datos, ver en detalle el scipt comentado"""
    B_path = "problematica1/sql/2_generar_datos_A.sql"
    exSql(B_path)

    """Vinculando los datos de tipo de cliente que habilitan el tipo de cuenta que un cliente puede tener"""
    cursor.execute('SELECT * FROM cuenta')
    cuenta = cursor.fetchall()
    tipoClienteACuenta(cuenta, cursor)

    """Agregando los datos random de tipo de cuenta que respetan el tipo de cliente que es el cliente, ver en detalle el sql especificado."""
    C_path = "problematica1/sql/3_generar_datos_B.sql"
    exSql(C_path)

    """Agregando los datos random de direccion, ver en detalle el sql especificado."""
    D_path = "n"
    exSql(D_path)

    """Segunda etapa de la reestructuracion de la BD, Se vincula la Fk Sucursal a la tabla Direcciones"""
    E_path = "n"
    exSql(E_path)

    """Ultima etapa generacion de datos en la BD, Se crean los datos de tarjeta de credito, corregir el formato de fechas de la tabla empleados, Se crean los datos random de Las FK nuevas por las nuevas tablas."""
    F_path = "n"
    exSql(F_path)


    print("Ejecucion completa")
    connection.commit()
    connection.close()

#Agregar una carpeta de src para permitir agrear la bd desde 0 o una similar si asi lo deseara alguien, se debera partir de las mismas condiciones que la inicial.
#Reintegrar la resolucion de la tarea 3 que hizo elias, creo qeu la elimine sin querer.
#documentacion
#consultar si falta algo de la problemtica 4
#revisar que corran todas las resoluciones
#recomendar realizar la ejecucion comenzando necesariamente por la problematica 1, para trabajar sobre la BD Reestruturada y completa
#considerar agregar mas de una direccion a algunos empleados o clientes, como tuplas