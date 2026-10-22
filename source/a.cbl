program-id. a.

input-output section.
file-control.
 select report-l  assign to print "-P SPOOLER"                                                                                    
        organization is line sequential.     
        
file section.
fd report-l.                                                                                                                      
01 riga pic x(80).     
                                         

working-storage section.
01 i int.
01 linea-a            pic x(232).
copy "isprint.def".

procedure division.
main.

*> set wprt-as-server to true
*> call "WIN$PRINTER" using WINPRINT-SET-PRINTER-AS
                          Winprint-as

 move all "a" to linea-a.
 open output report-l.
 
 perform 100 times
    perform varying i from 1 by 1 until i > 20    
       write riga from linea-a
    end-perform
    write riga from linea-a after page
    initialize i   
 end-perform.   

 close report-l.
                            
