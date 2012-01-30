;;;; package.lisp

(cl:in-package :cl-user)

(defpackage :srfi-16
  (:export :case-lambda))

(defpackage :srfi-16-internal
  (:use :srfi-16 :cl :fiveam :mbe)
  (:shadow :lambda))
