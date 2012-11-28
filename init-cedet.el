(add-to-list 'semantic-default-submodes 'global-semanticdb-minor-mode)
(add-to-list 'semantic-default-submodes 'global-semantic-idle-scheduler-mode)
(add-to-list 'semantic-default-submodes 'global-semantic-idle-summary-mode)
;(add-to-list 'semantic-default-submodes 'global-semantic-idle-completions-mode)
(add-to-list 'semantic-default-submodes 'global-semantic-decoration-mode)
;(add-to-list 'semantic-default-submodes 'global-semantic-highlight-func-mode)
;(add-to-list 'semantic-default-submodes 'global-semantic-mru-bookmark-mode)

(require 'semantic/ia)
(semantic-mode 1)

(provide 'init-cedet)
