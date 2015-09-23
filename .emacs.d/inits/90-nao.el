;; nao

;; buffer common
(defun nao/truncate-buffer ()
  (delete-region 1 (+ (buffer-size) 1)))
(defun nao/buffer-to-string ()
  (buffer-substring 1 (+ (buffer-size) 1)))

;; file common
(defun nao/read-file (filename)
  (with-temp-buffer
    (insert-file-contents filename)
    (nao/buffer-to-string)))
