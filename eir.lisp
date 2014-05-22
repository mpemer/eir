(in-package :eir)

(defmacro seth (hash-table key value)
"Macro that does the semi-awkward (setf (gethash ... pattern"
  `(setf (gethash ,key ,hash-table) ,value))

(defmacro def (name &body body)
  "Macro that provides a shorter version of defparameter"
  `(defparameter ,name ,@body))
