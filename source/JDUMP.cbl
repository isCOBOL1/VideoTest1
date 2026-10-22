      *> Copyright (c) 2005 - 2026 Veryant. Users of isCOBOL
      *> may freely modify and redistribute this program.

       PROGRAM-ID. JDUMP.
       CONFIGURATION SECTION.
       WORKING-STORAGE SECTION.
       copy "iscobol.def".
       PROCEDURE DIVISION.
       MAIN.
           perform EXCEPTION-HANDLING
           goback
           .

       EXCEPTION-HANDLING.
          call "J$DUMP" using jdump-heap
                        "c:\tmp\heap.hprof" 
          call "J$DUMP" using jdump-thread
                        "c:\tmp\thread.tdump" 
          display message "Dumps in c:\tmp" 
          .
      