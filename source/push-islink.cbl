       program-id. push-islink.
       
       working-storage section.
       77 crt-status     special-names crt status pic 9(5).
          88 exit-pushed value 27.
        77 pb-attrs pic x any length.
            copy "isgui.def".
       screen section.
       01 screen-1.
        03 label line 1 col 2 title "Without islink"
           .
        03 push-button title "Push-Button1"
           line 2, col 2 size 30 cells
           exception-value 1
           .
        03 label line 5 col 2 title "With islink"
           .
        03 pb2 push-button 
           title "Push-Button2" 
           islink
           islink-attributes pb-attrs
           line 5, col 2 size 30 cells
           exception-value 2
           .
        03 push-button
           cancel-button
           title "E&xit"
           line 23, col 68
           . 
       procedure division.
       main.           
           display standard graphical window.
           move "link-color: #0000FF; " &
		        "link-decoration: none;" &
                "hover-decoration: underline; " &
                "hover-font-weight: bold;"				
				to pb-attrs
           display screen-1.
           perform until exit-pushed
            accept screen-1 on exception 
                 continue 
            end-accept
            evaluate crt-status
                when 1 display message "Push-button1 pushed"
                when 2 
                   call "C$DESKTOP" using cdesktop-browse
                                          "www.veryant.com"
                                          1
            end-evaluate
           end-perform.
           destroy screen-1.
           goback.