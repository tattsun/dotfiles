;; general
;;; disable startup screen
(custom-set-variables '(inhibit-startup-screen t))
;;; disable irritating C-z
(global-set-key "\C-z" nil)

;; editing
(setq-default indicate-empty-lines t)
(setq-default show-trailing-whitespace t)
(add-hook 'before-save-hook 'delete-trailing-whitespace)
(global-auto-revert-mode t)
(setq require-final-newline t)
;;; indentation
(setq-default tab-width 2 indent-tabs-mode nil)
;;; linum
(global-linum-mode 1)
;;; parens
(show-paren-mode t)

;; ui
;;; disable scrollbar
(tool-bar-mode 0)
(set-scroll-bar-mode nil)
;;; theme
(load-theme 'wombat t)
