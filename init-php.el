(add-auto-mode 'php-mode "\\.php[345]?\\'\\|\\.phtml\\'" "\\.tpl\\'")

(defun php-mode-hook-function ()
  (progn
    (setq ac-sources (append '() ac-sources))
    ;(flymake-php-load)
    ))

(add-hook 'php-mode-hook 'php-mode-hook-function)


(provide 'init-php)
