;;; begin package

(require 'package)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives '("tromey" . "http://tromey.com/elpa/") t)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(defvar my-packages '(starter-kit
                      starter-kit-bindings
                      color-theme-sanityinc-solarized

                      php-mode
                      flymake-php
                      multi-web-mode

                      yasnippet

                      autopair
                      auto-complete

                      rainbow-mode
                      rainbow-delimiters

                      )
  "A list of packages to ensure are installed at launch.")

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

;;; end package


(setq user-mail-address "tangchang21@gmail.com")
(setq user-full-name "Tony Tang")
                                        
(require 'color-theme-sanityinc-solarized) ;use solarized theme
(color-theme-sanityinc-solarized-light)

;;; beigin require init-*
 
(add-to-list 'load-path (expand-file-name (file-name-directory load-file-name)))

(require 'init-basic)
(require 'init-utils)
(require 'init-binding)

(require 'init-prog)
(require 'init-php)
(require 'init-css)
(require 'init-web)
(require 'init-auto-complete)

;;; end require init-*


;;; machine related
(set-face-attribute 'default nil :height 140) ;font size 14px
(setq default-frame-alist '((width . 157) (height . 39))) ;frame size fullscreen

; load local.el to overwrite some machine specific settings if exists
(let ((local-config-file (concat (file-name-directory load-file-name) "local.el")))
   (if (file-exists-p local-config-file) (load local-config-file)))
