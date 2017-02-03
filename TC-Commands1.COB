      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  StudentName.
        02 FirstName PIC X(8) VALUE "JOHN".
        02 Surname PIC X(8) VALUE "POWER".
       01  GrossPay PIC 9(4)V99 VALUE 7325.78.
       01  CountyPop PIC 9(6) VALUE 111111.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           MOVE "COUGHLAN" TO Surname.
           MOVE "TOM" TO FirstName.
           MOVE "FITZPATRICK" TO Surname.
           MOVE "ALEXANDER" TO FirstName.
           MOVE "JOHN    RYAN" TO StudentName.
           MOVE ALL "X" TO StudentName.
           DISPLAY StudentName.
      *For GrossPay And CountyPop
            MOVE 12.4 TO GrossPay.
            MOVE 123.456 TO GrossPay.
            MOVE 12345.757 TO GrossPay.
            MOVE ZEROS TO GrossPay.
            MOVE 256347 TO GrossPay.
            MOVE 987 TO CountyPop.
            MOVE 1235678 TO CountyPop.
            MOVE 24.56 TO GrossPay.
            DISPLAY GrossPay.
            DISPLAY CountyPop.
            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
