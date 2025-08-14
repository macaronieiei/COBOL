      ******************************************************************
      * Author:Asvanee Arong
      * Date:30/06/68
      * Purpose:exam04
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 score_1 PIC 99.
       01 score_2 PIC 99.
       01 total PIC 99.
       01 grade PIC X(10).
       01 USER-NAME PIC X(10).
       01 MSG PIC X(60).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "ENTER YOUR NAME :"
            ACCEPT USER-NAME.
            DISPLAY "ENTER SCORE1 :".
            ACCEPT score_1.
            DISPLAY "ENTER SCORE2 :".
            ACCEPT score_2.
            IF score_1 > 50
                DISPLAY "YOUR SCORE1 MORE THAN 50"
            END-IF.
            IF score_2 > 50
               DISPLAY "YOUR SCORE2 MORE THAN 50"
            END-IF.
            IF score_1 <= 50 AND score_2 <= 50
                DISPLAY "RESULT : "
                ADD score_1 score_2 GIVING total
                IF total >= 0 AND total <= 49
                   MOVE 'F' to grade
                    END-IF
                IF total >= 50 AND total <= 59
                    MOVE 'D' to grade
                    END-IF
                IF total >= 60 AND total <= 69
                    MOVE 'C' to grade
                    END-IF
                IF total >= 70 AND total <= 79
                    MOVE 'B' to grade
                    END-IF
                IF total >= 80 AND total <= 100
                    MOVE 'A' to grade
                    END-IF
            STRING USER-NAME DELIMITED BY SPACE
                   " HAS TOTAL SCORES IS "total", YOU GOT GRADE "grade
                   INTO MSG
            END-STRING
            DISPLAY MSG
            END-IF.

            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
