#lang racket
(define (enunciado) (display "El orden de los numeros es:\n
numero  -   cuadrado  -  cubo  -  raiz-cuadrada   -   raiz-cubica\n"))
(define (cuadrados n)
  (if (and (>= n 10)(<= n 100))
      (begin
        (printf "  ~a     -     ~a    -    ~a     -     ~a       -      ~a\n"
                n (expt n 2) (expt n 3) (expt n 1/2) (expt n 1/3))
        (newline)
        (cuadrados (+ n 1))
        )
      (display "fin")
      )
  )
(define (ejercicio)
  (enunciado)
  (cuadrados 10))
(ejercicio)