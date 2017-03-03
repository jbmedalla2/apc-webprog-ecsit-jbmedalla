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
              SELECT Sales ASSIGN TO "SALES.DAT"
                        ORGANIZATION IS LINE SEQUENTIAL.

              SELECT SortSale ASSIGN TO "SORTSORT.TMP".

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
            VALUE "              AROMAMORA SUMMARY SALES REPORT".

       01  Report-Heading-Underline.
        02  FILLER                  PIC X(13) VALUE SPACES.
        02  FILLER                  PIC X(32) VALUE ALL "-".

       01  Topic-Heading.
        02  FILLER                  PIC BX(13) VALUE " CUSTOMER NAME".
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
