; MIT License
; License notion can be seen here : https://github.com/amirkhaniansev/lisp/blob/master/LICENSE
; gets the Nth number of Fibonacci sequence
; 1st version is simple and does not have any optimizations
; 2nd version is a bit complex and optimized

; 1st version : simple one
(defun fibonacci_s(n) 
	(if (< n 0)
		nil
		(if(or (= n 0) (= n 1))
			1
		 (+ (fibonacci (- n 1)) (fibonacci(- n 2))))
		)
	)

; 2nd version
(defun fibonacci_o(n)
	(if (< n 0)
		nil
		 (if (or (= n 0) (= n 1))
			1
		   (fibonacci_h 2 1 1 n))
		  )
	 )

; helper for second version
(defun fibonacci_h(current prev prevPrev n)
	(if (= current n)
		(+ prev prevPrev)
		 (fibonacci_h (+ current 1) (+ prev prevPrev) prev n))
	)				