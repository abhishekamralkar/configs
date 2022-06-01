;;; init-local.el --- Configure default locale -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:


(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(load-theme 'gruvbox t)

;; add package path
(add-to-list 'load-path "~/.emacs.d/site-lisp/use-package")
(require 'use-package)

(with-eval-after-load 'info
  (info-initialize)
  (add-to-list 'Info-directory-list
               "~/.emacs.d/site-lisp/use-package/"))
(require 'use-package)

(desktop-save-mode 0)


(set-face-attribute 'default nil :font "Hack-10" )

;; elpy
(use-package elpy
             :ensure t
             :init
             (elpy-enable))

;; set default python3
(setq python-shell-interpreter "python3"
      python-shell-interpreter-args "-i")

(setq python-indent-guess-indent-offset t)
(setq python-indent-guess-indent-offset-verbose nil)

;;no decoration
;;(set-frame-parameter nil 'undecorated t)

(provide 'init-local)
;;; init-local.el ends here
