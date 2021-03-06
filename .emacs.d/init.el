(setq inhibit-startup-message t) ; Do not show me startup message

(scroll-bar-mode -1)             ; Disable the scrollbar
(tool-bar-mode -1)               ; Disable the toolbar
(tooltip-mode -1)                ; Disable tooltips
(set-fringe-mode 10)             ; 
(menu-bar-mode -1)               ; Disable the menu bar
(setq visibility-bell t)         ; Disable the bell

(set-face-attribute 'default nil :font "Fira Code Retina" :height 120)

;; Initialize package sources
(require 'package)

(setq package-archives '(("melpa" . "https://melpa.org/packages/")
			 ("org"   . "https://orgmode.org/elpa/")
			 ("elpa"  . "https://elpa.gnu.org/packages/")))

(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))

;; Initialize use-package on non-linux platforms
(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)

(use-package command-log-mode)
