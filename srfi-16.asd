;;;; srfi-16.asd

(cl:in-package :asdf)

(defsystem :srfi-16
  :serial t
  :depends-on (:mbe)
  :components ((:file "package")
               (:file "srfi-16")))

(defmethod perform ((o test-op) (c (eql (find-system :srfi-16))))
  (load-system :srfi-16)
  (or (flet ((_ (pkg sym)
               (intern (symbol-name sym) (find-package pkg))))
         (let ((result (funcall (_ :fiveam :run) (_ :srfi-16-internal :srfi-16))))
           (funcall (_ :fiveam :explain!) result)
           (funcall (_ :fiveam :results-status) result)))
      (error "test-op failed") ))

