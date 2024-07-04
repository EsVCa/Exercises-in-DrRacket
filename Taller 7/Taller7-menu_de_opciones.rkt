#lang racket
;Punto 1
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

;Punto 2
(define (exelente a)
  (printf "Exelente. \n+~a" (* a 50))
  )
(define (bueno a)
  (printf "Bueno. \n+~a" (* a 20))
  )
(define (malo a)
  (printf "Malo. \n+~a" (* a 10))
  )

(define (nota a)
  (cond
    ((>= a 5) (exelente a))
    ((and (< a 5) (>= a 3)) (bueno a))
    ((< a 3) (malo a))
    (else (display "Error"))
    )
  )

(define (punto2)
  (define a 0)
  
  (display "\nIngrese su nota: ")
  (set! a (read))
  
  (if (number? a)
      (nota a)
      (display "\nIngrese un numero. Vuelva a intentar\n")
      )
  )

;punto 3
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

;Punto 4
(define (carpeta a)
  (cond
    ((= a 1) (display "C:/Musica/RAP"))
    ((= a 2) (display "C:/Musica/HEAVY METAL"))
    ((= a 3) (display "C:/Musica/ROCK"))
    ((= a 4) (display "C:/Musica/REGGAETON"))
    ((= a 5) (display "C:/Musica/SALSA"))
    ((= a 6) (display "C:/Musica/VALLENATO"))
    (else (display "Error. Vuelva a intentar"))
    )
  )

(define (punto4)
  (define a 0)

  (display "Ingrese un numero del uno al seis para abrir una carpeta de musica: ")
  (set! a (read))

  (carpeta a)
  )

;Punto 5
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

;Punto 6
(define (juegos a)
  (cond
    ((= a 1) (display "JUEGA RESIDENT EVIL"))
    ((= a 2) (display "¡PONTE A DORMIR YA!"))
    ((= a 3) (display "JUEGA WARCRAFT"))
    ((= a 4) (display "SOLO DEDICATE A BAILAR"))
    ((= a 5) (display "ESCUCHA MUSICA"))
    ((= a 6) (display "VE AL CINE"))
    ((= a 7) (display "COMPRA 10 CERVEZAS Y ECHATE A VER FUTBOL 5 HORAS"))
    )
  )

(define (punto6)
  (define a 0)
  
  (display "VE Y ")
  (juegos (random 1 8))
  
  )






;Menu
(define (menu)
  (display "\n\nTALLER CONDICIONALES\n\n
1. Solucion a fallas\n
2. Nota y puntos de la nota\n
3. Libros para leer\n
4. Carpetas de musica\n
5. solucion y numero de soluciones de ecuacion cuadratica\n
6. Qué actividad haras\n
Seleccione una de las opciones: ")
  )
(define (opciones a)
  (cond
    ((= a 1) (punto1))
    ((= a 2) (punto2))
    ((= a 3) (punto3))
    ((= a 4) (punto4))
    ((= a 5) (punto5))
    ((= a 6) (punto6))
    (else (display "Eliga una de las opciones"))
    )
  )
(define (muestra)
         (define a 0)
         (menu)
         (set! a (read))
         (if (integer? a)
             (opciones a)
             (begin
               (display "Error. Vuelva a intentarlo")
               (muestra))
             )
         (muestra)
         )
(muestra)