      ******************************************************************
      * Author : Asvanee Arong
      * Date:30/06/68
      * Purpose:exam02
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 USER-NAME PIC X(10).
       01 MSG PIC X(50).

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "Hello, what is your name:".
            ACCEPT USER-NAME.

            DISPLAY "Result:".
            STRING "HELLO, " DELIMITED BY SIZE
                   USER-NAME DELIMITED BY SPACE
                   ", Welcome to Cobol Programming" DELIMITED BY SIZE
                   INTO MSG
            END-STRING.

            DISPLAY MSG.
            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
