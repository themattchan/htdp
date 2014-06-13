;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |513 check-guess|) (read-case-sensitive #t) (teachpacks ((lib "guess.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.rkt" "teachpack" "htdp")))))
;; 5.12 check guess

(define (check-guess guess target)
  (cond 
    [(< guess target) 'TooSmall]
    [(> guess target) 'TooLarge]
    [(= guess target) 'Perfect]))

(guess-with-gui check-guess)

;; 5.13 check guess v2
(define (check-guess3 x y z target)
  (check-guess (number x y z) target))

(define (number x y z)
  (+ x
     (* y 10)
     (* z 100)))

(define (check-guess guess target)
  (cond 
    [(< guess target) 'TooSmall]
    [(> guess target) 'TooLarge]
    [(= guess target) 'Perfect]))

(guess-with-gui-3 check-guess3)


;; 5.14 what kind

(define discriminant 
  (lambda (a b c) 
    (- (* b b) (* 4 a c))))

(define (what-kind a b c)
  (cond
    [(= a 0) 'degenerate]
    [(> (discriminant a b c) 0) 'two] 
    [(= (discriminant a b c) 0) 'one] 
    [(< (discriminant a b c) 0) 'none] ))

(what-kind 0 1 2)
(what-kind 2 1 2)