# Dado el siguiente JSON. Insertar 5 nuevos clientes en la base de datos y verificar que se haya 
# realizado con éxito la inserción

import json
import sqlite3

file = open('data/nuevos_clientes.json')
data = json.load(file)

connection = sqlite3.connect('itbank.db')
cursor = connection.cursor()

for item in data:
    cursor.execute('INSERT INTO cliente (customer_name, customer_surname, customer_DNI, dob, branch_id) VALUES (?,?,?,?,?)',
    (item['customer_name'], item['customer_surname'], item['customer_DNI'], item['customer_dob'], item['branch_id']))

cursor.execute('SELECT * FROM cliente WHERE customer_id >= 500')
result = cursor.fetchall()
print(result)

connection.commit()
connection.close()
