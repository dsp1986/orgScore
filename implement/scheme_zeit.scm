(let loop ((n 1))
  (if (> n 10)
      '()
      (cons n
	    (loop (+ n 1)))))

(define (list-of-squares n)
  (let loop ((i n) (res '()))
    (if (< i 0)
	res
	(loop (- i 1) (cons (* i i) res)))))


(define (make-counter)
  (define value 0)
  (define (counter)
    (set! value (+ value 1))
    value)
  counter)

(define counter1 (make-counter))
(counter1)


(let loop ((i 1))
  (if *run*
      ((lambda ()
	(snd-print i)
	(set! i (+ i 1))))
      (in 1000 (lambda () (loop i)))))


(define *run* #f)
(if *run*
    (display "yes")
    (display "no"))
(display "huhu")

(with-sound (:output "zwei.snd" :play #t)
	    (do ((i 0 (+ i 1))) ((= i 12))
	      (p (* i .5) :duration .5
		 :keyNum (+ 44 (* 2 i))
		 :strike-velocity .5
		 :amp .4
		 :DryPedalResonanceFactor .25)))
  
