(in-package #:cl-user)

;;; First ASDF install the dependencies

(eval-when (:compile-toplevel :execute :load-toplevel)
  (require 'asdf-install))


;;; Load tpd2

(eval-when (:compile-toplevel :load-toplevel :execute)
	    (asdf:oos 'asdf:load-op 'lists))

(in-package #:lists)

(main)
