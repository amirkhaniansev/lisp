; MIT License
; License notion can be seen here : https://github.com/amirkhaniansev/lisp/LICENSE
; calculates sum of numbers : 0, ... , n

(defun sum_0_n (n)
	(if (<= n 0)
		n
	 (+ n (sum_0_n (- n 1)))
	 )
 )		
			