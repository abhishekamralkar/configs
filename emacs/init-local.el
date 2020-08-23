;;; init-local.el --- My emacs config -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(set-face-attribute 'default nil
                    :family "Fira Code Regular"
                    :height 112
                    :weight 'normal
                    :width 'normal)



(add-to-list 'load-path "/home/aaa/.emacs.d/themes")
(require 'ujelly-theme)
(desktop-save-mode 0)



(setq org-agenda-files (list "~/.emacs.d/org/todo.org"
                             "~/.emacs.d/org/learning.org" 
                             "~/.emacs.d/org/home.org"))


(add-hook 'rust-mode-hook 'cargo-minor-mode)

(setq racer-cmd "~/.cargo/bin/racer") ;; Rustup binaries PATH
(setq racer-rust-src-path "~/Code/Rust/rust/src") ;; Rust source code PATH

(add-hook 'rust-mode-hook #'racer-mode)
(add-hook 'racer-mode-hook #'eldoc-mode)
(add-hook 'racer-mode-hook #'company-mode)
(provide 'init-local)
;;; init-local.el ends here
