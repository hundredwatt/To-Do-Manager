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
	'((1 '("Show All List Names" 'tasks:show))
		(2 '("Select a list" 'tasks:select))
		(3 '("Create a new list" 'tasks:add))))

(defun print-menu () 
	(loop for x in menu do
		(format t "~a: ~a ~&" (car x) (car (cadadr x)))))

(defun menu-select ()
	(let ((token (read)))
		(let ((sel (assoc token menu)))
			(cond 
				((eq nil sel)  '() )
				('t (cdr (cadadr sel)))))))
