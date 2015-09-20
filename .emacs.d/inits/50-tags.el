;; TAGS auto-generation

;; required ctags over 5.8

;;(defun my/create-tags (src-dir)
;;  (interactive)
;;  (let* ((dir (file-name-as-directory (file-truename src-dir)))
;;        (file (concat dir "TAGS")))
;;    (message "saving TAGS at %s" file)
;;    (shell-command (format "ctags -f %s -e -R %s" file dir))
;;    file
;;    ))


(require 'ggtags)
(add-hook 'c-mode-common-hook
          (lambda ()
            (when (derived-mode-p 'c-mode 'c++-mode 'java-mode 'asm-mode)
              (ggtags-mode 1))))
;; use helm
(setq ggtags-completing-read-function nil)
