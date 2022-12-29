(define (f n)
    (if (< n 3)
        n
        (+ (+ (f (- n 1)) (* 2 (f (- n 2)))) (* 3 (f (- n 3))))))

(define (f-iter a b c count)
    (cond ((= count 0) a)
        ((= count 1) b)
        ((= count 2) c)
        (else (f-iter b c (+ (* 3 a) (* 2 b) c) (- count 1)))))

(f 11)
(f-iter 0 1 2 11)