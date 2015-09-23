;;; mytools.el --- my elisp tools
;;
;;; Code:

;; common
(defun my/filter1 (fn acc lst)
  (if (null lst)
      (reverse acc)
    (if (funcall fn (car lst))
        (my/filter1 fn (cons (car lst) acc) (cdr lst))
      (my/filter1 fn acc (cdr lst)))))
(defun my/filter (fn lst)
  (my/filter1 fn () lst))

;; debugging
(defun my/is-enabled-mode (mode-name)
  (condition-case nil
      (if (and (symbolp mode-name) (symbol-value mode-name))
          mode-name
        nil)
    (error nil)))
(defun my/enabled-minor-modes ()
  (my/filter 'my/is-enabled-mode minor-mode-list))

(provide 'mytools)
;;; mytools.el ends here
