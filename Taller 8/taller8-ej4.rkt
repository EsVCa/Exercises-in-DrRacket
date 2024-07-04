#lang racket
(define (suma n s)
  (if (>= 10 n)
      (begin
        (set! s (+ n s))
        (suma (+ n 1) s))
      (printf "la suma es de: ~a" s)
      )
  )
(suma 1 0)