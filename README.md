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
  - [Problematica 2](#problematica-1)
  - [Problematica 3](#problematica-1)
  - [Problematica 4](#problematica-1)
  
  - [Detalles del desafio](#detalles-del-desafio)
    - Tipos de Clientes
    - Tipos de Cuentas
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
Se partio de una BD que consta de 5 tablas:
  - Cliente
  - Prestamos 
  - Cuenta
  - Sucursal
  - Empleado
Estas tablas tienen sus campos Foreign Key `FK` creados pero sin su restriccion asignada.  

- Se debe crear en la base de datos los `tipos de cliente`, `tipo de cuenta` y `marcas de tarjeta`. Ademas, agregar la entidad `Tarjeta` y `Direccion`.
- La entidad `tarjeta` debe contener los atributos necesarios para la operación del home banking: 
      - Numero (único e irrepetible, con una restricción ante cada inserción que no debe superar 20 números/espacios)
      - CVV
      - Fecha de otorgamiento
      - Fecha Expiración
      - Tarjeta de crédito o débito.

- Se debe corregir el problema actual de no tener asignada la restriccion de FK en las tablas iniciales.
- Se debera ingresar parte de los nuevos valores según la información provista en el Sprint 5.

- Agregar la entidad tarjeta teniendo en cuenta los atributos
necesarios para la operación del home banking (se sugieren los
siguientes campos Numero (único e irrepetible, con una restricción
ante cada inserción que no debe superar 20 números/espacios), CVV,
Fecha de otorgamiento, Fecha Expiración). Almacenar si es una
tarjeta de crédito o débito.
- Relacionar las tarjetas con la tabla donde se guardan las marcas de
tarjeta
- Relacionar las tarjetas con el cliente al que pertenecen
- Insertar 500 tarjetas de crédito con sus respectivos datos
(www.generatedata.com) asociándolas a los clientes de forma
aleatoria
- Agregar la entidad direcciones, que puede ser usada por los clientes,
empleados y sucursales con los campos utilizados en el SPRINT 5
- Insertar 500 direcciones, asignando del lote inicial a empleados,
clientes o sucursal de forma aleatoria. Teniendo en cuenta que un
cliente o empleado puede tener múltiples direcciones, pero la
sucursal, solo una.
- Ampliar el alcance de la entidad cuenta para que identifique el tipo de
la misma
- Asignar un tipo de cuenta a cada registro de cuenta de forma
aleatoria
- Corregir el campo employee_hire_date de la tabla empleado con la
fecha en formato YYYY-MM-DD

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

## Requerimientos especificos

El equipo de arquitectura de TI del ITBANK estableció los siguientes `principios`:
  - Se debe utilizar `programación orientada a objetos` para generar la nueva aplicación.
  - Existe un diagrama de clases estándar en la compañía que sirve como guía, por lo que se pueden cambiar para cubrir las necesidades del proyecto.
  - Para los cálculos que se realizan en funciones que se implementaron, se tiene que llamar al paquete o módulo y ejecutarlas.
  - Se puede utilizar una librería para generar el HTML o implementar las clases para generarlo.
  - Se debe validar que los archivos JSON estén correctamente formateados.

El reporte emitido debe incluir:
  - Nombre de cliente
  - Número
  - DNI
  - Dirección 
  - Fecha de cada transaccion
  - Tipo de operacion y su estado
  - Monto y razon por la cual se rechazo, `vacío en caso de ser aceptada`

Se pide que el reporte sea una `página en HTML` válida de forma que el browser estándar del banco lo pueda interpretar y visualizar.
La salida del sistema TPS es un `archivo JSON` con las transacciones que debemos procesar.
  
## Aclaraciones y acotaciones


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

