
(with-sound (:play #t)
	    (trigger-sf 0 "/media/data/projects/orgScore/implementation/boing.wav")
	    (trigger-sf 22000 "/media/data/projects/orgScore/implementation/boing.wav"))


(with-sound (:play #t)
	    (sf "/media/data/projects/orgScore/implementation/boing.wav" (zz 1 '(0 .3))))

(define file "boing.wav")

(let ((input (make-file->frample file))
      (len (mus-sound-framples file)))
  (samples->seconds len))
    

(length (zz 1 '(0 0.3)))
(zz :phasenliste '(0 0.5))
(define time1 (zz :period 1 :phasenliste '(0 0.32 0.6) :time '(2 10)))


; return of (let ...) is the result of the last expression of the body:
(let ((a 1)
      (b 2))
  (- b a)
  (+ a b))

; a counter "class"	
(define (make-counter)
  (define value 0)
  (define (counter)
    (set! value (+ value 1))
    value)
  counter)

(define counter1 (make-counter))

(define* (a-function first (add 4) (multi 3))
  (+ (* multi first) add))



