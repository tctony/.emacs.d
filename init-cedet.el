(add-to-list 'semantic-default-submodes 'global-semanticdb-minor-mode)
(add-to-list 'semantic-default-submodes 'global-semantic-idle-scheduler-mode)
(add-to-list 'semantic-default-submodes 'global-semantic-idle-summary-mode)
;(add-to-list 'semantic-default-submodes 'global-semantic-idle-completions-mode)
;(add-to-list 'semantic-default-submodes 'global-semantic-decoration-mode)
;(add-to-list 'semantic-default-submodes 'global-semantic-highlight-func-mode)
;(add-to-list 'semantic-default-submodes 'global-semantic-mru-bookmark-mode)

(require 'semantic/ia)
(semantic-mode 1)

(require 'ecb)
(custom-set-variables
  '(ecb-options-version "2.40")
  ;'(ecb-layout-window-sizes (quote (("left-analyse" (ecb-directories-buffer-name 0.23728813559322035 . 0.2765957446808511) (ecb-sources-buffer-name 0.23728813559322035 . 0.23404255319148937) (ecb-methods-buffer-name 0.23728813559322035 . 0.23404255319148937) (ecb-analyse-buffer-name 0.23728813559322035 . 0.23404255319148937)))))
  ;'(ecb-auto-activate t)
  '(ecb-tip-of-the-day nil))


(provide 'init-cedet)
