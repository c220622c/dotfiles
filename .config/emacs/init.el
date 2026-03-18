;;; init.el --- Load the full configuration -*- lexical-binding: t -*-
;;; Commentary:

;; This file bootstraps the configuration, which is divided into
;; a number of other files.

;;; Code:

(add-to-list 'load-path "~/.config/emacs/lisp/") ;
(defconst *spell-check-support-enabled* nil) 
(let ((normal-gc-cons-threshold (* 20 1024 1024))
   (init-gc-cons-threshold (* 128 1024 1024)))
 (setq gc-cons-threshold init-gc-cons-threshold)
 (add-hook 'emacs-startup-hook
      (lambda () (setq gc-cons-threshold normal-gc-cons-threshold))))
(setq confirm-kill-emacs #'yes-or-no-p) ; confirm when exit
(electric-pair-mode t)            ; autopair
(add-hook 'prog-mode-hook #'show-paren-mode) ; highlight brackets in prog-mode
(column-number-mode t)            ; show line number in mode line
(global-auto-revert-mode t)         ; refresh buffer if edited by other processes
(when (display-graphic-p) (toggle-scroll-bar -1)) ; 图形界面时关闭滚动条
(setq make-backup-files nil)         ; no file backup
(add-hook 'prog-mode-hook #'hs-minor-mode)  ;enable fold in prog-mode
(global-display-line-numbers-mode 1)     ;show line number in window
(setq calendar-week-start 1)            ;设置星期一为每周的第一天
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize);;mepla setup
(setq custom-file "~/.config/emacs/custom.el")
(load custom-file)
(require 'init-theme)
(require 'init-org)
;(require 'init-keys) 
(provide 'init)
;;; init.el ends here
