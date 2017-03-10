       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
              SELECT Sales ASSIGN TO "SALES.DAT"
                        ORGANIZATION IS LINE SEQUENTIAL.

              SELECT SortSale ASSIGN TO "SORTSALE.TMP".

              SELECT AromaSales ASSIGN TO "AROMASALES.RPT"
                        ORGANIZATION IS LINE SEQUENTIAL.

              SELECT Workfile ASSIGN TO "WORKFILE.DAT"
                        ORGANIZATION IS LINE SEQUENTIAL.
       DATA DIVISION.
       FILE SECTION.
       FD Sales.
       01  Sales-Rec.
           88 End-Of-Sales-File    VALUE HIGH-VALUES.
        02  S-Cust-Id              PIC X(5).
        02  S-Cust-Name            PIC X(20).
        02  S-Oil-Id.
         03  FILLER              PIC X.
            88 Essential-Oil   VALUE "E".
         03  S-Oil-Name         PIC 99.
        02 S-Unit-Size             PIC 99.
        02 S-Units-Sold            PIC 999.

       FD SortSale.
       01 Sorted-Rec        PIC X(33).

       FD AromaSales.
       01 Print-Line                   PIC X(64).

       SD WorkFile.
       01 Work-Rec.
           88 End-Of-Work-File VALUE HIGH-VALUES.
        02  WF-Cust-Id              PIC X(5).
        02  WF-Cust-Name            PIC X(20).
        02  WF-Oil-Id.
         03 FILLER               PIC X.
         03 WF-Oil-Num           PIC 99.
        02 WF-Unit-Size             PIC 99.
        02 WF-Units-Sold            PIC 999.

       WORKING-STORAGE SECTION.
       01  Oils-Table.
        02  Oil-Cost-Values.
         03 FILLER               PIC X(40)
                VALUE "0041003200450050002910250055003900650075".
         03 FILLER               PIC X(40)
                VALUE "0080004400500063006500550085004812500065".
         03 FILLER               PIC X(40)
                VALUE "0060005500670072006501250085006511150105".
        02  FILLER REDEFINES Oil-Cost-VALUES.
         03 OIL-COST           PIC 99V99 OCCURS 30 TIMES.

       01  Report-Heading-Line         PIC X(44)
            VALUE "             AROMAMORA SUMMARY SALES REPORT".

       01  Report-Heading-Underline.
        02  FILLER                  PIC X(13) VALUE SPACES.
        02  FILLER                  PIC X(32) VALUE ALL "-".

       01  Topic-Heading.
        02  FILLER                  PIC BX(13) VALUE " CUSTOMER NAME".
        02  FILLER                  PIC X(8) VALUE SPACES.
        02  FILLER                  PIC X(10) VALUE "CUST-ID   ".
        02  FILLER                  PIC X(8) VALUE "SALES   ".
        02  FILLER                  PIC X(11) VALUE "QTY SOLD   ".
        02  FILLER                  PIC X(11) VALUE "SALES VALUE".

       01  Custom-Sales-Line.
        02  Print_CustName          PIC X(20).
        02  Print_CusID             PIC BBB9(5).
        02  Print_Sales             PIC BBBBBZZ9.
        02  Print_QtySold           PIC BBBBBZZ,ZZ9.
        02  Print_SalesValue        PIC BBBB$$$,$$9.99.

        01  Total-Sales-Line.
        02  FILLER                  PIC X(33) VALUE SPACES.
        02  FILLER                  PIC X(19) VALUE
              "TOTAL SALES       :".
        02  Print_TotalSales        PIC BBBBBBZZ,ZZ9.

        01  Total-Qty-Sold-Line.
        02  FILLER                  PIC X(33) VALUE SPACES.
        02  FILLER                  PIC X(19) VALUE
              "TOTAL QTY SOLD    :".
        02  Print_TotalQtySold      PIC BBBBBZZZ,ZZ9.

       01  Total-Sales-Value-Line.
        02  FILLER                  PIC X(33) VALUE SPACES.
        02  FILLER                  PIC X(19) VALUE
             "TOTAL SALES VALUE :".
        02  Print_TotalSalesValue   PIC B$$$$,$$9.99.

       01  Final_Totals.
        02  Total_Sales             PIC 9(5)    VALUE ZEROS.
        02  Total_Qty-Sold          PIC 9(6)    VALUE ZEROS.
        02  Total_SalesValue        PIC 9(6)V99 VALUE ZEROS.

       01  Temp_Variables.
        02  Sale_QtySold           PIC 99999.
        02  ValueOfSale           PIC 999999V99.
        02  Prev_CustId            PIC X(5).


       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           SORT WorkFile ON ASCENDING WF-Cust-Name
           INPUT PROCEDURE IS Select-Essential-Oils
           OUTPUT PROCEDURE IS Print-Summary-Report.
            STOP RUN.

            Select-Essential-Oils.
           OPEN INPUT Sales.
           READ Sales
               AT END SET End-Of-Sales-File TO TRUE
           END-READ.

           PERFORM UNTIL End-Of-Sales-File
               IF Essential-Oil
                   RELEASE Work-Rec FROM Sales-Rec
               END-IF
               READ Sales
                   AT END SET End-Of-Sales-File TO TRUE
               END-READ
           END-PERFORM.

           CLOSE Sales.

       Print-Summary-Report.
           OPEN OUTPUT AromaSales.
           OPEN OUTPUT SortSale.
           WRITE Print-Line FROM Report-Heading-Line
            AFTER ADVANCING 1 LINE.
           WRITE Print-Line FROM Report-Heading-Underline
            AFTER ADVANCING 1 LINE.
           WRITE Print-Line FROM Topic-Heading
            AFTER ADVANCING 3 LINES.
       END PROGRAM YOUR-PROGRAM-NAME.
