      ******************************************************************
      * Author: Asvanee Arong
      * Date: 30/06/68
      * Purpose: lesson1
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. IF-LESSON.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 USER-NAME PIC X(10).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "ENTER YOUR NAME :".
            ACCEPT USER-NAME.

            IF USER-NAME NOT = SPACE
                DISPLAY "Hello, "USER-NAME
            ELSE
                DISPLAY "YOU DIDN'T ENTER YOUR NAME."
            END-IF.
            STOP RUN.
       END PROGRAM IF-LESSON.
