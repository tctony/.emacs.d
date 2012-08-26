;remove auto-fill-mode from prog-mode-hook in starter-kit
(remove-hook 'prog-mode-hook 'esk-local-comment-auto-fill)

(require 'yasnippet)
(yas-global-mode t)

(defun prog-hook-fun ()
  (progn

    (require 'autopair)
    (autopair-mode)

    (rainbow-delimiters-mode)
    ))

(add-hook 'prog-mode-hook 'prog-hook-fun)

(setq-default c-basic-offset 4)

(provide 'init-prog)
