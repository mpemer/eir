(in-package :asdf)

(defsystem :eir
  :name :eir
  :version "0.0.0"
  :maintainer "Marcus Pemer"
  :author "Marcus Pemer"
  :licence "GPLv2"
  :description "Eir"
  :long-description "Healing Common Lisp with red utilities and green extensions"
  :depends-on (:lisp-unit)
  :components ((:file "test" :depends-on ("eir"))
	       (:file "eir"  :depends-on ("package"))
	       (:file "package")))
