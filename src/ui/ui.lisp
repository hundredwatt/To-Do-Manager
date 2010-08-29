(in-package :ui)

(defun read-item ()
	(read-line))

(defun print-instructions () 
	(format t " ~&** Welcome to List Manager ** ~& ~&"))

(defun print-list (mylist)
	(progn 
		(format t  "~& ~&")
		(format t "~&********************~&~a~&********************~&" (data:ordered-list-title mylist))
		(loop for x in (data:ordered-list-items mylist) do
			(format t " -  ~a~&" x))
		(format t  "~& ~&")))

(setf menu 
	'((1 "Show All List Names")
		(2 "Select a list")
		(3 "Create a new list")))

(defun print-menu () 
	(loop for x in menu do
		(format t "~a: ~a ~&" (car x) (cdr x))))

(defun menu-select ()
	(let ((token (read)))
		(assoc token menu)))
