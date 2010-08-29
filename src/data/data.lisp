(in-package :data)

(defstruct (ordered-list) items title)

(defun empty-list ()
	(make-ordered-list :items nil :title "My List"))

(defun add-to-list (mylist item)
	(let ((current_list (ordered-list-items mylist)) (x item))
		(progn 
			(setq current_list (reverse (list* x (reverse current_list))))
			(make-ordered-list :items current_list))))
