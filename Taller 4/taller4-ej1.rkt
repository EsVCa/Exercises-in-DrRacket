#lang racket
(define (C-F c)
  (+ 32 (* c 9/5))
  )
(printf "hola ~a mundo" 8)
(define (convercion)
  (define c 0)
  
  (display "este programa sirve para convertir de grados celcius a grados fahrenheit\n
Por favor Digite la temperatura en grados celcius: ")
  (set! c (read))

  (display "su temperatura en grados fahrenheit es de: ")
  (display (C-F c))
  (display "°F")
  )