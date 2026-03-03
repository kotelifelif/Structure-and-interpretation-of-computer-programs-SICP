(define (f_rec n)
  (cond 
   ((< n 3) n)
   ((>= n 3) (+ (f_rec (- n 1)) (f_rec (- n 2)) (f_rec (- n 3))))
   )
)


(define (f n)
  (f-iter 2 1 0 n))

(define (f-iter a b c count)
  (if (< count 3)
      (cond ((= count 0) c)
            ((= count 1) b)
            ((= count 2) a))
      (f-iter (+ a b c) a b (- count 1))))