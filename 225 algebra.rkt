;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |225 algebra|) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp")))))
(define (f n)
  (+ 10 (* n n)))

(define (g n)
  (+ 20 (* 0.5 (* n n))))

(define (h n)
  (- 2 (/ 1 n)))

(f 2)
(f 9)
(g 2)
(g 9)
(h 2)
(h 9)