;; disable scrollbar
(tool-bar-mode 0)
(set-scroll-bar-mode nil)

;; theme
(load-theme 'wombat t)

;; cursor type
(setq cursor-type 'box)
(set-cursor-color "olive drab")

;; linum
(global-linum-mode 1)

;; space tab visiblity
(require 'whitespace)
(setq whitespace-style '(face           ; faceで可視化
                         trailing       ; 行末
                         tabs           ; タブ
                         empty          ; 先頭/末尾の空行
                         space-mark     ; 表示のマッピング
                         tab-mark
                         ))

(setq whitespace-display-mappings
      '((tab-mark ?\t [?\u00BB ?\t] [?\\ ?\t])))

(global-whitespace-mode 1)

;; font
(set-face-attribute 'default nil
                    :family "Ricty Diminished"
                    :height 140)
(set-fontset-font (frame-parameter nil 'font)
                  'japanese-jisx0208
                  (cons "Ricty Diminished" "iso10646-1"))
(set-fontset-font (frame-parameter nil 'font)
                  'japanese-jisx0212
                  (cons "Ricty Diminished" "iso10646-1"))
(set-fontset-font (frame-parameter nil 'font)
                  'katakana-jisx0201
                  (cons "Ricty Diminished" "iso10646-1"))
