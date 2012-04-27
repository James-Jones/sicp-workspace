; Exercise 1.3: Define a procedure that takes three numbers as arguments
; and returns the sum of the squares of the two larger numbers.

(define (sum-of-greater-squares a b c)
	(+ 
		(* (max a b c) (max a b c)) ; Sqaure the larget term
		; Now square the second largest term. Uses conditionals to find the second largest term.
		(* 	(cond ( (and(< a b) (> a c)) a)
				( (and(< b a) (> b c)) b)
				( (and(< c b) (> c a)) c)
				( (and(> a b) (< a c)) a)
				( (and(> b a) (< b c)) b)
				( (and(> c b) (< c a)) c)
				((= a b) a)
				((= b c) b)
	            (else c))
				
			(cond ( (and(< a b) (> a c)) a)
				( (and(< b a) (> b c)) b)
				( (and(< c b) (> c a)) c)
				( (and(> a b) (< a c)) a)
				( (and(> b a) (< b c)) b)
				( (and(> c b) (< c a)) c)
				((= a b) a)
				((= b c) b)
	            (else c)))))

; Some test for correctness

(newline)
(write (sum-of-greater-squares 6 4 6)) ; Two are the same. Expect 6*6 + 6*6 = 72
(newline)
(write (sum-of-greater-squares 3 4 5)) ; Increasing. Expect 4*4 + 5*5 = 41
(newline)
(write (sum-of-greater-squares 5 4 3)) ; Decreasing. Expect 5*5 + 4*4 = 41
(newline)
(write (sum-of-greater-squares 3 4 2)) ; Middle is the largest. Expect 3*3 + 4*4 = 25
(newline)
