      ******************************************************************
      * Author: Asvanee Arong
      * Date: 04/08/68
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. NUM-MULTIPLY.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 COUNTER          PIC 99     VALUE 1.
       01 NUM              PIC 99.
       01 RESULT           PIC 999.
       01 DISPLAY-NUM      PIC Z(3).
       01 DISPLAY-RESULT   PIC Z(3).
       01 DISPLAY-COUNTER  PIC Z(2).
       01 MUL-TIME         PIC 99.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "Enter a number : ".
           ACCEPT NUM.

           PERFORM UNTIL COUNTER > 12
               MOVE 0 TO RESULT
               MOVE 0 TO MUL-TIME

               PERFORM UNTIL MUL-TIME = COUNTER
                   ADD NUM TO RESULT
                   ADD 1 TO MUL-TIME
               END-PERFORM

               MOVE NUM TO DISPLAY-NUM
               MOVE RESULT TO DISPLAY-RESULT
               MOVE COUNTER TO DISPLAY-COUNTER

               DISPLAY DISPLAY-NUM " x " DISPLAY-COUNTER " = "
               DISPLAY-RESULT
               ADD 1 TO COUNTER
           END-PERFORM
           STOP RUN.
       END PROGRAM NUM-MULTIPLY.
