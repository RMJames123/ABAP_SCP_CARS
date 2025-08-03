@AbapCatalog.sqlViewName: 'ZV_REM_DAYSR'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Remaining Days'
@Metadata.ignorePropagatedAnnotations: true
define view ZDDB_REM_DAYS
  as select from ztb_cars
{

  key matricula                                                                 as Matricula,
      marca                                                                     as Marca,
      case
      when alq_hasta <> '' 
      then dats_days_between( cast( $session.system_date as abap.dats ), alq_hasta )
      else 0
      end as Dias 

}
