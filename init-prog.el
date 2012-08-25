;remove auto-fill-mode from prog-mode-hook in starter-kit
(remove-hook 'prog-mode-hook 'esk-local-comment-auto-fill)

(defun prog-hook-fun ()
  (progn
    (require 'autopair)
    (autopair-mode)
    (rainbow-delimiters-mode)
    ))

(add-hook 'prog-mode-hook 'prog-hook-fun)


(provide 'init-prog)
