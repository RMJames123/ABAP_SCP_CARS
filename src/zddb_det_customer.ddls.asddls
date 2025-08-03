@AbapCatalog.sqlViewName: 'ZV_DET_CUSTR'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Details Customers'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view ZDDB_DET_CUSTOMER
  as select from ztb_customers
{

  key doc_id    as ID,
  key matricula as Matricula,
      nombres   as Nombres,
      apellidos as Apellidos,
      email     as Email,
      cntr_type as TpContrato
}
