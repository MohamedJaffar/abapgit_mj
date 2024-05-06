CLASS zcl_create_employe DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES : if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_create_employe IMPLEMENTATION.

method if_oo_adt_classrun~main.

DATA : lt_emp TYPE STANDARD TABLE OF zmj_employeeeee.

       lt_emp = value #( ( client = sy-mandt id = 123 name = 'Employe1' )
                         ( client = sy-mandt id = 122 name = 'Employe2' ) ).

       DELETE FROM zmj_employeeeee  .

       insert   zmj_employeeeee FROM TABLE @lt_emp.




endmethod.
ENDCLASS.
