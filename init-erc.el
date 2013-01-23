(require 'erc)

(setq my-erc-dir (concat emacs-config-dir "erc/"))
(setq my-erc-log-dir (concat my-erc-dir "log/"))

;; irc.freenode.net:6665

(setq erc-nick "tctony"
      erc-user-full-name "Tony Tang"
      erc-server "irc.freenode.net"
      erc-port 6665)

(setq erc-echo-notices-in-minibuffer-flag t
      erc-default-coding-system '(utf-8 . utf-8)
;      erc-encoding-coding-alist '(("#linuxfire" . chinese-iso-8bit))
      erc-kill-buffer-on-part t
      erc-auto-query t)

(erc-autojoin-mode t)
(setq erc-autojoin-channels-alist
      '(("freenode.net"
         "#irc"
         "#emacs"
         "#openstack")))

(setq erc-kill-buffer-on-part t)
(setq erc-kill-queries-on-quit t)
(setq erc-kill-server-buffer-on-quit t)

(erc-timestamp-mode 1)
(setq erc-insert-timestamp-function 'erc-insert-timestamp-left)

(require 'erc-log)
(erc-log-mode 1)
(setq erc-log-channels-directory my-erc-log-dir
      erc-save-buffer-on-part t
      erc-log-file-coding-system 'utf-8
      erc-log-write-after-send t
      erc-log-write-after-insert t)
 
(unless (file-exists-p erc-log-channels-directory)
  (mkdir erc-log-channels-directory t))

(provide 'init-erc)
