CLASS lhc_emp DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR emp RESULT result.

    METHODS create FOR MODIFY
      IMPORTING entities FOR CREATE emp.

    METHODS update FOR MODIFY
      IMPORTING entities FOR UPDATE emp.

    METHODS delete FOR MODIFY
      IMPORTING keys FOR DELETE emp.

    METHODS read FOR READ
      IMPORTING keys FOR READ emp RESULT result.

    METHODS lock FOR LOCK
      IMPORTING keys FOR LOCK emp.

    METHODS rba_Proj FOR READ
      IMPORTING keys_rba FOR READ emp\_Proj FULL result_requested RESULT result LINK association_links.

    METHODS cba_Proj FOR MODIFY
      IMPORTING entities_cba FOR CREATE emp\_Proj.

ENDCLASS.

CLASS lhc_emp IMPLEMENTATION.

  METHOD get_instance_authorizations.
  ENDMETHOD.

  METHOD create.
  ENDMETHOD.

  METHOD update.
  ENDMETHOD.

  METHOD delete.
  ENDMETHOD.

  METHOD read.
  ENDMETHOD.

  METHOD lock.
  ENDMETHOD.

  METHOD rba_Proj.
  ENDMETHOD.

  METHOD cba_Proj.
  ENDMETHOD.

ENDCLASS.

CLASS lhc_proj DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS update FOR MODIFY
      IMPORTING entities FOR UPDATE proj.

    METHODS delete FOR MODIFY
      IMPORTING keys FOR DELETE proj.

    METHODS read FOR READ
      IMPORTING keys FOR READ proj RESULT result.

    METHODS rba_Emp FOR READ
      IMPORTING keys_rba FOR READ proj\_Emp FULL result_requested RESULT result LINK association_links.

ENDCLASS.

CLASS lhc_proj IMPLEMENTATION.

  METHOD update.
  ENDMETHOD.

  METHOD delete.
  ENDMETHOD.

  METHOD read.
  ENDMETHOD.

  METHOD rba_Emp.
  ENDMETHOD.

ENDCLASS.

CLASS lsc_Z114_IEMP_UM DEFINITION INHERITING FROM cl_abap_behavior_saver.
  PROTECTED SECTION.

    METHODS finalize REDEFINITION.

    METHODS check_before_save REDEFINITION.

    METHODS save REDEFINITION.

    METHODS cleanup REDEFINITION.

    METHODS cleanup_finalize REDEFINITION.

ENDCLASS.

CLASS lsc_Z114_IEMP_UM IMPLEMENTATION.

  METHOD finalize.
  ENDMETHOD.

  METHOD check_before_save.
  ENDMETHOD.

  METHOD save.
  ENDMETHOD.

  METHOD cleanup.
  ENDMETHOD.

  METHOD cleanup_finalize.
  ENDMETHOD.

ENDCLASS.
