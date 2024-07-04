#lang racket
(define (potencia n m c j)
  (if (< c n)
      (potencia n m (+ c 1) (* j m))
      (display j)
      )
  )
 (define (ej)
   (define n 0)
   (define m 0)

   (display "este programa sirve para calcular N potencia de M base\n
escriba la base de la potencia: ")
   (set! m (read))

   (display "escriba a que potencia la quiere elevar: ")
   (set! n (read))

   (potencia n m 0 1)
   )
(ej)