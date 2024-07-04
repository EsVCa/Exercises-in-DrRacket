#lang racket

#lang racket

(define capacidad 50) ;; Capacidad del parqueadero
(define autos (make-vector capacidad #f)) ;; Vector para almacenar los datos de los autos
(define ocupados 0) ;; Número de espacios de parqueo ocupados

(define (registrar-ingreso)
  (if (= ocupados capacidad) ;; Si el parqueadero está lleno
      (displayln "El parqueadero está lleno. No se puede registrar el ingreso.")
      (let ((placa (read)))
        (let ((posicion (vector-index-of autos #f))) ;; Buscar la primera posición vacía
          (vector-set! autos posicion (list placa (current-time))) ;; Almacenar la placa y la hora de ingreso
          (set! ocupados (+ ocupados 1)) ;; Actualizar el número de espacios ocupados
          (displayln (format "El auto con la placa ~a ha sido registrado en la posición ~a." placa (+ posicion 1))))))) ;; Mostrar la posición en que se registró el auto

(define (calcular-tiempo-y-valor)
  (let ((placa (read)))
    (let ((posicion (vector-index-of autos (lambda (auto) (and auto (equal? (car auto) placa)))))) ;; Buscar la posición del auto por su placa
      (if (not posicion) ;; Si el auto no se encuentra en el parqueadero
          (displayln "El auto no se encuentra en el parqueadero.")
          (let* ((hora-ingreso (cadr (vector-ref autos posicion))) ;; Obtener la hora de ingreso
                 (hora-actual (current-time)) ;; Obtener la hora actual
                 (diferencia (/ (- hora-actual hora-ingreso) 3600))) ;; Calcular la diferencia en horas
            (displayln (format "El auto con la placa ~a ha estado parqueado por ~a horas y debe pagar ~a pesos." placa diferencia (* diferencia 1800)))
            (vector-set! autos posicion #f) ;; Eliminar la información del auto del parqueadero
            (set! ocupados (- ocupados 1))))))) ;; Actualizar el número de espacios ocupados

(define (registrar-salida)
  (let ((placa (read)))
    (let ((posicion (vector-index-of autos (lambda (auto) (and auto (equal? (car auto) placa)))))) ;; Buscar la posición del auto por su placa
      (if (not posicion) ;; Si el auto no se encuentra en el parqueadero
          (displayln "El auto no se encuentra en el parqueadero.")
          (begin
            (vector-set! autos posicion #f) ;; Eliminar la información del auto del parqueadero
            (set! ocupados (- ocupados 1)) ;; Actualizar el número de espacios ocupados
            (displayln (format "El auto con la placa ~a ha salido del parqueadero." placa))))))) ;; Mostrar un mensaje de salida

(define (espacios-disponibles)
  (displayln (format "Hay ~a espacios de parqueo ocupados y ~a disponibles." ocupados (- capacidad ocupados)))) ;; Mostrar el número
