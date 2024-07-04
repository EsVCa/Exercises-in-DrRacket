#lang racket
(define (condicional4 t)
  (cond
    ((< t 15) (display "la mejor actividad es el tenis"))
    ((and (<= t 17) (>= t 15)) (display "la mejor actividad es el atletismo"))
    ((and (<= t 20) (>= t 18)) (display "la mejor actividad es el baloncesto"))
    ((and (<= t 25) (>= t 21)) (display "la mejor actividad es el atletismo"))
    ((> t 25) (display "la mejor actividad es la natacion"))
    )
  )
(define (punto5)
  (define t 0)
  (display "este programa sirve para determinar la mejor actividad segun la temperatura del dia\n
digite la temperatura en celcius y en numero entero: ")
  (set! t (read))
  (if (integer? t)
      (condicional4 t)
      (display "vuelva a realizar el proceso")
       ))