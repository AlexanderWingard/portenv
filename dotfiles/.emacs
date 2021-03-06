(add-to-list 'load-path "PORTENV/otp/lib/tools/emacs")

(require 'erlang-start)
(require 'magit)
(setq-default erlang-root-dir "PORTENV/target/lib/erlang")

(prefer-coding-system 'utf-8-unix)
(setq-default indent-tabs-mode nil)

(setq inhibit-startup-screen t)
(setq initial-scratch-message "")

(global-set-key "\M-g" 'goto-line)
(global-set-key "\C-x\C-b" 'bs-show)
(global-set-key "\M-l" 'list-matching-lines)
(global-set-key "\C-c\C-g" 'magit-status)

(global-font-lock-mode 1)
(setq font-lock-maximum-decoration t)
(setq-default show-trailing-whitespace t)

(set-background-color "black")
(set-foreground-color "white")
(set-cursor-color "white")

(set-face-foreground 'font-lock-comment-face "green yellow")
(set-face-foreground 'font-lock-doc-face "green yellow")
(set-face-foreground 'font-lock-constant-face "light slate blue")
(set-face-foreground 'font-lock-function-name-face "cyan")
(set-face-foreground 'font-lock-string-face "yellow")
(set-face-foreground 'font-lock-type-face "orange")
(set-face-foreground 'font-lock-variable-name-face "magenta")

(set-face-foreground 'mode-line "white")
(set-face-background 'mode-line "purple3")

(set-face-foreground 'minibuffer-prompt "red")

(set-face-background 'region "slateblue4")
(set-face-background 'highlight "color-238")

(set-face-background 'trailing-whitespace "color-236")

(set-face-foreground 'diff-added "color-82")
(set-face-foreground 'diff-removed "color-197")

