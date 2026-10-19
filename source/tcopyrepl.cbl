       IDENTIFICATION DIVISION.
       PROGRAM-ID. tcopyrepl.

       WORKING-STORAGE SECTION.
       copy "myvars.def" REPLACING ==(RR)== BY ==1==.
       copy myvars REPLACING ==(RR)== BY ==2==.
       77  MY-LOC             PIC 9.

       PROCEDURE DIVISION.
       MAIN-LOGIC.
           MOVE 0 TO MY-LOC.

           MOVE 1 TO V-1-A.
           MOVE 1 TO V-1-B.
           
           MOVE 2 TO V-2-A.
           MOVE 2 TO V-2-B.

           PERFORM MYPARAG.

           PERFORM PAR-1-1
           PERFORM PAR-1-2
           PERFORM PAR-2-2
           PERFORM PAR-2-2

           GOBACK
           .
       MYPARAG.
           DISPLAY "MYPARAG"
           .

*****************
       COPY "myparag.cpy" REPLACING ==(RR)== BY ==1==. 
       COPY myparag REPLACING ==(RR)== BY ==2==. 
              