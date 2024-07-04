#lang racket
(define (long-list l c)
  (if (not (null? l))
      (long-list (cdr l) (+ c 1))
      c
      )
  )
(define (mostrar l x)
  (if (not (null? l))
      (begin
        (printf "~a. " x)
        (display (car l))
        (newline)
        (mostrar (cdr l) (+ x 1))
        )
      (void)
      )
 )
(define (ingresar-nuevo l)
  (define n 0)
  (mostrar l 1)
  (display "ingrese a cual palabra le quiere agregar un nuevo sinonimo: ")
  (set! n (read))
  (if (number? n)
      (if (and (<= n (long-list l 0)) (> n 0))
          (ingresar-sinonimo l l 0 (- n 1))
          (begin
            (printf "~a no esta en el rango de palabras. intente de nuevo:\n" n)
            (ingresar-nuevo l)
            )
          )
      (begin
            (printf "~a no es un numero. intente de nuevo:\n" n)
            (ingresar-nuevo l)
            )
      )
  )
             
  


  
(define (ingresar-sinonimo l L x c)
  (if (not (null? l))
      (if (not (equal? c x))
          (begin
            (set! L (list-set L x (car l)))
            (ingresar-sinonimo (cdr l) L (+ x 1) c)
            )
          (if (list? (car l))
              (begin
                (set! L (list-set L c (append (car l) (list (ingresar-s)))))
                (ingresar-sinonimo (cdr l) L (+ x 1) c)
                )
              (begin
                (set! L (list-set L c (append (list (car l)) (list (ingresar-s)))))
                (ingresar-sinonimo (cdr l) L (+ x 1) c)
                )
              )
          )
      L
      )
  )

(define (ingresar-s)
  (define palabra (string))
  (display "Ingrese el sinonimo de la palabra: ")
  (read-line)
  (set! palabra (read-line))
  palabra
  )
  

(define (ingresar-palabra l L x)
  (if (not (null? l))
      (begin
        (set! L (list-set L x (car l)))
        (ingresar-palabra (cdr l) L (+ x 1))
        )
      (begin
        (read-line)
        (set! L (list-set L x (ingresar)))
        L
        )
      )
    )

(define (ingresar)
  (define palabra (string))
  (display "Ingrese la nueva palabra: ")
  (set! palabra (read-line))
  palabra
  )


(define (buscar l)
  (define c (string))
  (define L (list 1))
  (display "ingrese a que palabra le busca un sinonimo: ")
  (read-line)
  (set! c (read-line))
  (set! L (list-set L 0 c))
  (esta? (car l) l L)
  )

(define (esta? l lista L)
  (if (list? l)
      (if (not (null? lista))
          (if (not (null? l))
              (if (equal? (car l) (car L))
                  (if (not (= (long-list (car lista) 0) 1))
                      (begin
                        (printf "\nlos sinonimos de la palabra ~a son: " (car L))
                        (display (car lista))
                        )
                      (printf "\nla palabra ~a aun no aparece con sinonimos registrados.\n" (car L))
                      )
                  (esta? (cdr l) lista L)
                  )
              (esta? (car (cdr lista)) (cdr lista) L)
              )
          (display "la palabra ~a no se encuentra en el diccionario.\n")
          )
      (esta? (list l) lista L)
      )
  )

(define (menu)
  (display "\n\n\nMenu opciones:\n
1. agregar palabra\n
2. agregar sinonimo de una palabra\n
3. mostrar todas las palabras con sus sinonimos\n
4. Buscar sinonimos\n
5. salir\n
que desea hacer?: ")
  )

(define (Menu)
  (define bbd (list 1))
  (define n 0)
  (menu)
  (set! n (read))
  (if (number? n)
      (cond
        ((= n 1) (begin
                   (read-line)
                   (set! bbd (list-set bbd 0 (ingresar)))
                   (Menu-opciones bbd)
                   ))
        ((= n 2) (begin
                   (printf "\nAun no hay ninguna palabra\n\n")
                   (Menu)
                   ))
        ((= n 3) (begin
                   (newline)
                   (printf "\nAun no hay ninguna palabra\n\n")
                   (Menu)
                   ))
        ((= n 4) (begin
                   (newline)
                   (printf "\nAun no hay ninguna palabra\n\n")
                   (Menu)
                   ))
        ((= n 5) (display "hasta pronto!"))
        (else (begin
                (printf "~a no es una de las opciones. Intentelo nuevamente: " n)
                (Menu)
                ))
        )
      (begin
        (printf "\n~a no es una de las opciones. Intentelo nuevamente: " n)
        (Menu)
        )
      )
  )

(define (Menu-opciones bbd)
  (define n 0)
  (menu)
  (set! n (read))
  (if (number? n)
      (cond
        ((= n 1) (begin
                   (read-line)
                   (set! bbd (list-set bbd 0 (ingresar)))
                   (Menu-opciones bbd)
                   ))
        ((= n 2) (begin
                   (printf "\nAun no hay ninguna palabra\n\n")
                   (Menu)
                   ))
        ((= n 3) (begin
                   (newline)
                   (printf "\nAun no hay ninguna palabra\n\n")
                   (Menu)
                   ))
        ((= n 4) (begin
                   (newline)
                   (printf "\nAun no hay ninguna palabra\n\n")
                   (Menu)
                   ))
        ((= n 5) (display "hasta pronto!"))
        (else (begin
                (printf "~a no es una de las opciones. Intentelo nuevamente: " n)
                (Menu)
                ))
        )
      (begin
        (printf "~a no es una de las opciones. Intentelo nuevamente: " n)
        (Menu)
        )
      )
  )
(Menu)
          