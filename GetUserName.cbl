       program-id. GetUserName.

       working-storage section.     
       77   userName pic x(32).      
       77   len      pic 99 value 32.
     
       procedure division.
       main.
           call client "C$SETENV" using "dll_convention", "1".
           call client "GetUserNameA" using by reference userName
                                            by reference len
              on exception
                 call client "ADVAPI32.dll"                                            
                 call client "GetUserNameA" using by reference userName
                                            by reference len
           end-call.
           display userName.
           goback.
