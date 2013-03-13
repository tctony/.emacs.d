;;; begin package

(setq emacs-config-dir (file-name-directory load-file-name))

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

                      yasnippet
                      auto-complete
                      ecb

                      google-c-style
                      google-this

                      python-mode

                      php-mode

                      js2-mode

                      multi-web-mode
                      
                      autopair
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
                                        
(require 'color-theme-sanityinc-solarized)
(color-theme-sanityinc-solarized-light)

;;; beigin require init-*
 
(add-to-list 'load-path (expand-file-name (file-name-directory load-file-name)))

(require 'init-basic)
(require 'init-utils)
(require 'init-binding)

(require 'init-org)
(require 'init-erc)

(require 'init-prog)
(require 'init-yasnippet)
(require 'init-auto-complete)
(require 'init-cedet)

(require 'init-python)
(require 'init-php)
(require 'init-css)
(require 'init-js)
(require 'init-web)

;;; end require init-*

(server-start)

; load local.el to overwrite some machine specific settings if exists
; such as: font size and frame size
; (set-face-attribute 'default nil :height 140) ;font size 14px
; (setq default-frame-alist '((width . 177) (height . 47))) ;frame size fullscreen on my air
(let ((local-config-file (concat emacs-config-dir "local.el")))
   (if (file-exists-p local-config-file) (load local-config-file)))
