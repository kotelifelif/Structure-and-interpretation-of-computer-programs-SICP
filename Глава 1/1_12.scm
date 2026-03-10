(define (pascal row col)
  (cond ((or (< row 1) (< col 1) (> col row)) 0) ; недопустимые индексы
        ((or (= col 1) (= col row)) 1)           ; края треугольника
        (else (+ (pascal (- row 1) (- col 1))
                 (pascal (- row 1) col)))))