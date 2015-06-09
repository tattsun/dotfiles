;; use haskell platform package on mac

(load "haskell-mode-autoloads")

(let ((my-cabal-path (expand-file-name "~/Library/Haskell/bin")))
  (setenv "PATH" (concat my-cabal-path ":" (getenv "PATH")))
  (add-to-list 'exec-path my-cabal-path)
  )

(custom-set-variables
 '(haskell-notify-p t)
 '(haskell-tags-on-save t)
 '(haskell-stylish-on-save t)
 '(haskell-process-type 'cabal-repl)
 )

(autoload 'ghc-init "ghc" nil t)
(autoload 'ghc-debug "ghc nil t")

(add-hook 'haskell-mode-hook
          (lambda ()
            (define-key haskell-mode-map [?\C-c ?\C-l] 'haskell-process-load-file)
            (define-key haskell-mode-map [?\C-c ?\C-z] 'haskell-interactive-switch)
            (define-key haskell-mode-map (kbd "C-c C-t") 'haskell-process-do-type)
            (define-key haskell-mode-map (kbd "C-c C-i") 'haskell-process-do-info)
            (define-key haskell-mode-map (kbd "M-.") 'haskell-mode-tag-find)
            (turn-on-haskell-indentation)
            (turn-on-haskell-decl-scan)
            (ghc-init)
            (add-to-list 'ac-sources 'ac-source-ghc-mod)
            ))
