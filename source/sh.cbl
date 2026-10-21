        IDENTIFICATION DIVISION.
        program-id. sh.
        configuration section.
        working-storage section.
        77 c pic is x(25).
        procedure division.
        main.
            accept c from environment "myval"
            display c
            goback.
