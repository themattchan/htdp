;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |512 check-guess|) (read-case-sensitive #t) (teachpacks ((lib "guess.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.rkt" "teachpack" "htdp")))))
(define (check-guess guess target)
  (cond 
    [(< guess target) 'TooSmall]
    [(> guess target) 'TooLarge]
    [(= guess target) 'Perfect]))

(guess-with-gui check-guess)