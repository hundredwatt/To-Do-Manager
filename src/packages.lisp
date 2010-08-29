(defpackage :lists
	(:use :cl))

(defpackage :ui
	(:use :cl)
	(:export #:read-item
					 #:print-list
					 #:print-menu
					 #:menu-select
					 #:print-instructions))

(defpackage :data
	(:use :cl)
	(:export #:ordered-list
					 #:empty-list
					 #:ordered-list-items
					 #:ordered-list-title
					 #:add-to-list))

(in-package :lists)

(defun main () 
	(progn
		(ui:print-instructions)
		(ui:print-menu)
		(format t "~& ~& ## ~a ## ~& ~&" (ui:menu-select))
		(let ((*list* (data:empty-list)))
			(loop 
				(let ((x (ui:read-item)))
					(progn
						(setq *list* (data:add-to-list *list* x))
						(ui:print-list *list*)))))))
