(autoload 'markdown-mode "markdown-mode"
  "Major mode for editing Markdown files" t)
(add-auto-mode 'markdown-mode "\\.md$" "\\.markdown$")

(provide 'init-markdown)
