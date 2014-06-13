;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |331 imperial to metric|) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp")))))
;; 3.31 imperial -> metric
(define (inches->cm inches)
  (* inches 2.54))

(define (feet->inches feet)
  (* feet 12))

(define (yards->feet yards)
  (* yards 3))

(define (rods->yards rods)
  (* rods 5.5))

(define (furlongs->rods furlongs)
  (* furlongs 40))

(define (miles->furlongs miles)
  (* miles 8))

(define (feet->cm feet)
  (inches->cm 
   (feet->inches feet)))

(define (yards->cm yards)
  (inches->cm 
   (feet->inches 
    (yards->feet yards))))

(define (rods->inches rods)
  (feet->inches 
   (yards->feet 
    (rods->yards rods))))

(define (miles->feet miles)
  (yards->feet 
   (rods->yards 
    (furlongs->rods 
     (miles->furlongs miles)))))

;; 3.32.4 cylinders
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

;;3.35 rocket height
;;acceleration due to gravity
(define g 9.81)
;;velocity at time t
(define (velocity t)
  (* g t))
;;compute the height a rocket reaches given t
(define (height t)
  (* 0.5
     (velocity t)
     t))

;; 3.36 c to f
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