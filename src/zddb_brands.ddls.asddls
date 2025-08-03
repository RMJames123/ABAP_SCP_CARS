@AbapCatalog.sqlViewName: 'ZV_BRANDSR'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Brands'
@Metadata.ignorePropagatedAnnotations: true
define view ZDDB_BRANDS
  as select from ztb_brands
{
  key marca as Marca,
      @UI.hidden: true
      url   as Imagen

}
