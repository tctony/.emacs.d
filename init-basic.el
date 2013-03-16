(menu-bar-mode)
(column-number-mode)
(line-number-mode)

;remove hooks added in starter-kit
(remove-hook 'text-mode-hook 'turn-on-flyspell)
(remove-hook 'text-mode-hook 'turn-on-auto-fill) ; too annoy
(remove-hook 'prog-mode-hook 'idle-highlight-mode)

(setq default-tab-width 4)
(setq tab-stop-list '(4 8 12 16 20 24 28 32 36 40 44 48 52 56 60 64 68 72 76 80))
(setq indent-tabs-mode nil)

(setq show-trailing-whitespace t)

; fix some font problem
(set-face-italic-p 'italic nil)
(make-face-unitalic 'font-lock-comment-face)

(global-auto-revert-mode 1)

(require 'google-this)
(google-this-mode 1)

(provide 'init-basic)
