      ******************************************************************
      * Author:Asvanee Arong
      * Date:30/06/68
      * Purpose:exam03
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 score_1 PIC 99.
       01 score_2 PIC 99.
       01 result_1 PIC 99.
       01 result_2 PIC 99.
       01 result_3 PIC 99.
       01 result_4 PIC 99.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "SCORE1 :"
            ACCEPT score_1.
            DISPLAY "SCORE2 :"
            ACCEPT score_2.

            ADD score_1 score_2 GIVING result_1.
            SUBTRACT score_1 FROM score_2 GIVING result_2.
            MULTIPLY score_1 BY score_2 GIVING result_3.
            DIVIDE score_1 BY score_2 GIVING result_4.

            DISPLAY "RESULT : "
            DISPLAY score_1 " + " score_2 " = " result_1.
            DISPLAY score_1 " - " score_2 " = " result_2.
            DISPLAY score_1 " * " score_2 " = " result_3.
            DISPLAY score_1 " / " score_2 " = " result_4.
            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
