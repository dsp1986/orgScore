
; default overall time
(define *time* '(0 60)) 



;;; ZeitZähler - Time Counter
;;; zz seconds phaselist
;;; return a list with triggerpoints in sample positions
(define* (zz (period 1) (phasenliste '(0)) (time *time*))
  (define triggers '())
  (do ((i 0 (+ i 1)))
      ((= i (seconds->samples (- (second time)(first time)))))
    (do ((j 0 (+ j 1))
	 (ptr (modulo (/ i (seconds->samples period)) 1)))
	((= j (length phasenliste)))
      (if (morally-equal? ptr (list-ref phasenliste j))
	  (set! triggers (append triggers (list (+ i (seconds->samples (car time)))))))))
  triggers)

;;; Simple Soundfileplayer
;;; trigger-sf start file
;;; 
(definstrument (trigger-sf start file)
  (let ((input (make-file->frample file))
	(len (mus-sound-framples file)))
     (do ((i 0 (+ i 1)))
	 ((= i len))
       (outa (+ i start) (ina i input)))))

;;; sf
;;; interface for trigger-sf
;;; use whitin (with-sound ()) environment
(define (sf file trigger)
  (do ((t trigger (cdr t)))
      ((= 0 (length t)))
    (trigger-sf (car t) (string-append *loadpath* file))))

(define *loadpath* "~/")
