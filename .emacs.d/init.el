;; packages
(defvar my/packages
  '(init-loader
    exec-path-from-shell
    helm
    auto-complete
    magit
    smartparens
    flycheck

    ;; golang
    go-mode
    go-autocomplete
    go-eldoc

    ;; haskell
    haskell-mode
    ghc

    ;; yaml
    yaml-mode
    ))

;; init package system
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
(package-initialize)

;; install packages
(dolist (package my/packages)
  (when (or (not (package-installed-p package)))
    (package-install package)))

(require 'init-loader)
(init-loader-load "~/.emacs.d/inits")
