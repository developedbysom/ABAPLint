*&---------------------------------------------------------------------*
*& Report ZABAPLINTDEMO
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABAPLINTDEMO.

CLASS MY_NAME_FACTORY DEFINITION FINAL.
  PUBLIC SECTION.
  CLASS-METHODS GET_GREETING
  IMPORTING
    NAME               TYPE STRING
    RETURNING
    VALUE(RV_GREETING) TYPE STRING.
  DATA MV_COUNTER TYPE I.
ENDCLASS.
CLASS MY_NAME_FACTORY IMPLEMENTATION.
  METHOD GET_GREETING.
    RV_GREETING = |Hello { NAME }|.
  ENDMETHOD.
ENDCLASS.

START-OF-SELECTION.
DATA LV_GREETING TYPE STRING.
LV_GREETING = MY_NAME_FACTORY=>GET_GREETING( EXPORTING NAME = 'Abaper' ). " this is very long string
WRITE: / LV_GREETING.
