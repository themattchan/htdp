;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |411 intervals|) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp")))))
(define (inter1 x)
  (and (> x 3) (<= x 7)))

(define (inter2 x)
  (and (>= x 3) (<= x 7)))

(define (inter3 x)
  (and (>= x 3) (< x 9)))

(define (inter4 x)
  (or
    (and (> x 1) (< x 3))
    (and (> x 9) (< x 11))))

(define (inter5 x)
  (not (and (>= x 1) (<= x 3)))) 

(inter1 7) ;should be t
(inter2 3) ;t
(inter3 10) ;f
(inter4 2) ;t
(inter5 10) ;t
