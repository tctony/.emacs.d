(setq sgml-basic-offset 4)

(require 'mmm-mode)
(setq mmm-global-mode 'maybe)
(setq mmm-submode-decoration-level 2)

(mmm-add-classes
 '((embedded-css
    :submode css-mode
     :face mmm-declaration-submode-face
    :front "style=\""
    :back "\"")))
(mmm-add-classes
 '((embedded-javascript
    :submode js2-mode
    :face mmm-code-submode-face
    :front "<script\[^>\]*>"
    :back "</script>")))
(mmm-add-classes
 '((embedded-php
    :submode php-mode
    :face mmm-code-submode-face
    :front "<?php"
    :back "?>")))

(add-auto-mode 'html-mode "\\.phtml$")

(add-to-list 'mmm-mode-ext-classes-alist
             '(html-mode nil embedded-css))
(add-to-list 'mmm-mode-ext-classes-alist
             '(html-mode nil embedded-javascript))
(add-to-list 'mmm-mode-ext-classes-alist
             '(html-mode nil embedded-php))


(provide 'init-web)
