(define (even? n)
  (= (remainder n 2) 0))

(define (px multiplicand multiplier)
  (cond ((= multiplier 1) multiplicand)
        ((even? multiplier) (px (+ multiplicand multiplicand) (/ multiplier 2)))
        (else (+ (px multiplicand (- multiplier 1)) multiplicand))))

(px 25 7)
; (+ (px 25 6) 25)
; (+ (px 50 3) 25)
; (+ (+ (px 50 2) 50) 25)
; (+ (+ (px 100 1) 50) 25)
