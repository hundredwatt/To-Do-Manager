(defpackage :lists
	(:use :cl))

(in-package :lists)

(defun main () 
	(progn
		(let ((*list* nil))
			(loop 
				(let ((x (string (read))))
					(progn
						(setq *list* (reverse (list* x (reverse *list*))))
						(format t "~&")
						(format t "~a~&" *list*)))))))
