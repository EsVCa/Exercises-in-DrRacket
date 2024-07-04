#lang racket
(define (condicional d m a)
  (if (and (>= m 1) (<= m 12) (>= d 1) (<= d 31) (integer? d) (integer? m) (integer? a))
      (cond
        ((or (= m 1) (= m 3) (= m 5) (= m 7) (= m 8) (= m 10) (= m 12))
           (cond
             ((< d 31) (printf "el sigiente dia es ~a/~a/~a" (+ d 1) m a))
             ((and (not (= m 12)) (= d 31)) (printf "el sigiente dia es 1/~a/~a" (+ 1 m) a))
             ((and (= m 12) (= d 31)) (printf "el sigiente dia es 1/1/~a" (+ 1 a))))
        )

        ((or (= m 4) (= m 6) (= m 9) (= m 11))
           (cond
             ((< d 30) (printf "el sigiente dia es ~a/~a/~a" (+ d 1) m a))
             ((= d 30) (printf "el sigiente dia es 1/~a/~a" (+ d 1) m a))
             ((> d 30) (printf "Resultado no valido"))
             ))

         ((= m 2) (if (and (= (remainder a 4) 0)
       (not (= (remainder a 100) 0))
       (not (= (remainder a 400) 0)))
                   
          (cond
                   ((< d 29) (printf "el sigiente dia es ~a/~a/~a" (+ d 1) m a))
                   ((= d 29) (printf "el sigiente dia es 1/~a/~a" (+ m 1) a))
                   ((> d 29) (printf "Resultado no valido"))
                   )
          (cond
             ((< d 28) (printf "el sigiente dia es ~a/~a/~a" (+ d 1) m a))
             ((= d 28) (printf "el sigiente dia es 1/~a/~a" (+ m 1) a))
             ((> d 28) (printf "Resultado no valido"))
             )

          ))
        
      )

      (display "dato o valor invalido")
      ))

(define (punto1)
  (define d 0)
  (define m 0)
  (define a 0)
  
  (display "este programa tiene la funcion de enseñar el dia siguiente de una fecha, funciona igual para años bisiestos...\n
Escriba el dia: ")
  (set! d (read))

  (printf "Escriba el mes: ")
  (set! m (read))

  (printf "Escriba el año: ")
  (set! a (read))

  (condicional d m a)
  )
     