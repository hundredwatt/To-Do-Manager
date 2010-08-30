(in-package :data)

(defstruct (ordered-list) items title)

(defun empty-list ()
	(make-ordered-list :items nil :title "My List"))

(defun add-to-list (mylist item)
	(let ((current_list (ordered-list-items mylist)) (x item))
		(progn 
			(setq current_list (reverse (list* x (reverse current_list))))
			(make-ordered-list :items current_list))))


(defstruct (list-master) lists)

(defun list-master-count (lm)
	(length (list-master-lists)))

(defun new-list (lm)
	(let ((cur (list-master-lists lm)))
		(make-list-master :lists (list* (empty-list) cur))))

(defun list-lists ()
	'())
