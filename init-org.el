(add-auto-mode 'org-mode "\\.org$")

(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

(add-hook 'org-mode-hook 'turn-on-auto-fill)

(setq org-hide-leading-stars t)

(provide 'init-org)
