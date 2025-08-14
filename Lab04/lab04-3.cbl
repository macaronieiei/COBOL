      ******************************************************************
      * Author: Asvanee Arong
      * Date:21/07/68
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. DEMO-REDEFINE.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 RAW-DATA.
           05 RAW-PAY-STRING PIC X(6).
       01 NUMBERIC-VIEW REDEFINES RAW-DATA.
           05 HOURLY-RATE  PIC 99V9999.
           05 WEEKLY-SALARY REDEFINES HOURLY-RATE PIC 9999V99.
       01 DISPLAY-FIELDS.
           05 DISPLAY-HOURLY PIC Z9.9999.
           05 DISPLAY-SALARY PIC $Z,ZZ9.99.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            MOVE "020000" TO RAW-PAY-STRING.
            DISPLAY "Raw Data is   :   " RAW-PAY-STRING.
            DISPLAY " ".
            DISPLAY "Useage Case 1    : If employee is Hourly...  "
            MOVE HOURLY-RATE TO DISPLAY-HOURLY.
            DISPLAY "Interpreted Hourly Rate Is    " DISPLAY-HOURLY.
            DISPLAY "Useage Case 2    : If employee is Salried...  "
            MOVE WEEKLY-SALARY TO DISPLAY-SALARY.
            DISPLAY "Interpreted Hourly Rate Is    " DISPLAY-SALARY.
            STOP RUN.
       END PROGRAM DEMO-REDEFINE.
