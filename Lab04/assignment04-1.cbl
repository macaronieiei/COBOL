      ******************************************************************
      * Author: Asvanee Arong
      * Date: 21/07/68
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. ASSIGNMENT-04-1.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 SOURCE-DATA.
           05 WS-TRAN-DATE PIC 9(8)        VAlUE 25072025.
           05 WS-INV-NUM   PIC 9(4)        VALUE 35.
           05 WS-PRICE     PIC 9(5)V99     VALUE 18500.75.
           05 WS-BALANCE   PIC S9(5)V99    VALUE -2500.50.
       01 EDT-FIELDS.
           05 WS-EDT-DATE      PIC 99B99B9999.
           05 WS-EDT-NUM       PIC 0099.
           05 WS-EDT-PRICE     PIC $ZZ,ZZ9.99.
           05 WS-EDT-SIGN-P    PIC +ZZ,ZZ9.99.
           05 WS-EDT-SIGN-M    PIC -ZZ,ZZ9.99.
           05 WS-EDT-CREDIT    PIC $ZZ,ZZ9.99CR.
           05 WS-EDT-DEBIT     PIC $ZZ,ZZ9.99DB.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            MOVE WS-TRAN-DATE  TO WS-EDT-DATE.
            MOVE WS-INV-NUM    TO WS-EDT-NUM.
            MOVE WS-PRICE      TO WS-EDT-PRICE.
            MOVE WS-BALANCE    TO WS-EDT-SIGN-P.
            MOVE WS-BALANCE    TO WS-EDT-SIGN-M.
            MOVE WS-BALANCE    TO WS-EDT-CREDIT.
            MOVE WS-BALANCE    TO WS-EDT-DEBIT.

            DISPLAY "--- Mini Receipt ---".
            DISPLAY "Transaction Date  :   " WS-EDT-DATE.
            DISPLAY "Invoice No.       :   " WS-EDT-NUM.
            DISPLAY "Price             :   " WS-EDT-PRICE.
            DISPLAY "--- Account Balance ---".
            DISPLAY "Balance (Sign +)  :   " WS-EDT-SIGN-P.
            DISPLAY "Balance (Sign -)  :   " WS-EDT-SIGN-M.
            DISPLAY "Balance (CR)      :   " WS-EDT-CREDIT.
            DISPLAY "Balance (DB)      :   " WS-EDT-DEBIT.

            STOP RUN.
       END PROGRAM ASSIGNMENT-04-1.
