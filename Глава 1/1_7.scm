(define (good-enough? old-guess new-guess)
  (< (abs (- old-guess new-guess))
     (* new-guess 0.001)))  ; относительная точность 0.1%