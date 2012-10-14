(add-auto-mode 'js2-mode "\\.js$")

(add-hook 'js2-mode-hook '(lambda () (setq mode-name "JS2")))

(defvar preferred-javascript-indent-level 4)

(setq js2-use-font-lock-faces t
      js2-mode-must-byte-compile nil
      js2-basic-offset preferred-javascript-indent-level
      js2-indent-on-enter-key t
      js2-auto-indent-p t
      js2-bounce-indent-p t)

(provide 'init-js)
