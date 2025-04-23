*&---------------------------------------------------------------------*
*& Report ZPB_FIBONACCI
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZPB_FIBONACCI.

DATA: LV_N1 TYPE I VALUE 0,
      LV_N2 TYPE I VALUE 1,
      LV_NEXT TYPE I,
      LV_COUNT TYPE I VALUE 10,
      IT_FIB TYPE TABLE OF I,
      WA_FIB TYPE I,
      LV_INDEX TYPE I.

DO LV_COUNT TIMES.
IF LV_INDEX = 0.
LV_NEXT =  LV_N1.
ELSEIF LV_INDEX = 1.
LV_NEXT = LV_N2.
ELSE.
LV_NEXT = LV_N1 + LV_N2.
LV_N1 = LV_N2.
LV_N2 = LV_NEXT.
ENDIF.

APPEND LV_NEXT TO IT_FIB.
LV_INDEX = LV_INDEX + 1.

ENDDO.

LOOP AT IT_FIB INTO WA_FIB.
WRITE: / WA_FIB.
ENDLOOP.