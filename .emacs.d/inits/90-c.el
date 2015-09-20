(defun cxx-mode-hooks ()
  (ac-cc-mode-setup)
  ;; clang-complete-async
  (require 'auto-complete-clang-async)
  (setq ac-clang-complete-executable "~/.emacs.d/bin/clang-complete")
  (add-to-list 'ac-sources 'ac-source-clang-async)
  (ac-clang-launch-completion-process)
  ;; auto-complete-c-headers
  (require 'auto-complete-c-headers)
  (add-to-list 'ac-sources 'ac-source-c-headers)
  ;; flycheck
  (flycheck-mode))

(add-hook 'c-mode-hook 'cxx-mode-hooks)
(add-hook 'c++-mode-hook 'cxx-mode-hooks)
