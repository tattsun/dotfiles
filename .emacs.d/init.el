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

    ;; c
    auto-complete-c-headers
    clang-complete-async

    ;; haskell
    haskell-mode
    ghc

    ;; yaml
    yaml-mode

    ;; dockerfile
    dockerfile-mode

    ;; php
    php-mode

    ;; hamlet
    hamlet-mode

    ;; haml
    shakespeare-mode

    ;; markdown
    markdown-mode

    ;; erlang
    erlang

    ;; cmake
    cmake-mode
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
