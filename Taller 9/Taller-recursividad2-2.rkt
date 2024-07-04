#lang racket
(define (serie x m n)
  (if (<= m n)
      (if (not (= 0 (- x (* 2 (- m 1)))))
        (begin
          (display (/ (- (* 2 m) 1) (- x (* 2 (- m 1)))))
          (display " - ")
          (serie x (+ m 1) n)
          )
        (begin
          (display "imaginario - ")
          (serie x (+ m 1) n)
          )
        )
      (void)
      )
  )
(define (real n)
  (if (real? n)
      n
      (begin
        (display "error.\n")
        (ej)
        )
      )
  )
(define (ej)
  (define x 0)
  (define n 0)
  (display "este programa sirve para mostrar una sucesion de numeros especifica,\n
ingrese un numero para hacer la secuencia: ")
  (set! x (read))

  (display "ingrese hasta que posicion quiere que llegue la secuencia: ")
  (set! n (read))

  (serie (real x) 1 (real n))
  )
(ej)