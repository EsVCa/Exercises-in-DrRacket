#lang racket
(define (bit B)
   (/ B 8)
  )
(define (kb B)
  (* B 1000)
  )

(define (ej5)
  (define B 0)

  (display "este programa tiene como fin convertir de bytes a Bits y a KiloBytes\n
Por favor digite los Bytes para la conversion")
  (set! B (read))

  (printf "sus ~a bytes son ~a bits y ~a kilobytes" B (bit B) (kb B))
  )