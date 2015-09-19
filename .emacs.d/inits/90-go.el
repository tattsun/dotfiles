(add-hook 'before-save-hook 'gofmt-before-save)

;; go-autocomplete
(require 'go-autocomplete)

;; goflycheck
(add-to-list 'load-path (concat (getenv "HOME") "/work/src/github.com/dougm/goflymake"))
(require 'go-flycheck)

;; go-eldoc
(add-hook 'go-mode-hook 'go-eldoc-setup)

;; godef - like tag jump
(add-hook 'go-mode-hook (lambda ()
                          (local-set-key (kbd "M-.") 'godef-jump)))
