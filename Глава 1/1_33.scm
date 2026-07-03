;; ---------- filtered-accumulate (итеративная версия) ----------
(define (filtered-accumulate filter combiner null-value term a next b)
  (define (iter a result)
    (cond ((> a b) result)
          ((filter a) (iter (next a) (combiner result (term a))))
          (else (iter (next a) result))))
  (iter a null-value))

;; ---------- Процедуры для проверки простоты ----------
(define (prime? n)
  (define (smallest-divisor n)
    (find-divisor n 2))
  (define (find-divisor n test-divisor)
    (cond ((> (* test-divisor test-divisor) n) n)
          ((= (remainder n test-divisor) 0) test-divisor)
          (else (find-divisor n (+ test-divisor 1)))))
  (= n (smallest-divisor n)))

;; ---------- Задача 1: Сумма квадратов простых чисел от a до b ----------
(define (sum-squared-primes a b)
  (define (square x) (* x x))
  (define (inc x) (+ x 1))
  (filtered-accumulate prime? + 0 square a inc b))

;; ---------- Задача 2: Произведение чисел, взаимно простых с n ----------
(define (product-relative-primes a b n)
  (define (coprime? x)
    (= (gcd x n) 1))
  (define (identity x) x)
  (define (inc x) (+ x 1))
  (filtered-accumulate coprime? * 1 identity a inc b))