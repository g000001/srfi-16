;;;; package.lisp

(cl:in-package :cl-user)


(defpackage "https://github.com/g000001/srfi-16"
  (:export case-lambda))


(defpackage "https://github.com/g000001/srfi-16#internals"
  (:use "https://github.com/g000001/srfi-16"
        cl
        fiveam
        mbe)
  (:shadow lambda))


;;; *EOF*
