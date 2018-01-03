(defvar split-symbol ?.
  "*this is variable used for splitingwordsyouwanttocamel")


(defun auto-camel-name (&optional input-symbol)
  "user can choose one symbol to split words
every words preceeded by this symbol will be capitalized and
the symbol will be deleted"
  (interactive)
  (let ((valid-symbol (or input-symbol split-symbol)))
    (save-excursion
      (let ((number-of-dots 0)
	    (end-of-names (point))
	    (start-of-names))
	(catch 'BeginningOfBuffer
	  (while (and (not (eq (char-before) 32)) (not (eq (char-before) 10)))
	    (if (eq (char-before) valid-symbol)
		(setq number-of-dots (+ number-of-dots 1)))
	    (backward-char 1)
	    (if (eq (point) (point-min))
		(throw 'BeginningOfBuffer nil))))
	(message "%c %d" valid-symbol number-of-dots)
	(if (not (eq (char-before (+ (point) 1)) valid-symbol))
	    (forward-word 1))
	(setq start-of-names (point))
	(capitalize-region start-of-names end-of-names)
	(goto-char end-of-names)
	(dotimes (null number-of-dots)
	  (backward-word 1)
	  (backward-delete-char 1))))))

(defun auto-camel-region (&optional input-symbol)
  "this functino is used for camelize names in a region, 
but for many programming language, there are a lot of dot reference
so I use semantic to analyze source code to extract variables, thus
dot reference will be parsed"
  q)
(defun underscore-to-camel ()
  "call auto-camel-name to transfer underscore style to camel style"
  (interactive)
  (auto-camel-name ?_))

