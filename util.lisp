(cl:in-package "https://github.com/g000001/srfi-16#internals")


(eval-when (:compile-toplevel :load-toplevel :execute)
  (defun to-proper-lambda-list (list)
    (cl:typecase list
      (cl:list (if (cl:tailp () list)
                   list
                   (cl:let ((last (cl:last list)))
                     `(,@(cl:butlast list)
                         ,(car last)
                         cl:&rest
                         ,(cdr last)))))
      (cl:symbol `(cl:&rest ,list)))))


(defmacro lambda (args &rest body)
  `(cl:lambda ,(to-proper-lambda-list args)
     ,@body))


;;; *EOF*
