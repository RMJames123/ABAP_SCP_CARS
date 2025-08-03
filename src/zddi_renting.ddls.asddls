@AbapCatalog.sqlViewName: 'ZV_RENTR'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Renting'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view ZDDI_RENTING
  as select from ZDDB_CARS as Cars
  association [1]    to ZDDB_REM_DAYS     as _RemDays     on Cars.Matricula = _RemDays.Matricula
  association [0..1] to ZDDB_BRANDS       as _Brands      on Cars.Marca     = _Brands.Marca
  association [0..*] to ZDDB_DET_CUSTOMER as _DetCustomer on Cars.Matricula = _DetCustomer.Matricula
{
  key Matricula,
      Marca,
      Modelo,
      Color,
      Motor,
      Potencia,
      Unidad,
      Combustible,
      Consumo,
      FechaFabricacion,
      Puertas,
      Precio,
      Moneda,
      Alquilado,
      Desde,
      Hasta,
      case
      when _RemDays.Dias <= 0 then 0
      when _RemDays.Dias between 1 and 30 then 1
      when _RemDays.Dias between 31 and 100 then 2
      when _RemDays.Dias > 100 then 3
      else 0
      end as TiempoRenta,
      '' as Estado,
      _Brands.Imagen,
      _DetCustomer
}
