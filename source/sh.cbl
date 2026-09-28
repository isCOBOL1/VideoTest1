        IDENTIFICATION DIVISION.
        program-id. sh.
        configuration section.
        SPECIAL-NAMES.
        working-storage section.
        77 a pic 9(1)  VALUE 0.
        77 b pic x(10) value "6F7g8H9i0J".
        procedure division.
        main.
            PERFORM 5 TIMES
                ADD 1 TO A
            END-PERFORM
            DISPLAY a
            goback.