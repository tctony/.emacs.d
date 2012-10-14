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

(custom-set-variables '(tab-width 4)
                      '(c-basic-offset tab-width)
                      '(indent-tabs-mode nil tab-width)
                      '(css-indent-offset tab-width)
                      '(nxml-child-indent tab-width)
                      '(mumamo-submode-indent-offset tab-width)
                      )

(provide 'init-prog)
