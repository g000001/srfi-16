;;;; srfi-16.asd

(cl:in-package :asdf)


(defsystem :srfi-16
  :version "20200224"
  :description "SRFI 16 form CL: Syntax for procedures of variable arity."
  :long-description "SRFI 16 form CL: Syntax for procedures of variable arity.
https://srfi.schemers.org/srfi-16"
  :author "Lars T Hansen"
  :maintainer "CHIBA Masaomi"
  :serial t
  :depends-on (:mbe)
  :components ((:file "package")
               (:file "util")
               (:file "srfi-16")))


(defmethod perform :after ((o load-op) (c (eql (find-system :srfi-16))))
  (let ((name "https://github.com/g000001/srfi-16")
        (nickname :srfi-16))
    (if (and (find-package nickname)
             (not (eq (find-package nickname)
                      (find-package name))))
        (warn "~A: A package with name ~A already exists." name nickname)
        (rename-package name name `(,nickname)))))


;;; *EOF*
