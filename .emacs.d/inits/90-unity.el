
(defun my/csharp-mode-init ()
  (message " initializing csharp-mode")

  ;; omnisharp
  (require 'omnisharp)
  (setq omnisharp-server-executable-path (expand-file-name "~/.emacs.d/bin/omnisharp-server/OmniSharp/bin/Debug/OmniSharp.exe"))
  (omnisharp-mode)

  ;; auto-complete
  (company-mode)
  (add-to-list 'company-backends 'company-omnisharp)
  )

(add-hook 'csharp-mode-hook 'my/csharp-mode-init)
;;(add-hook 'csharp-mode-hook 'omnisharp-mode)
