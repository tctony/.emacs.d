(defun programming-hook ()
  (progn
    (autopair-mode)
    ))

(dolist (mode-hook '(emacs-lisp-mode-hook php-mode-hook))
  (add-hook mode-hook 'programming-hook))


(provide 'init-programming)
