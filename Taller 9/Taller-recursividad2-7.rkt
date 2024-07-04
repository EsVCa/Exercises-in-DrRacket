#lang racket
(define (potencia n c j)
  (if (< c n)
      (begin
        (printf "~a + " j)
        (potencia n (+ c 1) (* j 2))
        )
      (printf "~a" j)
      )
  )
 (define (ej)
   (define n 0)

   (display "este programa sirve para mostrar la serie de N potencia y de base dos\n")

   (display "escriba hasta que potencia llegara la serie: ")
   (set! n (read))

   (potencia n 0 1)
   )
(ej)