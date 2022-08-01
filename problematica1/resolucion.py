from importlib.resources import path
from logging import exception
import sqlite3

#Ejecuta un script de sql referenciado por un path
def exSql(path, n = 0):
    try:
        file = open(path, 'r', encoding="utf8")
        data = file.readlines()
        sqlString = " ".join(data)
        #la variable n es opcional para que si una de las ejecuciones es demasiada extensa no se imprima en consola, puede aplicarse a cualquier ejecucion de los script sql.
        print("Se esta realizando un proceso. Espere por favor.")
        if n == 0: 
            print(sqlString)
        cursor.executescript(sqlString)
        print("Ya termino el proceso.")
    except FileNotFoundError:
        print(f"Ruta no encontrada. {path}")
    
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
            --Se ejecuto el siguiente script iterado por cada cliente
            UPDATE cuenta
                    SET account_type = (SELECT clie.customer_type_id
                    FROM cuenta acco INNER JOIN  cliente clie
                    ON acco.customer_id = clie.customer_id
                    LIMIT 1 OFFSET {iterador})
                    WHERE account_id in( SELECT account_id FROM cuenta LIMIT 1 OFFSET {iterador})
            """)
    except exception as e:
        print(e)

#Asigna un customer id a cada tarjeta. Optamos por vincular tal y como estan los customer id, considerando que estarian ordenados de tal formar que los dni de cada cliente fueran de menor a mayor.
#Se destaca que de igual modo que con los tipos de cuenta es necesario categorizar si un cliente esta habilitado o no a tener una tarjeta de credito, o mas. En esta oasion no se resolvera aun que parte de la solucion propuesta en la solucion del mismo conflicto para los tipos de cuenta.
def asignarTarjeta(cursor):
    cursor.execute('SELECT customer_id FROM cliente ORDER by customer_DNI DESC')
    customer_id = cursor.fetchall()
    #print(customer_id)
    indice = 0 
    while indice < len(customer_id):
        #Hay que identificar que los valores que trajo customer_id son tuplas de un unico valor.
        value = customer_id[indice][0] 
        sql = f''' 
                UPDATE tarjeta SET customer_id = {value}
                WHERE card_id IN 
                (SELECT card_id FROM tarjeta
                ORDER BY card_id LIMIT 1 OFFSET {indice})
                '''
        if indice < 10:
            print(sql)
        cursor.execute(sql)
        indice = indice + 1


"""Se genera una lista del 1 al 1500, se eliminan los numeros ocupados por las sucursales, los mismos tienen un valor maximo que no supera el id 800. luego se ira creando una lista random que reordene los valores que quedaron"""
def asignarDireccion():
    cursor.execute('SELECT branch_address_id FROM sucursal ORDER by branch_address_id') 
    #Devuelve una lista de tuplas de un elemento.
    branch_address_id = cursor.fetchall()
    print(branch_address_id)
    indice = 1000000 
    while indice < len(branch_address_id):
        #Hay que identificar que los valores que trajo customer_id son tuplas de un unico valor.
        value = branch_address_id[indice][0] 
        sql = f''' 
                UPDATE tarjeta SET customer_id = {value}
                WHERE card_id IN 
                (SELECT card_id FROM tarjeta
                ORDER BY card_id LIMIT 1 OFFSET {indice})
                '''
        if indice < 10:
            print(sql)
        cursor.execute(sql)
        indice = indice + 1


#Se destaca que la ejecucion debe ser en el orden explicitado dado que de lo contario habran fallas en la ejecucion por la necesidad de que existan valores previos o bien referencias a tablas existentes. Vease el resultado del diagrama entidad-relacion en la carpeta assets o bien en el readme.
#Se destaca que el programa corre unicamente si se escriben los path de los archivo con el divisor '/'. Mas adelante se encarara resolver el conflicto con el modulo os.
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

    """Creando la tabla direccion y agregando los datos random de direccion.
    Se deben generar 1500 direcciones dado que inequivocamente 500 son exclusivamente para las sucursales, mientras que las otras 1000 pueden relacionarse de tal manera  que se suponga que alguno de los empleados o clientes pueden ser parientes y compartir domicilio. Para facilitar la solucion se opta por generar un domicilio por cada persona. ver en detalle el sql especificado.
    Para los clientes ingresados en la problematica 2 se recurrira a repetir alguna de las direcciones que sean clientes existentes."""
    D_path = "problematica1/sql/4_generar_datos_C.sql"
    exSql(D_path, 1)

    """Segunda etapa de la reestructuracion de la BD, Se vincula la Fk Sucursal a la tabla Direcciones."""
    E_path = "problematica1/sql/5_reestructura_bd_B.sql"
    exSql(E_path)

    """Se crean los datos de marca de tarjeta y de tarjeta creadas."""
    F_path = "problematica1/sql/6_generar_datos_D.sql"
    exSql(F_path, 1)

    #Asigna los valores de customer_id a cada tarjeta
    asignarTarjeta(cursor)

    #Asigna los valores de customer_addres_id a cada cliente y a cada empleado.
    #asignarDireccion(cursor)

    """Ultima etapa generacion de datos en la BD, Se crean los datos de tarjeta de credito, corregir el formato de fechas de la tabla empleados, Se crean los datos random de Las FK nuevas por las nuevas tablas."""
    F_path = "n"
    exSql(F_path)

    print("Ejecucion completa")
    connection.commit()
    connection.close()

