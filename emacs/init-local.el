(set-face-attribute 'default nil
                    :family "Fira Code"
                    :height 90
                    :weight 'normal
                    :width 'normal)

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(load-theme 'dracula t)

;; add package path 
(add-to-list 'load-path "~/.emacs.d/site-lisp/use-package")
(require 'use-package)

(with-eval-after-load 'info
  (info-initialize)
  (add-to-list 'Info-directory-list
               "~/.emacs.d/site-lisp/use-package/"))
(require 'use-package)

(use-package fira-code-mode
  :custom (fira-code-mode-disabled-ligatures '("[]" "x"))  ; ligatures you don't want
  :hook prog-mode)

(desktop-save-mode 0)




;;no decoration
(set-frame-parameter nil 'undecorated t)

(provide 'init-local)
;;; init-local.el ends here
