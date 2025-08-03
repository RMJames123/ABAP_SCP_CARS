@AbapCatalog.sqlViewName: 'ZV_CARSR'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cars'
@Metadata.ignorePropagatedAnnotations: true
define view ZDDB_CARS
  as select from ztb_cars
{
  key matricula    as Matricula,
      marca        as Marca,
      modelo       as Modelo,
      color        as Color,
      motor        as Motor,
      potencia     as Potencia,
      und_potencia as Unidad,
      combustible  as Combustible,
      consumo      as Consumo,
      fecha_fab    as FechaFabricacion,
      puertas      as Puertas,
      precio       as Precio,
      moneda       as Moneda,
      alquilado    as Alquilado,
      alq_desde    as Desde,
      alq_hasta    as Hasta

}
