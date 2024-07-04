#lang racket
(define (cantidad-num n C)
  (if (not (= (quotient n 10) 0))
      (cantidad-num (quotient n 10) (+ C 1))
      (+ C 1)
      )
  )
(define (llenar-list l L n x)
  (if (not (null? l))
      (begin
        (set! L (list-set L x (remainder n 10)))
        (llenar-list (cdr l) L (quotient n 10) (+ x 1))
        )
      L
      )
  )
 (define (ordenar-mayor-a-menor lista)
  (cond ((null? lista) '())
        ((null? (cdr lista)) lista)
        (else (let ((max (maximo lista)))
                (cons max (ordenar-mayor-a-menor (eliminar max lista)))))))

(define (maximo lista)
  (if (null? (cdr lista))
      (car lista)
      (if (> (car lista) (maximo (cdr lista)))
          (car lista)
          (maximo (cdr lista)))))


(define (eliminar elemento lista)
  (cond ((null? lista) '())
        ((equal? elemento (car lista)) (cdr lista))
        (else (cons (car lista) (eliminar elemento (cdr lista))))))





   
(define (punto6)
  (define n 0)
  (display "ingrese el numero para llenarlo en una lista unidad por unidad: ")
  (set! n (read))
  (define lista (build-list (cantidad-num n 0) values))
  (define list (llenar-list lista lista n 0))
  (ordenar-mayor-a-menor list)
  )
(punto6)
  
  
