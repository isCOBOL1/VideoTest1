       program-id. login.
       working-storage section.
          copy "iscobol.def".
       77 k special-names crt status pic 9(5).
          88 esc value 27.
       77 win handle of window.
       77 win-bg pic s9(9).
       77 win-fg pic s9(9).
       77 gd-hbg pic s9(9).
       77 win-font handle of font.
       77 wk-user pic x(32).
       77 wk-pwd  pic x(32).
        
       screen section.
       01 screen-1.
          03 label transparent
             title "Username:"
             line 3, col 3, size 10 cells
             .
          03 entry-field
             line 3, col 15, size 21 cells
             value wk-user
             .
          03 label transparent
             title "Password:"
             line 5, col 3, size 10 cells
             .
          03 entry-field secure
             line 5, col 15, size 21 cells
             value wk-pwd
             .
          03 push-button title "&Login"
             line 7.5, col 15, size 10 cells
             exception-value 100
             .
          03 push-button title "&Cancel"
             line 7.5, col 26, size 10 cells
             cancel-button
             .
       procedure division.
       main.
           call "J$GETFROMLAF" using jget-laf-color
                               "Panel.background"
                               win-bg.
           call "J$GETFROMLAF" using jget-laf-color
                               "Panel.foreground"
                               win-fg.  
           call "J$GETFROMLAF" using jget-laf-font
                               "Label.font"
                               win-font.
           display floating graphical window
                   title "Login"
                   lines 10, size 40
                   control font win-font
                   background-color win-bg
                   foreground-color win-fg
                   handle win.
           display screen-1.
           
           accept screen-1
                on exception
                    exit
           end-accept
           goback.
