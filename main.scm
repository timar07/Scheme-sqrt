;;square function (necessary for sqrt function)
(define (square x)
    (* x x))

(define (sqrt x)
    (define (try n)
        (if (< (abs (- (square n) x)) .000001) n
        (try (middle n))))

    (define (avg y)
        (/ x y))

    (define (middle y)
        (/ (+ (avg y) y) 2))

    (try 1)
)
;;testing
(sqrt 2)