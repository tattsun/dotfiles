;; helm
(helm-mode 1)

;; exec-path-from-shell
(let ((envs '("PATH")))
  (exec-path-from-shell-copy-envs envs))

;; magit
(defalias 'mgt 'magit-status)

;; smartparens
(smartparens-global-mode t)

;; flycheck
(global-flycheck-mode)
