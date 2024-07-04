#lang racket
(define (suma-cuadrados n s)
  (if (<= n 10)
      (begin
        (set! s (+ s (expt n 2)))
        (suma-cuadrados (+ n 1) s)
        )
      (printf "la suma de cuadrados es de ~a" s)
      )
  )
(suma-cuadrados 1 0)