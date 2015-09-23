(defun my/init-cxx ()
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

(defun my/cxx-mode-hooks ()
  (let ((extension (file-name-extension (buffer-file-name))))
    (cond
     ((or (string= extension "c")
          (string= extension "h"))
      (my/cxx-mode-hooks))
     ((or (string= extension "cpp")
          (string= extension "hpp"))
      (my/cxx-mode-hooks))
     ((string= extension "cs")
      nil)
     (t nil))))

(add-hook 'c-mode-hook 'my/cxx-mode-hooks)
