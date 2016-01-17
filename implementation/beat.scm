(load "v.scm")

(with-sound (:play #t) (fm-violin 1 3 220 .5))
(with-sound ()
	    (do ((i 0 (+ i 1)))
		((= i 8))
	      (fm-violin (* i .25) .5 (* 100 (+ i 1)) .1)))

(with-sound (:play #t)
	    (let ((a '(220 220 330 220 440 110 220)))
	      (do ((l a (cdr l))
		   (i 0 (+ i 1)))
		  ((= 0 (length l)))
		(fm-violin (* i 1) .8 (car l) .3))))

(let ((a '(220 220 330 220 440 110 220)))
  (do ((l a (cdr l))
       (i 0 (+ i 1)))
      ((= 0 (length l)))
    (display (car l))))

(define (nth n l)
  (if (or (> n (- (length l) 1))
	  (< n 0))
      (error "Index out of bounds.")
      (do ((i n (- i 1))
	   (l l (cdr l)))
	  ((= 0 i) (car l)))))




(define (cent->frac cents)
  (expt 2 (/ cents 1200)))

(cent->frac 701.955000865387)
(/ 3 2)
  
      
(with-sound (:play #t)
	    (let ((melody '(23 19 15 16 0))
		  (kammerton (* 0.5 136.1)))
	      (do ((l melody (cdr l))
		   (i 0 (+ i 1)))
		  ((= 0 (length l)))
		(fm-violin (* i 0.3) 1.7 (* kammerton (cent->frac (* 100 (car l)))) .3))))
