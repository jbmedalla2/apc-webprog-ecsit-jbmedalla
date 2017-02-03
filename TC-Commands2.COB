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
       01  Example1.
        02 Total PIC 9(4) VALUE 1000.
        02 Cash PIC 9(3) VALUE 123.
        02 Cheques PIC 9(4) VALUE 1533.
       01  Example2.
        02 TotalStudents PIC 9(4) VALUE 0000.
        02 Males PIC 9(3) VALUE 611.
        02 Females PIC 9(4) VALUE 1225.
       01  Example3.
        02 Tax PIC 9(3) VALUE 0750.
        02 GrossPay PIC 9(4) VALUE 1000.
        02 Total2 PIC 9(4) VALUE 2554.
        02 PRSI PIC 9(4) VALUE 0175.
        02 Pension PIC 9(4) VALUE 0125.
        02 Pay PIC 9(4) VALUE 2750.
        02 Deductions PIC 9(4) VALUE 1050.
        02 NetPay PIC 9(4) VALUE 2750.
       01  Example4.
        02 Size4 PIC 9(4) VALUE 0250.
        02 Magnitude PIC 9(4)V99 VALUE 0123.45.
        02 VatRate PIC 9(1)V99 VALUE 0.21.
        02 Sales PIC 9(4)V99 VALUE 1245.50.
        02 VAT PIC 9(4)V99 VALUE 2750.75.
        02 Fees PIC 9(2) VALUE 52.
        02 Members PIC 9(4) VALUE 1024.
        02 TotalFees PIC 9(5) VALUE 1743.
        02 SizeErrorMessage PIC X(5) VALUE "Error".
       01  Example5.
        02 Amount1 PIC 9(4) VALUE 2544.
        02 Amount2 PIC 9(3) VALUE 354.
        02 Qty PIC 9(5) VALUE 31255.
        02 Units PIC 9(3) VALUE 115.
        02 Average PIC 9(4) VALUE 0000.
        02 Quot PIC 9(3) VALUE 115.
        02 Rem PIC 9(2) VALUE 95.
       01  Example6.
        02 Result PIC 9(4) VALUE 3333.
        02 Euros PIC 9(4)V99 VALUE 1234.45.
        02 Punts PIC 9(4)V99 VALUE 1256.75.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
      *     ADD Cash TO Total.
      *     ADD Cash, 20 TO Total.
      *     ADD Cash, Cheques GIVING Total.
      *     DISPLAY Total.

      *     ADD Males TO Females GIVING TotalStudents.
      *     DISPLAY TotalStudents.

      *     SUBTRACT Tax FROM GrossPay, Total2.
      *     DISPLAY Total2.

      *     SUBTRACT Tax,PRSI ,Pension FROM Pay.
      *     DISPLAY Pay.

      *     SUBTRACT Deductions FROM Pay Giving NetPay.
      *     DISPLAY NetPay.

      *     MULTIPLY 10 BY Size4, Magnitude.
      *     DISPLAY Size4.
      *     DISPLAY Magnitude.

      *     MULTIPLY VatRate BY Sales GIVING VAT.
      *     DISPLAY VAT.

      *     MULTIPLY Fees BY Members GIVING TotalFees
      *      ON SIZE ERROR DISPLAY SizeErrorMessage
      *     END-MULTIPLY.
      *     DISPLAY TotalFees.

      *     DIVIDE 15 INTO Amount1 ROUNDED, Amount2.
      *     DISPLAY Amount1.
      *     DISPLAY Amount2.

      *     DIVIDE Qty BY Units GIVING Average ROUNDED.
      *     DISPLAY Average.

      *     DIVIDE 215 BY 10 GIVING Quot REMAINDER Rem.
      *     DISPLAY Quot " " Rem.

      *     COMPUTE Result = 90 - 7 * 3 + 50 / 2.
      *     DISPLAY Result.

            COMPUTE Euros ROUNDED = Punts / .787564.
            DISPLAY Euros.

            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
