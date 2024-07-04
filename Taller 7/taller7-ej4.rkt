#lang racket
(define (carpeta a)
  (cond
    ((= a 1) (display "C:/Musica/RAP"))
    ((= a 2) (display "C:/Musica/HEAVY METAL"))
    ((= a 3) (display "C:/Musica/ROCK"))
    ((= a 4) (display "C:/Musica/REGGAETON"))
    ((= a 5) (display "C:/Musica/SALSA"))
    ((= a 6) (display "C:/Musica/VALLENATO"))
    (else (display "Error. Vuelva a intentar"))
    )
  )

(define (punto4)
  (define a 0)

  (display "Ingrese un numero del uno al seis para abrir una carpeta de musica: ")
  (set! a (read))

  (carpeta a)
  )