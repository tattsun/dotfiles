(defun c-mode-hooks ()
  (require 'auto-complete-c-headers)
  (add-to-list 'ac-sources 'ac-source-c-headers)
  (flycheck-mode))

(add-hook 'c-mode-hook 'c-mode-hooks)
