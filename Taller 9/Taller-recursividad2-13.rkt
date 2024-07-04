#lang racket
(define (contar-cifras n)
  (define (contar-cifras-aux n contador)
    (cond
      ((= n 0) contador)              ; Caso base: n se ha reducido a cero
      (else (contar-cifras-aux (quotient n 10) (+ contador 1)))))
  
  (if (< n 0)                        ; Manejar números negativos
      (contar-cifras (- n) 1)
      (if (= n 0) 1
          (contar-cifras-aux n 0))))


(define (ej)
  (define n 0)
  
  (display "este programa sirve para calcular las cifras de un numero\n")

  (display "ingrese el numero: ")
  (set! n (read))
  
  (define resultado (contar-cifras n))
  (printf "El número tiene ~a cifras" resultado)
  )
(ej)
