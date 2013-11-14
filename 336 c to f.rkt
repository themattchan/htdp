;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |336 c to f|) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp")))))
;; from 221
(define (Fahrenheit->Celsius F)
  (* (/ 5 9)(- F 32)))

(define (Celsius->Fahrenheit C)
  (+ 32
     (* C (/ 9 5))))

;;Identity function
(define (I f)
  (Celsius->Fahrenheit (Fahrenheit->Celsius f)))

(I 32) ;;should give 32