(define (square x)
    (* x x))

(define (cbrt-iter guess x)
    (if (good-enough? guess x)
        guess
        (cbrt-iter (improve guess x) x)))

(define (improve guess x)
    (/ (+ (/ x (square guess)) (* 2 guess)) 3))

(define (average x y)
    (/ ( + x y) 2))

(define (good-enough? guess x)
    (= (improve guess x) guess))

(define (cbrt x)
    (cbrt-iter 1.0 27))

(cbrt 27)