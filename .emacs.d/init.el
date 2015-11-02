;; my favorited packages
(setq my/packages
  '(init-loader
    helm
    exec-path-from-shell
    magit
    smartparens
    flycheck
    auto-complete
    ))

;; initialize package manager
(require 'package)
(add-to-list 'package-archives
	     '("melpa" .  "http://melpa.milkbox.net/packages/"))
(package-initialize)

;; install uninstalled packages
(dolist (package my/packages)
  (when (or (not (package-installed-p package)))
    (package-install package)))

;; backup settings
(setq make-backup-files nil)
(setq auto-save-list-file-prefix nil)
(setq create-lockfiles nil)

;; load settings
(init-loader-load "~/.emacs.d/inits")
