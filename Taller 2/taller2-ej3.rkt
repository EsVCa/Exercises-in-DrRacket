#lang racket
(define (convercion c)
  (+ (* (/ 9 5) c) 32))

(define num1 0)

(display "este programa sirve para convertir de grados celsius a grados farenheit.  ")
(newline)
(display "porfavor digite la temperatura en grados celsius: ")
(set! num1 (read))

(define (resultado) (convercion num1))
(display "ese numero en grados farenheit es: ")
(display (resultado)) (display "°")