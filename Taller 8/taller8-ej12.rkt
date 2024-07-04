#lang racket
(define (contador a s b c d) 
  (cond
    ((<= a 5) (if (>= 5 b)
                  (begin
                    (display b)
                    (newline)
                    (contador a (+ s 1) (+ b 1) c d))
                  (display "fin del programa")
                  ))
    ((and (> a 5)(<= a 10)) (if (and (<= c 10)(> c 5))
                                (begin
                                  (display c)
                                  (newline)
                                  (contador a (+ s 1) b (+ c 1) d))
                                (display "fin del programa")
                                ))
    ((> a 10) (if (and (<= d 20)(> d 10))
                                (begin
                                  (display d)
                                  (newline)
                                  (contador a (+ s 1) b c (+ d 1)))
                                (display "fin del programa")
                                ))

  ))

(define (ejercicio)
  (define h 0)
  (display "Escriba un numero: ")
  (set! h (read))
  (contador h 0 1 6 11)
  )
(ejercicio)