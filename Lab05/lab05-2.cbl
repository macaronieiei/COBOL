      ******************************************************************
      * Author: Asvanee Arong
      * Date: 04/08/68
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. LAB-REDEFINES.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-INPUT-AREA.
           05 WS-INPUT-DATE    PIC X(8).

       01 WS-DATE-PARSED REDEFINES WS-INPUT-AREA.
           05 WS-YEAR          PIC x(4).
           05 WS-MONTH         PIC XX.
           05 WS-DAY           PIC XX.

       01 WS-DISPLAY-DATE-1.
           05 DISPLAY1-DAY     PIC XX.
           05 FILLER           PIC X   VALUE "/".
           05 DISPLAY1-MONTH   PIC XX.
           05 FILLER           PIC X   VALUE "/".
           05 DISPLAY1-YEAR    PIC X(4).

       01 WS-DISPLAY-DATE-2.
           05 DISPLAY2-DAY     PIC XX.
           05 FILLER           PIC X   VALUE "-".
           05 DISPLAY2-MONTH   PIC X(3).
           05 FILLER           PIC X   VALUE "-".
           05 DISPLAY2-YEAR    PIC X(4).

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "Please enter date in YYYYMMDD format :".
            ACCEPT WS-INPUT-DATE.
            DISPLAY " ".

      *>       TYPE1
           MOVE WS-MONTH TO DISPLAY1-MONTH.
           MOVE WS-DAY TO DISPLAY1-DAY.
           MOVE WS-YEAR TO DISPLAY1-YEAR.
           DISPLAY "Refoematted Date (MM/DD/YYYY) : " WS-DISPLAY-DATE-1.

      *>      TYPE2
           EVALUATE WS-MONTH
               WHEN "01" MOVE "JAN" TO DISPLAY2-MONTH
               WHEN "02" MOVE "FEB" TO DISPLAY2-MONTH
               WHEN "03" MOVE "MAR" TO DISPLAY2-MONTH
               WHEN "04" MOVE "APR" TO DISPLAY2-MONTH
               WHEN "05" MOVE "MAY" TO DISPLAY2-MONTH
               WHEN "06" MOVE "JUN" TO DISPLAY2-MONTH
               WHEN "07" MOVE "JUL" TO DISPLAY2-MONTH
               WHEN "08" MOVE "AUG" TO DISPLAY2-MONTH
               WHEN "09" MOVE "SEP" TO DISPLAY2-MONTH
               WHEN "10" MOVE "OCT" TO DISPLAY2-MONTH
               WHEN "11" MOVE "NOV" TO DISPLAY2-MONTH
               WHEN "12" MOVE "DEC" TO DISPLAY2-MONTH
               WHEN OTHER MOVE "???" TO DISPLAY2-MONTH
           END-EVALUATE

           MOVE WS-DAY TO DISPLAY2-DAY.
           MOVE WS-YEAR TO DISPLAY2-YEAR.
           DISPLAY "Refoematted Date (DD-MON-YYYY) : " WS-DISPLAY-DATE-2

           STOP RUN.
       END PROGRAM LAB-REDEFINES.
