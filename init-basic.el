(menu-bar-mode)
(column-number-mode)
(line-number-mode)

;remove hooks added in starter-kit
(remove-hook 'text-mode-hook 'turn-on-flyspell)
(remove-hook 'text-mode-hook 'turn-on-auto-fill)

(setq default-tab-width 4)
(setq tab-stop-list '(4 8 12 16 20 24 28 32 36 40 44 48 52 56 60 64 68 72 76 80))
(setq indent-tabs-mode nil)

(setq show-trailing-whitespace t)

(set-face-italic-p 'italic nil)
(make-face-unitalic 'font-lock-comment-face)

(global-auto-revert-mode 1)

(global-set-key (kbd "<f7>") 'comment-or-uncomment-region)

(provide 'init-basic)
