(require 'erc)

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

;(setq erc-kill-buffer-on-part t)
;(setq erc-kill-queries-on-quit t)
;(setq erc-kill-server-buffer-on-quit t)

(provide 'init-erc)
