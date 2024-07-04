#lang racket
(define (libro a)
  (cond
    ((= a 1) (display "reproducir EL CAPITAL"))
    ((= a 2) (display "reproducir EL COGIGO DA VINCI"))
    ((= a 3) (display "reproducir HARRY POTTER AND THE HALF BLOOD PRINCE"))
    ((= a 4) (display "reproducir CIEN AÑOS DE SOLEDAD"))
    ((= a 5) (display "reproducir LA ODISEA"))
    (else (display "\ningrese un numero de ese rango"))
    )
  )
(define (punto3)
  (define a 0)

  (display "\n\neste programa sirve para reproducir libros famosos, \nelija un numero del 1 al 5 en enteros: ")
  (set! a (read))

  (if (integer? a)

      (libro a)
      (display "\nError, vuelva a ingresar el numero del 1 al 5")
  ))
