#lang racket
(define (num n)
  (if (number? n)
      (if (and (< n 10000) (> n 999))
          (if (positive? n)
              n;devuelve el numero positivo
              (begin
                (printf "Error. ~a no es un numero de id. intentelo de nuevo: " n);no es positivo
                (set! n (read))
                (num n)
                )
              )
          (begin
            (printf "Error. ~a no es un numero de id. intentelo de nuevo: " n);no es numero
            (set! n (read))
            (num n)
            )
          )
      (begin
            (printf "Error. ~a no es un numero de id. intentelo de nuevo: " n);no es numero
            (set! n (read))
            (num n)
            )
      )
  )

(define (long-list l c)
  (if (not (null? l))
      (long-list (cdr l) (+ c 1))
      c
      )
  )
(define (list-list l L x)
  (if (< x (long-list L 0))
      (begin
        (set! L (list-set L x l))
        (list-list l L (+ x 1))
        )
      L
      )
  )
(define (ingresar L x)
  
  (printf "ingrese el nombre del estudiante ~a: " (+ 1 x))
  (set! L (list-set L 0 (read-line)))
  
  (printf "ingrese el codigo del estudiante ~a (es de 4 digitos): " (+ 1 x))
  (set! L (list-set L 1 (num (read))))
  
  (printf "ingrese el programa del estudiante ~a: " (+ 1 x))
  (read-line)
  (set! L (list-set L 2 (read-line)))
  
  L
  )



(define (ingresar-nuevo l L x)
  (define v (list 1 2 3))
  (if (not (null? l))
      (begin
        (set! L (list-set L x (car l)))
        (ingresar-nuevo (cdr l) L (+ x 1))
        )
      (begin
        (read-line)
        (set! L (list-set L x (ingresar v x)))
        L
        )
      )
    )


(define (mostrar l)
  (if (not (null? l))
      (begin
        (display (car l))
        (newline)
        (mostrar (cdr l))
        )
      (void)
      )
 )

(define (igual? l c)
  (if (not (null? l))
      (if (equal? (car (cdr (car l))) c)
          (begin
            (newline)
            (printf "El estudiante ~a esta matriculado en la carrera de ~a" (car (car l)) (car (cdr (cdr (car l)))))
            (newline)
            )
          (igual? (cdr l) c)
          )
      (display "\n\nel estudiante no esta matriculado en la institucion\n")
      )
  )
  
(define (esta? l)
  (define codigo 0)

  (display "ingrese el codigo del estudiante que esta buscando (es de 4 digitos): ")
  (read-line)
  (set! codigo (num (read)))

  (igual? l codigo)
  )



(define (menu)
  (display "\n\nMenu opciones:\n
1. ingresar nuevo estudiante\n
2. mostrar todos los estudiantes\n
3. buscar estudiante por codigo\n
4. Salir\n
\n
Que desea hacer?: ")
  )
(define (Menu)
  (define n 0)
  (define fila (list 0 1 2))
  (define columna-inicial (list 1))
  (display "ingrese un estudiante en la base de datos:\n")
  (define estudiante (ingresar fila 0))
  (define bbd (list-list estudiante columna-inicial 0))
  (display "BBD:\n")
  (display bbd)
  (menu)
  (set! n (read))
  
  (if (number? n)
      (cond
        ((= n 1) (begin
                   (set! bbd (ingresar-nuevo bbd (build-list (+ (long-list bbd 0) 1) values) 0))
                   (menu-opciones bbd)))
        ((= n 2) (begin
                   (newline)
                   (mostrar bbd)
                   (menu-opciones bbd)))
        ((= n 3) (begin
                   (esta? bbd)
                   (menu-opciones bbd)))
        ((= n 4) (display "hasta pronto. "))
        (else (begin
                (printf "\n~a no es una de las opciones. intentelo que nuevo: " n)
                (menu-opciones bbd)
                )
              )
        )
      (begin
                (printf "\n~a no es una de las opciones. intentelo que nuevo: " n)
                (menu-opciones bbd)
                )
      )
  )

(define (menu-opciones bbd)
  (define n 0)
  (menu)
  (set! n (num (read)))
  
  (if (number? n)
      (cond
        ((= n 1) (begin
                   (set! bbd (ingresar-nuevo bbd (build-list (+ (long-list bbd 0) 1) values) 0))
                   (menu-opciones bbd)))
        ((= n 2) (begin
                   (newline)
                   (mostrar bbd)
                   (menu-opciones bbd)))
        ((= n 3) (begin
                   (esta? bbd)
                   (menu-opciones bbd)))
        ((= n 4) (display "hasta pronto. "))
        (else (begin
                (printf "\n~a no es una de las opciones. intentelo que nuevo: " n)
                (menu-opciones bbd)
                )
              )
        )
      (begin
                (printf "\n~a no es una de las opciones. intentelo que nuevo: " n)
                (menu-opciones bbd)
                )
      )
  )
      

(Menu)
  