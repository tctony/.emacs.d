(menu-bar-mode)
(column-number-mode)
(line-number-mode)
(global-linum-mode)

(remove-hook 'text-mode-hook 'turn-on-auto-fill)
(remove-hook 'text-mode-hook 'turn-on-flyspell)

(setq tab-width 4)
(setq tab-stop-list '(4 8 12 16 20 24 28 32 36 40 44 48 52 56 60 64 68 72 76 80))
(setq indent-tabs-mode nil)
(provide 'init-basic)