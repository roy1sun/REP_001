*&---------------------------------------------------------------------*
*& Report YZTEST002
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT YZTEST002.


DATA gv_okcode TYPE sy-ucomm.
DATA gv_saveok TYPE sy-ucomm.

data lv_01 type char10. ""

CALL SCREEN 100.

MODULE status_0100 OUTPUT.
  SET PF-STATUS '0100'.
ENDMODULE.

MODULE user_command_0100 INPUT.
  CLEAR gv_saveok.
  gv_saveok = gv_okcode.
  CLEAR gv_okcode.
  CASE gv_saveok.
    WHEN '&F03'.
      LEAVE TO SCREEN 0.
    WHEN '&F12'.
      LEAVE PROGRAM.
  ENDCASE.
ENDMODULE.
