(autoload 'python-mode "python-mode" "Python Mode." t)
(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))
(add-to-list 'interpreter-mode-alist '("python" . python-mode))

; it seems that python-mode did not trigger prog-mode-hook
(add-hook 'python-mode-hook 'prog-hook-fun)

(provide 'init-python)
