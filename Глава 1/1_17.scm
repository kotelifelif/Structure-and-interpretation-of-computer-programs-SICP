(define (double x) (+ x x))
(define (halve x) (/ x 2))

(define (fast-mult a b)
  (define (iter a b result)
    (cond ((= b 0) result)
          ((even? b) (iter (double a) (halve b) result))
          (else (iter a (- b 1) (+ result a)))))
  (iter a b 0))