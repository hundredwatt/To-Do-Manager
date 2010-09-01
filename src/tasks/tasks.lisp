(in-package :tasks)

(defun init ()
	(let ((l (data:make-list-master)))
		(progn
			(setf l (data:new-list l "List 1"))
			(setf l (data:new-list l "List 2"))
			(setf l (data:new-list l "List 3")))))

(defun show (lm)
	(progn
		(format t " ** LISTS ** ~&")
		(loop for x in (data:list-master-lists lm) do
			(format t " ~a ~&" (data:ordered-list-title x)))
		(identity lm)))

(defun select (lm)
	(progn
		(format t " ** SELECT A LIST ** ~&")
		(let ((i 1))
			(loop for x in (data:list-master-lists lm) do
				(progn
					(format t " ~a: ~a ~&" i (data:ordered-list-title x))
					(setf i (+ i 1)))))
		(ui:show-prompt "Select List")
		(let ((j (read)) (i 1))
			(loop for x in (data:list-master-lists lm) do
				(progn 
					(cond ((eq i j) (edit x)))
					(setf i (+ i 1)))))
			
	(identity lm)))

(defun add (lm)
	(data:new-list lm (ui:prompt-name)))

(defun edit (l)
	(loop do
		(progn 
			(format t "** Editing \"~a\" ** ~&" (data:ordered-list-title l)))
			(ui:print-list l)
			(ui:show-prompt "(a)dd an item or (q)uit")
			(let ((token (read)))
				(progn
					(cond
						((eq token 'A)
							(progn
								(ui:show-prompt "Enter Item")
								(let ((item (read-line)))
									(data:add-to-list l item))))
						((eq token 'Q) (return)))))))

