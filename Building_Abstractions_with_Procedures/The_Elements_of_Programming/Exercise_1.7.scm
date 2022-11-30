(define (sqrt-iter guess change x)
    (if (good-enough? change)
        guess
        (sqrt-iter (improve guess x) (- change (improve guess x)) x)))

(define (improve guess x)
    (average guess (/ x guess))))

(define (average x y)
    (/ (+ x y) 2))

(define (good-enough? change)
    (< change 0.001))

(define (sqrt x)
    (sqrt-iter 1.0 100.0 x))

(sqrt 9)
(sqrt 1000000)
(sqrt 0.00001)