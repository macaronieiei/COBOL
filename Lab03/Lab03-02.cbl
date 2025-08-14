      ******************************************************************
      * Author: Asvanee Arong
      * Date: 14/07/68
      * Purpose: Last Lab03
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 EMPLOYEE-RECORD.
           05 EMP-ID PIC 9(5) VALUE 12345.
           05 EMP-NAME.
               10 EMP-TITLE PIC A(10) VALUE "Mr".
               10 EMP-FNAME PIC A(25) VALUE "John".
               10 EMP-LNAME PIC A(25) VALUE "Kim".
           05 EMP-DEPARTMENT PIC X(20) VALUE "IT DEPARTMENT".
           05 EMP-SALARY PIC 9(7)V9(2) VALUE 12345.67.
       01 EMP-FULLNAME       PIC X(60).
       01 SALARY-FORMAT     PIC $ZZ,ZZZ,ZZ9.99.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "Enter Your Information"
           DISPLAY "ID : "
           ACCEPT EMP-ID
           DISPLAY "Title : "
           ACCEPT EMP-TITLE
           DISPLAY "Firstname : "
           ACCEPT EMP-FNAME
           DISPLAY "Lastname : "
           ACCEPT EMP-LNAME
           DISPLAY "Department : "
           ACCEPT EMP-DEPARTMENT
           DISPLAY "Salary : "
           ACCEPT EMP-SALARY
           DISPLAY "====================="
           DISPLAY "EMPLOYEE INFORMATION"
           DISPLAY "====================="
           DISPLAY "Employee ID        : " EMP-ID

       STRING  EMP-TITLE   DELIMITED BY SPACE
               "."         DELIMITED BY SIZE
               EMP-FNAME   DELIMITED BY SPACE
               " "         DELIMITED BY SIZE
               EMP-LNAME   DELIMITED BY SPACE
               INTO EMP-FULLNAME
           DISPLAY "Name               : " EMP-FULLNAME
           DISPLAY "Department         : " EMP-DEPARTMENT
           MOVE EMP-SALARY TO SALARY-FORMAT.
           DISPLAY "Montly Salary      : " SALARY-FORMAT
           DISPLAY "====================="
           STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
