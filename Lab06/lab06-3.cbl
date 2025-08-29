      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT EMPLOYEE-FILE ASSIGN TO "employees.txt"
           ORGANIZATION IS LINE SEQUENTIAL.
           SELECT REPORT-FILE ASSIGN TO "output.txt"
           ORGANIZATION IS LINE SEQUENTIAL.
       DATA DIVISION.
       FILE SECTION.
       FD EMPLOYEE-FILE.
       01 EMPLOYEE-RECORD.
           05 EMP-ID   PIC X(4).
           05 EMP-NAME PIC X(15).
           05 EMP-DEP  PIC X(10).
           05 EMP-SALARY   PIC 9(8)V99.
       FD REPORT-FILE.
       01 REPORT-RECORD    PIC X(80).
       WORKING-STORAGE SECTION.
       01 WS-EOF-FLAG          PIC A(1)    VALUE 'N'.
           88 WS-END-OF-FILE               VALUE 'Y'.
       01 WS-CALCULATIONS.
           05 WS-BONUS-AMPUNT  PIC 9(4)V99     VALUE 5000.25.
           05 WS-NEW-SALART    PIC 9(7)V99.
           05 WS-WB-EMP-COUNT  PIC 9(3)        VALUE ZERO.
       01 WS-REPORT-LINES.
           05 WS-HEADER-1.
               10 FILLER   PIC X(50) VALUE ALL "=".
           05 WS-HEADER-2.
               10 FILLER  PIC X(8)  VALUE SPACE.
               10 FILLER  PIC X(30) VALUE "WEB DEPARTMENT BONUS REPORT".
               10 FILLER  PIC X(12) VALUE SPACE.
           05 WS-HEADER-3.
               10 FILLER PIC X(4)  VALUE "ID".
               10 FILLER PIC X(4)  VALUE SPACE.
               10 FILLER PIC X(4)  VALUE "NAME".
               10 FILLER PIC X(18) VALUE SPACE.
               10 FILLER PIC X(10) VALUE "NEW SALARY".
           05 WS-HEADER-4.
               10 FILLER PIC X(4)  VALUE "----".
               10 FILLER PIC X(2)  VALUE SPACE.
               10 FILLER PIC X(20) VALUE ALL "-".
               10 FILLER PIC X(2)  VALUE SPACE.
               10 FILLER PIC X(12) VALUE ALL "-".
           05 WS-DETAIL-LINE.
               10 DET-ID           PIC X(4).
               10 FILLER           PIC X(4)  VALUE SPACE.
               10 DET-NAME         PIC X(20).
               10 FILLER           PIC X(2)  VALUE SPACE.
               10 DET-NEW-SALARY   PIC ZZZ,ZZ9.99.
           05 WS-FOOTER-1.
               10 FILLER PIC X(50) VALUE ALL"-".
           05 WS-FOOTER-2.
               10 FILLER PIC X(25) VALUE "Tatal Record Processed : ".
               10 FOOTER-COUNT PIC ZZ9.
               10 FILLER PIC X(22) VALUE SPACE.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            OPEN INPUT EMPLOYEE-FILE.
            OPEN OUTPUT REPORT-FILE.
             PERFORM 100-WRITE-REPORT-HEADERS.

             PERFORM UNTIL WS-END-OF-FILE
               READ EMPLOYEE-FILE
                   AT END
                       SET WS-END-OF-FILE TO TRUE
                   NOT AT END
                       IF EMP-DEP "Web"
                           PERFORM 200

            STOP RUN.
       100-WRITE-REPORT-HEADERS.
           WRITE REPORT-RECORD FROM WS-HEADER-1.
           WRITE REPORT-RECORD FROM WS-HEADER-2.
           WRITE REPORT-RECORD FROM WS-HEADER-1.
           WRITE REPORT-RECORD FROM WS-HEADER-3.
           WRITE REPORT-RECORD FROM WS-HEADER-4.
       END PROGRAM YOUR-PROGRAM-NAME.
