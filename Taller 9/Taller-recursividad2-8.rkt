#lang racket
(define (espacios n)
  (if (< 0 n)
      (begin
        (display " ")
        (espacios (- n 1))
        )
      (void)
      )
  )
(define (cantidad n)
  (if (<= 1 n)
      (begin
        (printf "P")
        (cantidad (- n 1))
        )
      (void)
      )
  )
  
(define (fppal n)
(if (< n 8)
(begin
(espacios (+ 1 n))
(cantidad (- 15 (* 2 n)))
(newline)

(fppal (+ n 1) )
)
(void)
)
  )
(fppal 1)