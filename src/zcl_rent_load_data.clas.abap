CLASS zcl_rent_load_data DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_rent_load_data IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    DATA: lt_brands    TYPE TABLE OF ztb_brands,
          lt_cars      TYPE TABLE OF ztb_cars,
          lt_customers TYPE TABLE OF ztb_customers.


** BRANDS **
    lt_brands = VALUE #(
    ( marca = 'ASTON MARTIN' url = 'https://www.diariomotor.com/marcas/aston-martin/' )
    ( marca = 'AUDI'         url = 'https://www.autocosmos.com.ar/catalogo/segmentos/audi' )
    ( marca = 'BENTLEY'      url = 'https://www.bentleymotors.com/en.html' )
    ( marca = 'BUGATTI'      url = 'https://www.autobild.es/coches/bugatti' )
    ( marca = 'VW'           url = 'https://www.volkswagen.com.ar/es/modelos.html' )
    ( marca = 'BMW'          url = 'https://www.16valvulas.com.ar/bmw-utilizara-un-nuevo-logo-en-sus-autos-mas-lujosos/' )
    ( marca = 'FORD'         url = 'https://www.ford.com.ar/todos/' )
    ( marca = 'HONDA'        url = 'https://autos.honda.com.ar/' )
    ( marca = 'JEEP'         url = 'https://www.jeep.com.ar/compass.html' )
    ( marca = 'KIA'          url = 'https://kiaautodrive.com/' )
    ( marca = 'MERCEDES'     url = 'https://besten.com.ar/' )
    ( marca = 'MINI'         url = 'https://www.mini.com.ar/es_AR/home.html' )
    ( marca = 'SEAT'         url = 'https://www.seat.es/' )
    ).

    DELETE FROM ztb_brands.
    INSERT ztb_brands FROM TABLE @lt_brands.

    out->write( sy-dbcnt ).
    out->write( 'ZTB_BRANDS data inserted succesfully' ).

** CARS **
    lt_cars = VALUE #(
    ( matricula = '1234LYL' marca = 'BMW' modelo = 'SERIE 3' color = 'AZUL' motor = '2.0' potencia = '180' und_potencia = 'CV'
    combustible = 'GASOLINA' consumo = '4.20' fecha_fab = '20200503' puertas = '3' precio = '84' moneda = 'USD' alquilado = 'X' alq_desde = '20250720' alq_hasta = '20250820')
    ( matricula = '1246GSA' marca = 'BMW' modelo = 'SERIE 4' color = 'BLANCO' motor = '2.5' potencia = '210' und_potencia = 'CV'
    combustible = 'GASOLINA' consumo = '7.00' fecha_fab = '20210120' puertas = '5' precio = '210' moneda = 'USD' alquilado = 'X' alq_desde = '20250805' alq_hasta = '20250810')
    ( matricula = '2109OJI' marca = 'MINI' modelo = 'COUPE' color = 'GRIS' motor = '4.0' potencia = '240' und_potencia = 'CV'
    combustible = 'GASOLINA' consumo = '8.00' fecha_fab = '2020418' puertas = '5' precio = '260' moneda = 'USD' alquilado = 'X' alq_desde = '20250805' alq_hasta = '20250810')
    ( matricula = '2149FSA' marca = 'HONDA' modelo = 'ACCORD' color = 'AMARILLO' motor = '2.0' potencia = '160' und_potencia = 'CV'
    combustible = 'HYBRID' consumo = '2.40' fecha_fab = '2021415' puertas = '3' precio = '110' moneda = 'USD' alquilado = 'X' alq_desde = '20250805' alq_hasta = '20250810')
    ( matricula = '2174FHF' marca = 'KIA' modelo = 'CEE''D' color = 'AZUL' motor = '4.2' potencia = '340' und_potencia = 'CV'
    combustible = 'GASOLINA' consumo = '10.00' fecha_fab = '2020617' puertas = '5' precio = '160' moneda = 'USD' alquilado = 'X' alq_desde = '20250805' alq_hasta = '20250810')
    ( matricula = '2188SJS' marca = 'MINI' modelo = 'HATCH' color = 'AZUL' motor = '1.8' potencia = '220' und_potencia = 'CV'
    combustible = 'GASOLINA' consumo = '6.50' fecha_fab = '2020208' puertas = '3' precio = '110' moneda = 'USD' alquilado = 'X' alq_desde = '20250805' alq_hasta = '20250810')
    ( matricula = '2329HFS' marca = 'JEEP' modelo = 'WRANGLER' color = 'VERDE' motor = '2.0' potencia = '180' und_potencia = 'CV'
    combustible = 'GASOLINA' consumo = '8.00' fecha_fab = '2020418' puertas = '5' precio = '260' moneda = 'USD' alquilado = 'X' alq_desde = '20250805' alq_hasta = '20250810')
     ).

    DELETE FROM ztb_cars.
    INSERT ztb_cars FROM TABLE @lt_cars.

    out->write( sy-dbcnt ).
    out->write( 'ZTB_CARS data inserted succesfully' ).

** CUSTOMERS **
    lt_customers = VALUE #(
    ( doc_id = '005638984K' matricula = '1234LYL' nombres = 'Olivia' apellidos = 'Allan' email = 'owen.allan@gmail.com' cntr_type = 'C1')
    ( doc_id = '005638984K' matricula = '1246GSA' nombres = 'Olivia' apellidos = 'Allan' email = 'owen.allan@gmail.com' cntr_type = 'C2')
    ( doc_id = '340958439D' matricula = '2109OJI' nombres = 'Michael' apellidos = 'Short' email = 'jason.short@gmail.com' cntr_type = 'C0')
    ( doc_id = '340958439D' matricula = '2149FSA' nombres = 'Michael' apellidos = 'Short' email = 'jason.short@gmail.com' cntr_type = 'C1')
    ( doc_id = '340958439D' matricula = '2174FHF' nombres = 'Michael' apellidos = 'Short' email = 'jason.short@gmail.com' cntr_type = 'C0')
    ( doc_id = '340958439D' matricula = '2188SJS' nombres = 'Michael' apellidos = 'Short' email = 'jason.short@gmail.com' cntr_type = 'C4')
    ( doc_id = '345093450E' matricula = '2329HFS' nombres = 'Sue' apellidos = 'Sanderson' email = 'joan.sanderson@gmail.com' cntr_type = 'C1')

    ).

    DELETE FROM ztb_customers.
    INSERT ztb_customers FROM TABLE @lt_customers.

    out->write( sy-dbcnt ).
    out->write( 'ZTB_CUSTOMERS data inserted succesfully' ).



  ENDMETHOD.
ENDCLASS.
