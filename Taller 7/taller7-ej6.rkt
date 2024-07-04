#lang racket
(define (juegos a)
  (cond
    ((= a 1) (display "JUEGA RESIDENT EVIL"))
    ((= a 2) (display "¡PONTE A DORMIR YA!"))
    ((= a 3) (display "JUEGA WARCRAFT"))
    ((= a 4) (display "SOLO DEDICATE A BAILAR"))
    ((= a 5) (display "ESCUCHA MUSICA"))
    ((= a 6) (display "VE AL CINE"))
    ((= a 7) (display "COMPRA 10 CERVEZAS Y ECHATE A VER FUTBOL 5 HORAS"))
    )
  )

(define (punto6)
  (define a 0)
  
  (display "VE Y ")
  (juegos (random 1 8))
  
  )