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
					 #:list-master
					 #:make-list-master
					 #:list-master-lists
					 #:new-list
					 #:list-master-count
					 #:empty-list
					 #:ordered-list-items
					 #:ordered-list-title
					 #:add-to-list))

(defpackage :tasks
	(:use :cl)
	(:export #:init
					 #:show
					 #:select
					 #:add))

(in-package :lists)

(defun main () 
	(progn
		(ui:print-instructions)
		(ui:print-menu)
		(let ((*list* (tasks:init)))
			(loop 
				(let ((x (ui:menu-select)))
					(cond ((eq x nil) '())
						('t (setq *list* (funcall (cadar x) *list*)))))))))

