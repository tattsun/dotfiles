;; helm
(helm-mode 1)
;;; keybinds
(global-set-key (kbd "M-y") 'helm-show-kill-ring)
(global-set-key (kbd "C-x C-d") 'helm-browse-project)

;; exec-path-from-shell
(let ((envs '("PATH")))
  (exec-path-from-shell-copy-envs envs))

;; magit
(defalias 'mgt 'magit-status)

;; smartparens
(smartparens-global-mode t)

;; flycheck
(global-flycheck-mode)
