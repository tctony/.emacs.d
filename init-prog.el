;remove auto-fill-mode from prog-mode-hook in starter-kit
(remove-hook 'prog-mode-hook 'esk-local-comment-auto-fill)

(require 'google-c-style)
(add-hook 'c-mode-common-hook 'google-set-c-style)
(add-hook 'c-mode-common-hook 'google-make-newline-indent)

(semantic-mode 1)

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
                      )

(provide 'init-prog)
