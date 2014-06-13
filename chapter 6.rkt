#lang racket

;; 6.33 jet struct
(define-struct jet (desig accel max-speed range))
(define within-range
  (lambda (jet dist)
    (<= dist (jet-range jet))))

(define reduce-range
  (lambda (jet)
    (make-jet
     (jet-desig jet)
     (jet-accel jet)
     (jet-max-speed jet)
     (* 0.8 (jet-range jet)))))

;; 6.52 time
(within-range (make-jet 'jet 10 1000 100) 400)
(define-struct time (hr min sec))
(define (time->seconds time)
  (+
   (* 60 60 (time-hr time))
   (* 60 (time-min time))
   (time-sec time)))

(time->seconds (make-time 12 30 2))