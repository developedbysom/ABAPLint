*&---------------------------------------------------------------------*
*& Report ZABAPLINTDEMO
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABAPLINTDEMO.

CLASS LCl_MY_NAME_FACTORY DEFINITION FINAL.
  PUBLIC SECTION.
  CLASS-METHODS GET_GREETING
  IMPORTING
    IM_NAME               TYPE STRING
    RETURNING
    VALUE(RV_GREETING) TYPE STRING.
*  DATA MV_COUNTER TYPE I.
ENDCLASS.
CLASS LCL_MY_NAME_FACTORY IMPLEMENTATION.
  METHOD GET_GREETING.
    RV_GREETING = |Hello { IM_NAME }|.
  ENDMETHOD.
ENDCLASS.

START-OF-SELECTION.
DATA LV_GREETING TYPE STRING.
LV_GREETING = LCL_MY_NAME_FACTORY=>GET_GREETING(  IM_NAME = 'Abaper' ). " this is very long string
WRITE: / LV_GREETING.
