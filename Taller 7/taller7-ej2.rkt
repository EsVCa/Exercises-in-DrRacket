#lang racket
(define (exelente a)
  (printf "Exelente. \n+~a" (* a 50))
  )
(define (bueno a)
  (printf "Bueno. \n+~a" (* a 20))
  )
(define (malo a)
  (printf "Malo. \n+~a" (* a 10))
  )

(define (nota a)
  (cond
    ((>= a 5) (exelente a))
    ((and (< a 5) (>= a 3)) (bueno a))
    ((< a 3) (malo a))
    (else (display "Error"))
    )
  )

(define (punto2)
  (define a 0)
  
  (display "\nIngrese su nota: ")
  (set! a (read))
  
  (if (number? a)
      (nota a)
      (display "\nIngrese un numero. Vuelva a intentar\n")
      )
  )
