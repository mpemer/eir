(in-package :eir)

(defmacro seth (hash-table key value)
  `(setf (gethash ,key ,hash-table) ,value))

(defmacro def (name &body body)
  `(defparameter ,name ,@body))
