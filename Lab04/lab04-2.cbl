      ******************************************************************
      * Author: Asvanee Arong
      * Date: 21/07/68
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 SRC-NUMBERS.
           05 WS-AMOUNT PIC S9(4)V99.
       01 EDT-FIELDS.
           05 WS-EDT_Z PIC Z,ZZ9.99.
           05 WS-EDT-ASTERISK PIC **,**9.99.
           05 WS-EDT-FLOAT-DS PIC $$,$$$.99.
           05 WS-EDT-FLOAT-P PIC ++,+++.99.
           05 WS-EDT-FLOAT-M PIC --,---.99.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "Test with +0123.45".
            MOVE +0123.45 TO WS-AMOUNT.

            MOVE WS-AMOUNT TO WS-EDT_Z.
            MOVE WS-AMOUNT TO WS-EDT-ASTERISK.
            MOVE WS-AMOUNT TO WS-EDT-FLOAT-DS.
            MOVE WS-AMOUNT TO WS-EDT-FLOAT-P.
            MOVE WS-AMOUNT TO WS-EDT-FLOAT-M.

            DISPLAY "Zero Suppressions : " WS-EDT_Z
            DISPLAY "Check Protetion   : " WS-EDT-ASTERISK.
            DISPLAY "Floating Dollar   : " WS-EDT-FLOAT-DS.
            DISPLAY "Floating Plus     : " WS-EDT-FLOAT-P.
            DISPLAY "Floating Minus    : " WS-EDT-FLOAT-M.

            MOVE -0123.45 TO WS-AMOUNT.

            MOVE WS-AMOUNT TO WS-EDT-FLOAT-P.
            MOVE WS-AMOUNT TO WS-EDT-FLOAT-M.

            DISPLAY "(+)   : " WS-EDT-FLOAT-P.
            DISPLAY "(-)   : " WS-EDT-FLOAT-M.

            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
