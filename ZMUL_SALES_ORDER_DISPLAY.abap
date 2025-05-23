*&---------------------------------------------------------------------*
*& Report ZMUL_SALES_ORDER_DISPLAY
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZMUL_SALES_ORDER_DISPLAY.
DATA: LV_VBELN TYPE VBELN_VA.
"DECLARE OBJECT
DATA: LO_OBJECT TYPE REF TO ZUAC_SALES_ORDER_DETAILS.
DATA: LT_FINAL TYPE ZTSTR_SALES_DETAILS_PB.
DATA: LWA_FINAL TYPE ZSTR_SALES_DETAILS_PB.

SELECT-OPTIONS: S_VBELN FOR LV_VBELN.

"CREATE OBJECT
CREATE OBJECT LO_OBJECT.

CALL METHOD LO_OBJECT->GET_MULTIPLE_DATA
  EXPORTING
    SVBELN    = S_VBELN[]
  IMPORTING
    LT_OUTPUT = LT_FINAL
    .

LOOP AT LT_FINAL INTO LWA_FINAL.
  WRITE: / LWA_FINAL-VBELN, LWA_FINAL-ERDAT, LWA_FINAL-ERZET, LWA_FINAL-ERNAM,  LWA_FINAL-POSNR, LWA_FINAL-MATNR.
  ENDLOOP.