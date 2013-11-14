;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |332-4 cylinders|) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp")))))
(define (area-circle radius)
  (* radius radius pi))

(define (circumf-circle radius)
  (* 2 pi radius))

(define (volume-cylinder base-radius height)
  (* height (area-circle base-radius)))

(define (area-cylinder base-radius height)
  (+ 
   (* 2 (area-circle base-radius))
   (* height (circumf-circle base-radius))))

;;surface-area of a pipe
(define (area-pipe radius-inner height wall-thickness)
  (+
   (* height (circumf-circle 
               (+ radius-inner wall-thickness)))
   (* 2
      (- (area-circle 
          (+ radius-inner wall-thickness))
         (area-circle radius-inner)))))