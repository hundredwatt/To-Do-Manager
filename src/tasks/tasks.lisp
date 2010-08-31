(in-package :tasks)

(defun init ()
	(data:make-list-master))

(defun show (lm)
	(progn
		(format t " ** LISTS ** ~&")
		(loop for x in (data:list-master-lists lm) do
			(format t " ~a ~&" (data:ordered-list-title x)))
		(identity lm)))

(defun select (lm)
	(identity lm))

(defun add (lm)
	(data:new-list lm (ui:prompt-name)))

