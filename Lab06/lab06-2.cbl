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
       DATA DIVISION.
       FILE SECTION.
       FD EMPLOYEE-FILE.
       01 EMPLOYEE-RECORD.
           05 EMP-ID   PIC X(4).
           05 EMP-NAME PIC X(15).
           05 EMP-DEP  PIC X(10).
           05 EMP-SALARY   PIC 9(8)V99.
       WORKING-STORAGE SECTION.
       01 WS-EOF-FLAG          PIC A(1)    VALUE 'N'.
           88 WS-END-OF-FILE               VALUE 'Y'.
       01 WS-CALCULATATIONS.
           05 WS-TOTAL-SALARY  PIC 9(9)V99 VALUE ZERO.
       01 WS-DISPLAY-FIELDS.
           05 DISP-SALARY          PIC $ZZ,ZZZ,ZZ9.99.
           05 DISP-TOTAL-SALARY    PIC $ZZZ,ZZZ,ZZ9.99.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            OPEN INPUT EMPLOYEE-FILE.
            PERFORM UNTIL WS-END-OF-FILE
               READ EMPLOYEE-FILE
                   AT END
                       SET WS-END-OF-FILE TO TRUE
                   NOT AT END
                       PERFORM PROCESS-SINGLE-RECORD
               END-READ
            END-PERFORM.

            CLOSE EMPLOYEE-FILE.

            PERFORM DISPLAY-SUMMARY-REPORT.
            STOP RUN.
       PROCESS-SINGLE-RECORD.
            MOVE EMP-SALARY TO DISP-SALARY.
            DISPLAY "Processing : " EMP-NAME " | Salary : " DISP-SALARY.
            ADD EMP-SALARY TO WS-TOTAL-SALARY.
       DISPLAY-SUMMARY-REPORT.
            DISPLAY " ".
            DISPLAY "--- End of File ---".
            DISPLAY "Calculation complete.".
            MOVE WS-TOTAL-SALARY TO DISP-TOTAL-SALARY.
            DISPLAY "Total Salary of All Employees: " DISP-TOTAL-SALARY.

       END PROGRAM YOUR-PROGRAM-NAME.
