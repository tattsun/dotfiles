;; disable startup screen
(custom-set-variables '(inhibit-startup-screen t))

;; editing supports
(setq-default indicate-empty-lines t)

;; backups
(setq make-backup-files nil)
(setq auto-save-default nil)

;; auto-revert-mode
(global-auto-revert-mode t)

;; indentation
(setq-default tab-width 2 indent-tabs-mode nil)

;;
(setq-default indicate-empty-lines t)
(setq-default show-trailing-whitespace t)
(add-hook 'before-save-hook 'delete-trailing-whitespace)
(setq require-final-newlone t)
