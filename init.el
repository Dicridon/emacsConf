(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#2d3743" "#ff4242" "#74af68" "#dbdb95" "#34cae2" "#008b8b" "#00ede1" "#e1e1e0"])
 '(custom-enabled-themes (quote (wombat)))
 '(custom-safe-themes
   (quote
    ("ed763cdf0b7c523cdc094ba137080e7f2c4e7a28303e0cbeb0eda159f964f1b6"
     "67e998c3c23fe24ed0fb92b9de75011b92f35d3e89344157ae0d544d50a63a72"
     "ab0950f92dc5e6b667276888cb0cdbc35fd1c16f667170a62c15bd3ed5ae5c5a"
     "b9b1a8d2ec1d5c17700e1a09256f33c2520b26f49980ed9e217e444c381279a9" default)))
 '(delete-selection-mode nil)
 '(doc-view-continuous t)
 '(fci-rule-color "#383838")
 '(nrepl-message-colors
   (quote
    ("#CC9393" "#DFAF8F" "#F0DFAF" "#7F9F7F" "#BFEBBF" "#93E0E3" "#94BFF3" "#DC8CC3")))
 '(package-archives
   (quote
    (("gnu" . "http://elpa.gnu.org/packages/")
     ("melpa" . "https://melpa.org/packages/"))))
 '(pdf-latex-command "xelatex")
 '(pdf-view-midnight-colors (quote ("#DCDCCC" . "#383838")))
 '(pos-tip-background-color "#36473A")
 '(pos-tip-foreground-color "#FFFFC8")
 '(vc-annotate-background "#2B2B2B")
 '(vc-annotate-color-map
   (quote
    ((20 . "#BC8383")
     (40 . "#CC9393")
     (60 . "#DFAF8F")
     (80 . "#D0BF8F")
     (100 . "#E0CF9F")
     (120 . "#F0DFAF")
     (140 . "#5F7F5F")
     (160 . "#7F9F7F")
     (180 . "#8FB28F")
     (200 . "#9FC59F")
     (220 . "#AFD8AF")
     (240 . "#BFEBBF")
     (260 . "#93E0E3")
     (280 . "#6CA0A3")
     (300 . "#7CB8BB")
     (320 . "#8CD0D3")
     (340 . "#94BFF3")
     (360 . "#DC8CC3"))))
 '(vc-annotate-very-old-color "#DC8CC3"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;color theme
;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;(add-to-list 'load-path "~/.emacs.d/elpa/color-theme-20080305.34")
;;(require 'color-theme)
;;(eval-after-load "color-theme"
;;  '(progn
;;     (color-theme-initialize)
;;     (color-theme-kingsajz)))
;;;;shaman
;;kingsajz
;;rotor

;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;Python and Elpy
;;;;;;;;;;;;;;;;;;;;;;;;;;;

(setq python-indent-offset 4)
;;Elpy
(package-initialize)
(elpy-enable)
(setq elpy-rpc-python-command "python2")
(setq python-shell-interpreter "python2")
(add-hook 'python-mode-hook 'linum-mode)
(define-key global-map (kbd "C-c o") 'iedit-mode)


;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;Ido
;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'ido)
(ido-mode t)
(setq ido-enable-dot-prefix t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;Smex
;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'smex)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;;old M-x
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;electric
;;;;;;;;;;;;;;;;;;;;;;;;;;;
(electric-pair-mode t)
(electric-indent-mode t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;C configuration
;;;;;;;;;;;;;;;;;;;;;;;;;;;
(add-hook 'c-mode-hook '(lambda() (setq flycheck-clang-language-standard "c99")))
(add-hook 'c-mode-hook 'linum-mode)
(add-hook 'c-mode-hook 'flycheck-mode)
(add-hook 'c-mode-hook (lambda() (c-set-style "cc-mode")))
(add-hook 'c-mode-hook 'hs-minor-mode)

;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;C++ configuration
;;;;;;;;;;;;;;;;;;;;;;;;;;;
(add-hook 'c++-mode-hook (lambda () (setq flycheck-clang-language-standard "c++11")))
(add-hook 'c++-mode-hook 'linum-mode)
(add-hook 'c++-mode-hook 'flycheck-mode)
(add-hook 'c++-mode-hook (lambda() (c-set-style "cc-mode")))
(add-hook 'c++-mode-hook 'hs-minor-mode)



;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;Emacs lisp
;;;;;;;;;;;;;;;;;;;;;;;;;;;
(add-hook 'emacs-lisp-mode 'linum-mode)

;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;Verilog configuration
;;;;;;;;;;;;;;;;;;;;;;;;;;;
(add-hook 'verilog-mode-hook 'linum-mode)

;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;Company
;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'company)
(add-hook 'after-init-hook 'global-company-mode)
(setq company-minimum-prefix-length 3)
(setq company-auto-complete t)
(setq company-idle-delay .2)
(setq company-show-numbers t)
(setq company-selection-wrap-around t)
(setq company-tooltip-idle-delay .2)

;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;Rr speedbar
;;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq sr-speedbar-right-side nil)
(setq sr-speedbar-width 27)
(global-set-key (kbd "C-x ! s") 'sr-speedbar-toggle)

;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;Imenu
;;;;;;;;;;;;;;;;;;;;;;;;;;;
(global-set-key (kbd "C-x ! i") 'imenu-list-smart-toggle)
(setq imenu-auto-rescan t)
(setq imenu-list-size .2)

;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;Switch window
;;;;;;;;;;;;;;;;;;;;;;;;;;;
(global-set-key (kbd "C-x o") 'switch-window )
(global-set-key (kbd "C-x 1") 'switch-window-then-maximize)
(global-set-key (kbd "C-x 2") 'switch-window-then-split-below)
(global-set-key (kbd "C-x 3") 'switch-window-then-split-right)
(global-set-key (kbd "C-x 0") 'switch-window-then-delete)
(setq switch-window-minibuffer-shortcut ?m)


;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;Others
;;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq column-number-mode t)
(setq line-number-mode t)
(setq global-linum-mode t)
;;(global-set-key(kbd "RET") 'newline-and-indent)
(tool-bar-mode 0)
(scroll-bar-mode 0)
;;(menu-bar-mode 0)
(add-hook 'after-init-hook 'linum-mode)

(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
(put 'narrow-to-region 'disabled nil)
(setq tab-width 2)

;;;;;;;;;;;;;;;;;;;;;;;;
;; Some customized settings
;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;
;; new line and close of {}
(defun newline-and-indent-after-bracket ()
  (interactive)
  (if ( equal (char-before (point)) 123)  ;;123 is {
      (progn
	(newline-and-indent))
    (newline-and-indent)))
  
;; (global-set-key (kbd "RET") 'newline-and-indent-after-bracket)
(show-paren-mode)
(setq gdb-many-windows t)

;;;;;;;;;;;;;;;;;;;;;;;;
;; Latex preview pane
(latex-preview-pane-enable)


;;;;;;;;;;;;;;;;;;;;;;;;
;; Go
(require 'go-mode)
(exec-path-from-shell-initialize)
(exec-path-from-shell-copy-env "GOPATH")
(defun go-check-on-save-hook ()
  (if (eq major-mode 'go-mode)
      (gofmt)))
(add-hook 'before-save-hook 'go-check-on-save-hook)
(add-hook 'go-mode-hook
	  (lambda ()
	    (set (make-local-variable 'company-backends) '(company-go))
	    (company-mode)))
(add-hook 'go-mode-hook 'flycheck-mode)
(add-hook 'go-mode-hook 'linum-mode)
