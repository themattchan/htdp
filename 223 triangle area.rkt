;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |223 triangle area|) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp")))))
;;compute the area of an equilateral triangle. 
;;base = side/2
(define (triangle side-length perp-height)
  (* 0.5 (* perp-height (/ side-length 2))))

(triangle 10 20)
