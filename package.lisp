(in-package :cl)

(defpackage :mercury.model
  (:use :cl :asdf
	:postmodern
	:simple-date
	:iterate
	:lisp-unit)
  (:export :init :create-schema :drop-schema :recreate-schema

	   :create-market :read-market :read-markets :update-market :delete-market

	   :instrument :instrument-id
	   :create-instrument :read-instrument :read-instruments
	   :update-instrument :delete-instrument

	   :create-balance-sheet :read-balance-sheet :update-balance-sheet :delete-balance-sheet
	   :create-balance-sheet-asset-value :read-balance-sheet-asset-value
	   :update-balance-sheet-asset-value :delete-balance-sheet-asset-value
	   :create-balance-sheet-liability-value :read-balance-sheet-liability-value
	   :update-balance-sheet-liability-value :delete-balance-sheet-liability-value

	   :create-income-statement :read-income-statement
	   :update-income-statement :delete-income-statement
	   :create-income-statement-value :read-income-statement-value
	   :update-income-statement-value :delete-income-statement-value

	   :create-cash-flow-statement :read-cash-flow-statement
	   :update-cash-flow-statement :delete-cash-flow-statement
	   :create-cash-flow-statement-value :read-cash-flow-statement-value
	   :update-cash-flow-statement-value :delete-cash-flow-statement-value

	   :create-price :read-price :update-price :delete-price

	   :change-in-total-current-assets-as-of
	   :change-in-cash-and-cash-equivalents-as-of
	   :change-in-total-current-liabilities-as-of
	   :change-in-long-term-debt-as-of
	   :change-in-%taxes-payable-as-of
	   :depreciation-&-amortization-as-of
	   :total-assets-as-of
	   :total-non-current-assets-as-of
	   :total-non-current-liabilities-as-of
	   :receivables-as-of
	   :revenue-as-of
	   ))

(defpackage :mercury.algorithm
  (:use :cl :asdf
	:iterate
	:mercury.model
	:lisp-unit
	:simple-date)
  (:export :ca :cl :dep :sta :snoa))

(defpackage :mercury.stats
  (:use :cl :asdf
	:iterate
	:lparallel
	:lparallel.counter)
  (:export :reset-stats
	   :tick-stats
	   :print-progress))

(defpackage :mercury
  (:use :cl :asdf
	:postmodern
	:simple-date
       	:fare-csv
	:cl-fad
	:iterate
	:cl-ppcre
	:drakma
	:lparallel
	:lparallel.queue
	:mercury.model
	:mercury.stats
	)
  (:export :process-morningstar-data
	   :process-yahoo-data))
