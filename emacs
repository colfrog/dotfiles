(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("84d2f9eeb3f82d619ca4bfffe5f157282f4779732f48a5ac1484d94d5ff5b279" "c74e83f8aa4c78a121b52146eadb792c9facc5b1f02c917e3dbb454fca931223" "04232a0bfc50eac64c12471607090ecac9d7fd2d79e388f8543d1c5439ed81f5" default))
 '(inhibit-startup-screen t)
 '(package-selected-packages
   '(tuareg elpy lsp-mode rustic npm flycheck-clang-tidy clang-format rjsx-mode lispy ivy avy smart-mode-line-powerline-theme smart-mode-line markdown-preview-mode markdown-mode helm zoom ranger dired-sidebar dired-k eyebrowse ido-completing-read+ go-mode lua-mode magit nodejs-repl org python zenburn-theme git-gutter slime ##))
 '(sml/mode-width (if (eq (powerline-current-separator) 'arrow) 'right 'full))
 '(sml/pos-id-separator
   '(""
     (:propertize " " face powerline-active1)
     (:eval
      (propertize " " 'display
		  (funcall
		   (intern
		    (format "powerline-%s-%s"
			    (powerline-current-separator)
			    (car powerline-default-separator-dir)))
		   'powerline-active1 'powerline-active2)))
     (:propertize " " face powerline-active2)))
 '(sml/pos-minor-modes-separator
   '(""
     (:propertize " " face powerline-active1)
     (:eval
      (propertize " " 'display
		  (funcall
		   (intern
		    (format "powerline-%s-%s"
			    (powerline-current-separator)
			    (cdr powerline-default-separator-dir)))
		   'powerline-active1 'sml/global)))
     (:propertize " " face sml/global)))
 '(sml/pre-id-separator
   '(""
     (:propertize " " face sml/global)
     (:eval
      (propertize " " 'display
		  (funcall
		   (intern
		    (format "powerline-%s-%s"
			    (powerline-current-separator)
			    (car powerline-default-separator-dir)))
		   'sml/global 'powerline-active1)))
     (:propertize " " face powerline-active1)))
 '(sml/pre-minor-modes-separator
   '(""
     (:propertize " " face powerline-active2)
     (:eval
      (propertize " " 'display
		  (funcall
		   (intern
		    (format "powerline-%s-%s"
			    (powerline-current-separator)
			    (cdr powerline-default-separator-dir)))
		   'powerline-active2 'powerline-active1)))
     (:propertize " " face powerline-active1)))
 '(sml/pre-modes-separator (propertize " " 'face 'sml/modes))
 '(warning-suppress-types '((comp)))
 '(zoom-mode t nil (zoom)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)

;; C
(setq-default c-default-style "bsd"
	      c-basic-offset 8
	      tab-width 8
	      indent-tabs-mode t)

;; lisp
(setq inferior-lisp-program "sbcl"
      slime-contribs '(slime-fancy))

;; python
(add-hook 'python-mode-hook
	  (lambda ()
	    (setq indent-tabs-mode nil)))

;; javascript
(add-to-list 'auto-mode-alist '("\\.js\\'" . rjsx-mode))

(load-theme 'zenburn t)

(global-flycheck-mode)
(menu-bar-mode -1)
(tool-bar-mode -1)
(eyebrowse-mode t)
; (evil-mode t)
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)

(setq sml/theme 'respectful)
(powerline-default-theme)

(set-frame-parameter nil 'alpha-background 90) ; For current frame
(add-to-list 'default-frame-alist '(alpha-background . 90))

(add-to-list 'default-frame-alist '(font . "Iosevka Fixed Extended-10"))
