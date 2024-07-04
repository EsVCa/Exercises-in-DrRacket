#lang racket
(define (multipl n m c)
  (if (< 0 n)
      (multipl (- n 1) m (+ m c))
      c
      )
  )

(define (natural n m)
  (if (and (natural? n) (natural? m))
      (printf "~a x ~a = ~a" n m (multipl n m 0))
      (begin
        (display "error, ingrese de nuevo los numero natural: ")
        (set! n (read))
        (display "ingrese el otro numero natural: ")
        (set! m (read))
        (natural n m)
        )
      )
  )


(define (ej)
  (define n 0)
  (define m 0)

  (display "este programa multiplica dos numeros\n
ingrese el primer numero de la multiplicacion: ")
  (set! n (read))

  (display "ingrese el otro numero de la multiplicacion: ")
  (set! m (read))

  (natural n m)

  )
(ej)
           