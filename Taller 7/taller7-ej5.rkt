#lang racket
(define (-cuadratica a b c)
  (/ (- (- 0 b) (sqrt (- (expt b 2) (* 4 a c)))) (* 2 a)))
(define (+cuadratica a b c)
  (/ (+ (- 0 b) (sqrt (- (expt b 2) (* 4 a c)))) (* 2 a)))
(define (cuantos a b c)
  (cond
    ((= a 0) (display "No se considera las soluciones porque no es una ecuacion cuadratica sino lineal\n"))
    ((> (expt b 2) (* 4 a c)) (display "Tiene 2 soluciones\n"))
    ((= (expt b 2) (* 4 a c)) (display "Tiene una solucion\n"))
    )
  )

(define (punto5)
  (define a 0)
  (define b 0)
  (define c 0)

  (display "\nEste programa sirve para hayar la solucion de la formula cuadratica.\n Ademas dice el numero de soluciones que tiene")
  (newline)
  (display "Para hacerlo, quiero que digite el coheficiente de la variable elevada al cuadrado: ")
  (set! a (read))

  (display "Ahora digite el coheficiente de la variable sin el exponente o de exponente uno: ")
  (set! b (read))

  (display "Para finalizar digite la constante: ")
  (set! c (read))

  (if (and (number? a) (number? b) (number? c)) (begin (cuantos a b c)(cond
    ((= a 0) (display "No se considera las soluciones porque no es una ecuacion cuadratica sino lineal"))
    ((> (expt b 2) (* 4 a c)) (begin
                                 (define (solucion1) (-cuadratica a b c))
                                 (define (solucion2) (+cuadratica a b c))

                                 (printf "una de las soluciones es: ~a" (solucion1))
                                 (newline)

                                 (printf "La otra solucion es: ~a" (solucion2))))
    ((= (expt b 2) (* 4 a c)) (begin
                                 (define (solucion) (+cuadratica a b c))

                                 (printf "La unica solucion es: ~a" (solucion))
                                 (newline)
                                 ))
    ))
      (begin
        (display "\nVuelva a intentarlo\n")
        (punto5))
      ))
