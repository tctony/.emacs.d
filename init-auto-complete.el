(require 'auto-complete)
(require 'auto-complete-config)

(setq ac-auto-start 2
      ac-auto-show-menu t)

(setq-default ac-sources '(ac-source-abbrev ac-source-dictionary ac-source-words-in-buffer ac-source-words-in-same-mode-buffers))

(defun ac-emacs-lisp-mode-setup ()
  (setq ac-sources (append '(ac-source-features ac-source-functions ac-source-yasnippet ac-source-variables ac-source-symbols) ac-sources)))

(defun ac-cc-mode-setup ()
  (setq ac-sources (append '(ac-source-semantic-raw ac-source-semantic ac-source-yasnippet) ac-sources)))

(add-hook 'emacs-lisp-mode-hook 'ac-emacs-lisp-mode-setup)
(add-hook 'c-mode-common-hook 'ac-cc-mode-setup)
(add-hook 'css-mode-hook 'ac-css-mode-setup)

(global-auto-complete-mode t)

(define-key ac-mode-map (kbd "M-RET") 'auto-complete)
(define-key ac-complete-mode-map "<return>" nil)
(define-key ac-complete-mode-map "RET" nil)
(define-key ac-complete-mode-map "<C-return>" 'ac-complete)

(provide 'init-auto-complete)
