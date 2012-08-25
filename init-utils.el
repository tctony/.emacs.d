(defun add-auto-mode (mode &rest patterns)
  "Add entries to `auto-mode-alist' to use `MODE' for all given file `PATTERNS'."
  (dolist (pattern patterns)
    (add-to-list 'auto-mode-alist (cons pattern mode))))

(defun google-search ()
  "Look up the word under cursor or the text selection (if exists) on Google using a browser."
  (interactive)
  (let (word url)
    (setq word
          (if (region-active-p)
              (buffer-substring-no-properties (region-beginning) (region-end))
            (thing-at-point 'symbol)))
    (setq word (url-hexify-string word))
    (setq url (concat "http://www.google.com/search?q=" word))
    (browse-url url)
    ))
(global-set-key (kbd "<f6>") 'google-search)

(provide 'init-utils)
