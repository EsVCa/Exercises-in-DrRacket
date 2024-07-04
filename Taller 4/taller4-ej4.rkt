#lang racket
(define (euro p)
  (quotient p 4479)
  )
(define (dolar p)
  (quotient p 4091)
  )

(define (conversion)
  (define p 0)

  (display "Este programa sirve para mostrar cuanto equivale un dinero en pesos colombianos a euros o dolares\n
Por favor digite el valor en pesos colombianos: ")
  (set! p (read))

  (printf "el valor de ~a Pesos equivale a ~a Dolares o ~a Euros" p (dolar p) (euro p))
  
  )