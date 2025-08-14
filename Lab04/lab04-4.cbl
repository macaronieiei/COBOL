      ******************************************************************
      * Author: Asvanee Arong
      * Date:21/07/68
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. FOR-LOOP-DEMO.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-COUNTER PIC 99.
       01 WS-COUNTER2 PIC 99 VALUE 1.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "Start For Loop".
            PERFORM VARYING WS-COUNTER FROM 1 BY 1
               UNTIL WS-COUNTER > 10
               DISPLAY "Current NUMBER :   " WS-COUNTER
            END-PERFORM.
            DISPLAY "Loop Finished!!"

            DISPLAY "----------------------".
            PERFORM UNTIL WS-COUNTER2 > 5
               DISPLAY "Untill Loop Number :   " WS-COUNTER2
               ADD 1 TO WS-COUNTER2
            END-PERFORM.
            DISPLAY "---------------------"
            DISPLAY "WS-COUNTER :   " WS-COUNTER.
            PERFORM WITH TEST AFTER UNTIL WS-COUNTER > 10
               DISPLAY "Test After Loop, Number    :   " WS-COUNTER
            END-PERFORM.
            DISPLAY "---------------------"

            PERFORM 3 TIMES
               DISPLAY "Hello, Cobol"
            END-PERFORM.
            STOP RUN.
       END PROGRAM FOR-LOOP-DEMO.
