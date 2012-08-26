(require 'auto-complete)
(require 'auto-complete-config)
;(ac-config-default)
(global-auto-complete-mode t)

(setq ac-dwim nil)

(set-default 'ac-sources
             '(ac-source-dictionary
               ac-source-words-in-buffer
               ac-source-words-in-same-mode-buffers
               ac-source-words-in-all-buffer))

(setq tab-always-indent 'complete)
(add-to-list 'completion-styles 'initials t)

(define-key ac-completing-map (kbd "C-n") 'ac-next)
(define-key ac-completing-map (kbd "C-p") 'ac-previous)

(provide 'init-auto-complete)
