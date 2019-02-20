; MIT License
; License notion can be seen here : https://github.com/amirkhaniansev/lisp/blob/master/LICENSE
; checks if the number is prime : T if n is prime and nil, otherwise.

; prime checking function
(defun is_prime(n)
	(if(<= n 1)
		nil
		 (if (= n 2)
				T
			(is_prime_h 2 n)
		  )
		)
	)

; helper for checking is prime
(defun is_prime_h(iterator n)
		(if (> (* iterator iterator) n)
			T
			(if (= (rem n iterator) 0)
				nil
			  (is_prime_h (+ iterator 1) n))
		)
	)			