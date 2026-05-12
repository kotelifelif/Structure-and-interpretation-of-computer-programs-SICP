#|
1. Аппликативный порядок
(gcd 206 40)
(gcd 40 (remainder 206 40)) → remainder #1 → 6
(gcd 6 (remainder 40 6))    → remainder #2 → 4
(gcd 4 (remainder 6 4))     → remainder #3 → 2
(gcd 2 (remainder 4 2))     → remainder #4 → 0
(gcd 2 0) → 2
2. Нормальный порядок
  Должно быть 18 вызовов
|#