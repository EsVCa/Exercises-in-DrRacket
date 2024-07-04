#lang racket
(define (condicional a)
  (if (integer? a)
      (cond
        ((= 1 a) (display "El computador no enciende. Revise Conexión"))
        ((= 2 a) (display "El computador se bloquea después de 10 minutos. Vacunar equipo"))
        ((= 3 a) (display "El computador se bloquea cuando abro varias aplicaciones. Aumentar capacidad de memoria"))
        (else (display "Error. Escriba un numero del 1 al 3"))
    )
      (display "Error. Digite un numero"))
  

  )

(define (punto1)
  (define num 0)
  (display "\nEscriba un numero del 1 al 3, para darle una posible solucion a su problema: ")
  (set! num (read))

  (condicional num)
  )