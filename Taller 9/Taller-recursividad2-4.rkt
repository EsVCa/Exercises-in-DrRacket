#lang racket
(define (primos n m c)
(if (<= m n)
  (if (= 0 (remainder n m))
      (primos n (+ m 1) (+ c 1))
      (primos n (+ m 1) c)
      )

(if (= c 2)
       #t
       #f
       )))

(define (cantidad m n c)
  (if (< c n)
      (if (primos m 1 0)
          (begin (printf "~a, " m)
          (cantidad (+ m 1) n (+ c 1)))
          (cantidad (+ m 1) n  c))
      (void)
      )
  )
(define (ej)
  (define n 0)

  (display "este programa imprime los N primeros numeros primos\n
Escriba cuantos numeros primos quiere: ")
  (set! n (read))

  (cantidad 1 n 0)
  )

(ej)