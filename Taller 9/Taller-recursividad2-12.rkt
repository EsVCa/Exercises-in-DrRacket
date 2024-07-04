#lang racket
(define (division-recursiva dividendo divisor)
  (define (division-auxiliar dividendo divisor cociente)
    (cond
      ((< dividendo divisor) cociente)
      (else
       (division-auxiliar (- dividendo divisor) divisor (+ cociente 1)))))
  
  (if (or (< divisor 1) (< dividendo 1))
      "Ambos el dividendo y el divisor deben ser enteros positivos"
      (division-auxiliar dividendo divisor 0)))

(define (ej)
  (define n 0)
  (define m 0)

  (display "este programa sirve para calcular la division entera de dos numeros enteros positivos")
  (display "\ningrese el dividendo: ")
  (set! n (read))

  (display "ingrese el divisor: ")
  (set! m (read))

  (printf "~a / ~a = ~a" n m (division-recursiva n m))

  )
(ej)


