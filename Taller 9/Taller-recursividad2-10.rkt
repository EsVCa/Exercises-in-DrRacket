#lang racket
(define (factorial n m)
  (if (<= 1 n)
      (begin
        (factorial (- n 1) (* n m))
        )
      m
      )
  )

(define (natural n)
  (if (= n 0)
      (printf "~a! = 1" n)
      (if (natural? n)
          (printf "~a! = ~a" n (factorial n 1))
          (begin
            (display "ingrese un numero natural: ")
            (set! n (read))
            (natural n)
            )
          )
      )
  )
(define (ej)
  (define n 0)

  (display "este programa calcula el factorial de un numero natural, por favor ingrese cual factorial quiere encontrar: ")
  (set! n (read))
  
  (natural n)
  )
(ej)