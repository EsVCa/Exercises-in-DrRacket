#lang racket
(define (programa2)
  (display "Programa que calcula una hora a partir de otra.\n")
  
  (define (ingresar-hora)
    (display "Ingrese las horas: ")
    (define horas (read))
    (if (and (integer? horas) (>= horas 0) (<= horas 23))
        horas
        (begin
          (display "Hora ingresada incorrecta.\n")
          (ingresar-hora))))
  
  (define (ingresar-minutos)
    (display "Ingrese los minutos: ")
    (define minutos (read))
    (if (and (integer? minutos) (>= minutos 0) (<= minutos 59))
        minutos
        (begin
          (display "Minutos ingresados incorrectos.\n")
          (ingresar-minutos))))
  
  (define (ingresar-segundos)
    (display "Ingrese los segundos: ")
    (define segundos (read))
    (if (and (integer? segundos) (>= segundos 0) (<= segundos 59))
        segundos
        (begin
          (display "Segundos ingresados incorrectos.\n")
          (ingresar-segundos))))

  (define horas (ingresar-hora))
  (define minutos (ingresar-minutos))
  (define segundos (ingresar-segundos))

  (define (hora-siguiente)
    (if (= segundos 59)
        (if (= minutos 59)
            (if (= horas 23)
                (begin (set! horas 0) (set! minutos 0) (set! segundos 0))
                (begin (set! horas (+ horas 1)) (set! minutos 0) (set! segundos 0)))
            (begin (set! minutos (+ minutos 1)) (set! segundos 0))) 
        (set! segundos (+ segundos 1))))

  (hora-siguiente)
  (printf "La hora del segundo siguiente es: ~a:~a:~a\n" horas minutos segundos))

(programa2)


