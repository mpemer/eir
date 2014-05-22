(in-package :lisp-unit)

(defun run-eir-tests ()
  "Runs the test suite for each package in the eir system"
  (progn
    (run-tests :all :eir)))

(setq *print-errors* t)
(run-eir-tests)
