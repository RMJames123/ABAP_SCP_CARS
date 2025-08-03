CLASS zcl_data_delete DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_data_delete IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.
    DELETE FROM ztb_brands.
    IF sy-subrc EQ 0.
      out->write( 'ZTB_BRANDS all data deleted' ).
    ENDIF.
  ENDMETHOD.
ENDCLASS.
