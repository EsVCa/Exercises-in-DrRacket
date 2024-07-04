#lang racket
(define (divisores n m)
  (if (= 0 (remainder n m))
      (begin
        (printf "~a, " m)
        (divisores n (+ m 1))
        )
      (if (<= m n)
          (divisores n (+ m 1))
          (void)
          )
      )
  )
(define (positivo n)
  (if (natural? n)
      n
      (begin
        (displayln "Error. escriba un numero entero positivo.")
        (ej)
        )
      )
  )

(define (ej)
  (define n 0)

  (display "este programa sirve para mostrar el numero de divisores de un numero positivo: ")
  (set! n (read))

  (divisores (positivo n) 1)
  )
(ej)