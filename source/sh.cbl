        IDENTIFICATION DIVISION.
        program-id. sh.
        configuration section.
        SPECIAL-NAMES.
        working-storage section.
        77 a pic 9(1)  VALUE 0.
        77 b pic x(10) value "6F7g8H9i0J".
        77 c pic is x(25).
        procedure division.
        main.
            accept c from environment "myval"
            display c
            PERFORM 5 TIMES
                ADD 1 TO A
            END-PERFORM
            DISPLAY a
            goback.