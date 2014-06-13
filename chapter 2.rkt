;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |221 f to c|) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp")))))
;; 2.21 f to c
(define (Fahrenheit->Celsius farh)
  (* (/ 5 9)(- farh 32)))

;;(convert-gui Fahrenheit->Celsius)
(convert-repl Fahrenheit->Celsius)
;;(convert-file "in.dat" Fahrenheit->Celsius "out.dat")

;; 2.22 $ to euro
(define (dollar->euro dollar)
  (* 0.73 dollar))

;; 2.23 area of triangle
;;compute the area of an equilateral triangle. 
;;base = side/2
(define (triangle side-length perp-height)
  (* 0.5 (* perp-height (/ side-length 2))))

(triangle 10 20)

;; 2.24 convert3
(define (convert3 units tens hundreds)
  (+ units (+ tens hundreds)))

;; 2.25 algebra
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

;; 2.31 tax
(define (tax gross-pay)
  (* 0.15 gross-pay))

(define (wage hours)
  (* 12 hours))

(define (netpay hours)
  (- (wage hours) (tax (wage hours))))

;; 2.32 sum coins
(define (sum-coins p n d q)
  (+ (+ (* p .01) (* n .05))
     (+ (* d .10 )(* q .25))))

;; 2.33 total profit
(define (total-profit attendees)
  (- (* 5 attendees)
     (+ 20 (* .50 attendees))))

(total-profit 100) 

;; 2.41
;; errors
;(+ (10) 20)
;(10 + 20)
;(+ +)

;; syntax
(define (f x)
  (+ x 10))

(define (g x)
  (+ x 10))

(define (h x) 
  (+ x 10))
