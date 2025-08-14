      ******************************************************************
      * Author: Asvanee Arong
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
           01 STUDENT-RECORD.
               05 STUDENT-ID PIC 9(10) VALUE 6621604700.
               05 STUDENT-NAME.
                   10 STUDENT-FNAME PIC X(50) VALUE "Asvanee".
                   10 STUDENT-LNAME PIC X(50) VALUE "Arong".
               05 STUDENT-GPA PIC 9(1)V9(2) VALUE 3.50.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "Result: "
           DISPLAY "******************************"
           DISPLAY "STUDENT ID     : " STUDENT-ID
           DISPLAY "FIRST NAME     : " STUDENT-FNAME
           DISPLAY "LAST NAME      : " STUDENT-LNAME
           DISPLAY "GPA            : " STUDENT-GPA
            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
