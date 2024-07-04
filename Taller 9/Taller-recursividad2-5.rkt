#lang racket
#lang racket
(define (primos n m c)
(if (<= m n)
  (if (= 0 (remainder n m))
      (primos n (+ m 1) (+ c 1))
      (primos n (+ m 1) c)
      )

(if (= c 2)
       #f
       #t
       )))

(define (cantidad m n c)
  (if (< c n)
      (if (primos m 1 0)
          (begin (printf "~a, " m)
          (cantidad (+ m 1) n (+ c 1))
          )
          (cantidad (+ m 1) n (+ c 1)))
      (void)
      )
  )
(define (ej)
  (define n 0)

  (display "este programa imprime hasta N numeros sin contar primos\n
Escriba hasta donde quiere los numeros: ")
  (set! n (read))

  (cantidad 1 n 0)
  )

(ej)