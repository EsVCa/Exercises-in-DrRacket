#lang racket
(define (cm m)
  (* m 100)
  )
(define (km m)
  (/ m 1000)
  )

(define (ej4)
  (define m 0)

  (display "este programa sirve para convertir las unidades de metros a centimetros y kilometros\n
Por favor digite su medida en metros: ")
  (set! m (read))

  (printf "~am son ~aKm y ~aCm" m (km m) (cm m))
  )