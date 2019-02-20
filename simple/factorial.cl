; MIT License
; License notion can be seen here : https://github.com/amirkhaniansev/lisp/LICENSE
; calculates factorial of the given n number

(defun factorial_simple (n)
	( if (< n 0)
		nil
		(if (or (= n 0) (= n 1))
			1
			(* n (factorial_simple (- n 1))))
		)
	)