        IDENTIFICATION DIVISION.
        PROGRAM-ID. currencySigns.
      *Display different currency signs
        AUTHOR. mjp.
        ENVIRONMENT DIVISION.
        configuration section. 
        special-names. 
        currency sign is "USD " with picture symbol "$" 
        currency sign is "EUR " with picture symbol "Y" 
        currency sign is "CHF " with picture symbol "F". 
        working-storage section. 
        01  w-price  pic S9(4)v99 value +942854.35. 
        01  w-usd-price  pic $$,$$$.99.  
        01  w-eur-price  pic YY,YYY.99.  
        01  w-chf-price  pic FF,FFF.99. 
        procedure division. 
        move w-price to w-usd-price, w-eur-price, w-chf-price 
        display w-usd-price 
        display w-eur-price 
        display w-chf-price 
        goback.                    display "aggiunta!". 
