#lang racket
(define (cuadrados n)
  (if (<= n 10)
      (begin
        (printf "~a" (expt n 2))
        (newline)
        (cuadrados (+ n 1))
        )
      (display "fin")
      )
  )
(cuadrados 1)