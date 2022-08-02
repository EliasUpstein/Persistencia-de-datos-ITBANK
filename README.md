# Persistencia-de-datos-ITBANK
Este repositorio es una manipulacion y actualizacion a una base de datos `BD` propuesta por la escuela de innovación del ITBA en el SPRINT 6 de su curso de desarrollador fullstack.

ITBANK tiene un modelo de datos definido para la operación de su negocio. El
modelo de datos permite conocer:
- Los tipos de los datos que hay en la base y la forma en que se relacionan.
- Las restricciones de integridad
- Entender cómo llevar adelante operaciones de manipulación de los datos

## Table of contents
  - [Diagrama Entidad-Relacion Inicial](#diagrama-entidad-relacion-inicial)
  - [Diagrama Entidad-Relacion Reestructurado](#diagrama-entidad-relacion-reestructurado)
  - [Problematica 1](#problematica-1)
    - [Requerimientos 1](#requerimientos-1)
  - [Problematica 2](#problematica-2)
  - [Problematica 3](#problematica-3)
  - [Problematica 4](#problematica-4)
  
  - [Detalles del desafio](#detalles-del-desafio)
    - Tipos de Clientes
    - Tipos de Cuentas
    - Atributos entidad tarjeta
    - Direcciones
  - [Requerimientos especificos](#requerimientos-especificos)
  - [Aclaraciones y acotaciones](#aclaraciones-y-acotaciones)
    - [Referencias](#referencias)
  - [Links](#links)
  - [Autores](#autores)

## Diagrama Entidad-Relacion Inicial
![Diagrama Entidad-Relacion Inicial](/assets/Diagrama%20Inicial.jpg)

## Diagrama Entidad-Relacion Reestructurado
![Diagrama Entidad-Relacion](/assets/Diagrama.svg)

## Problematica 1
Se solicita reestructurar la Base de Datos.
Se partio de una `BD` que consta de 5 tablas:
  - Cliente
  - Prestamos 
  - Cuenta
  - Sucursal
  - Empleado
Estas tablas tienen sus campos Foreign Key `FK` creados pero sin su restriccion asignada.  
`Ver los requerimientos.`

### Requerimientos 1
- Se debe crear en la base de datos los `tipos de cliente`, `tipo de cuenta` y `marcas de tarjeta`. Ademas, agregar la entidad `Tarjeta` y `Direccion`.
- Se debe corregir el problema actual de no tener asignada la `restriccion de FK` en las tablas iniciales.
- Se debera ingresar parte de los nuevos valores según la información provista en el Sprint 5, se detalla en el apartado [Detalles del desafio](#detalles-del-desafio).
- Se necesita ampliar el alcance de la entidad `cuenta` para que identifique el `tipo` de la misma.
- Corregir el campo employee_hire_date de la tabla empleado con la fecha en formato YYYY-MM-DD.

- Es necesario crear las siguientes relaciones mediante FK:
    - Las tarjetas con las marcas de tarjeta
    - Las tarjetas con el cliente al que pertenecen

- Es necesario insertar:  
    - 500 tarjetas de crédito con sus respectivos datos asociándolas a los clientes de forma aleatoria.
    - 500 direcciones, asignando del lote inicial a empleados, clientes o sucursal de forma aleatoria. 

- Por ultimo, es necesario generar los datos que correspondientes a todos lo `FK` nuevos correspondientes a las nuevas tablas.

## Problematica 2
Una vez realizado los cambios en la base de datos, se pide entregar un archivo SQL con los siguientes requerimientos de consulta frecuente:

Crear una vista con las columnas `id`, `numero sucursal`, `nombre`, `apellido`, `DNI` y `edad` de la tabla `cliente`, calculada a partir de la `fecha de nacimiento`.
  - Mostrar las columnas de los clientes, ordenadas por el DNI de menor a mayor y cuya edad sea superior a 40 años.
  - Mostrar todos los clientes que se llaman “Anne” o “Tyler” ordenados por edad de menor a mayor

Dado el `JSON` suministrado en la carpeta `data`. Insertar 5 nuevos clientes en la base de datos y verificar que se haya realizado con éxito la inserción. 
  - Actualizar 5 clientes recientemente agregados en la base de datos dado que hubo un error en el JSON que traía la información, la sucursal de todos es la 10.
  - Eliminar el registro correspondiente a “Noel David” realizando la selección por el nombre y apellido.
  - Consultar sobre cuál es el tipo de préstamo de mayor importe.

## Problematica 3

## Problematica 4


## Detalles del desafio
### Tipos de clientes
- `Classic`
  - Tiene solamente `una` tarjeta de débito que se crea junto con el cliente.
  - Solo tiene `una caja ahorro` en pesos creada cuando se dio de alta el cliente.
  - Como `no tiene` cuenta en dólares, no puede comprar y vender dólares.
  - Solo se le permite retirar hasta un máximo de `$10.000 diarios` por cajero.
  - `No tienen` acceso a tarjetas de crédito, ni chequeras.
  - La comisión por transferencias hechas es de `1%`.
  - No puede recibir transferencias `mayores a $150.000` sin previo aviso.

- `Gold`
  - Tiene `una` tarjeta de débito que se crea con el cliente.
  - Tiene `una cuenta corriente` con un descubierto de `$10.000`. Hay que tener presente que como tiene cuenta corriente el saldo en la cuenta podría ser negativo y `hasta -$10.000` si tiene cupo diario para la operación que se quiera realizar.
  - Tiene `una` caja de ahorro en dólares, por lo que puede comprar dólares.
  - Puede tener solo `una` tarjeta de crédito.
  - Las extracciones de efectivo tienen un máximo de `$20.000 por día`.
  - `Pueden` tener una chequera.
  - La comisión por transferencias hechas es de `0,5%`.
  - No puede recibir transferencias `mayores a $500.000` sin previo aviso.

- `Black`
  - Los clientes Black tienen una `caja de ahorro en pesos`, `cuenta corriente en pesos`, y una `caja de ahorro en dólares`.
  - Pueden tener un descubierto en su cuenta corriente de `hasta $10.000`.
  - Pueden tener hasta `5` tarjetas de crédito.
  - Pueden extraer `hasta $100.000 por día.`
  - Pueden tener hasta `dos` chequeras.
  - No se aplican comisiones a las transferencias.
  - Pueden recibir transferencias por cualquier monto sin previa autorización.

### Tipos de cuentas
  - Caja de ahorro en pesos
  - Caja de ahorro en dólares
  - Cuenta Corriente

### Atributos entidad Tarjeta
La entidad `tarjeta` debe contener los atributos necesarios para la operación del home banking: 
      - Numero (único e irrepetible, con una restricción ante cada inserción que no debe superar 20 números/espacios)
      - CVV
      - Fecha de otorgamiento
      - Fecha Expiración
      - Tarjeta de crédito o débito.

### Direcciones
La entidad `direccion` puede ser usada por los `clientes`, `empleados` y sucursales con los campos utilizados en el SPRINT 5:
 - Calle
 - Numero
 - Ciudad
 - Provincia
 - Pais
Tener en cuenta que un cliente o empleado puede tener múltiples direcciones, pero la sucursal, solo una. 
A su vez, las direcciones que ocupen las sucursales son exclusivas, a diferencia de las ocupadas por clientes o empleados que se pueden contemplar excepciones, tales como que haya familiares de compartan domicilio dentro de una de las tablas o dentro de ambas.

## Requerimientos especificos
Se pide resolver todas las problematicas partiendo de resoluciones en `SQL`.
  
## Aclaraciones y acotaciones
La generacion de datos aleatoria respecto a `tipo de cuenta` en la tabla `cuenta`, o los datos suminitrados a la nueva entidad `tarjeta`; debe contemplar que no todos los `clientes` estan habilitados a tener cualquier tipo de tarjeta o cualquier tipo de cuenta dado que esto se restringe al relacionarse con el `tipo de cliente` que el mismo es.

### Referencias
- [Generador de valores](https://generatedata.com/)

## Links del proyecto
- Solution URL: (https://github.com/EliasUpstein/Persistencia-de-datos-ITBANK)

## Autores
#### Korzusehec, Nicolás
- GitHub - [@NicolasKorzusehec](https://github.com/NicolasKorzusehec)
- LinkedIn - [Nicolás Korzusehec](https://www.linkedin.com/in/nicol%C3%A1s-korzusehec/)

#### Upstein, Elias Román
- GitHub - [@EliasUpstein](https://github.com/EliasUpstein)
- LinkedIn - [/]()

#### Ledesma, Juan Ignacio
- GitHub - [@juanignacio97](https://github.com/juanignacio97)
- LinkedIn - [Juan Ignacio Ledesma](https://www.linkedin.com/in/juanignacioledesma/)

#### Molinas, Nicolás 
- GitHub - [@NicolasGabM](https://github.com/NicolasGabM)
- LinkedIn - [Nicolas Gabriel Molinas](https://www.linkedin.com/in/nicolas-gabriel-molinas-20802a216/)

