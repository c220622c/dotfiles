;;; init.el --- Load the full configuration -*- lexical-binding: t -*-
;;; Commentary:

;; This file bootstraps the configuration, which is divided into
;; a number of other files.

;;; Code:
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory)) ; exceute lisp folder
(defconst *spell-check-support-enabled* nil) ; disable spell-check,enable with t
(defconst *is-a-mac* (eq system-type 'darwin)) ;yes,i use macbook
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
(setq make-backup-files nil)         ; no file backup
(add-hook 'prog-mode-hook #'hs-minor-mode)  ;enable fold in prog-mode
(add-hook 'text-mode-hook 'flyspell-mode) ; enable spell check in text mode
(global-display-line-numbers-mode 1)     ;show line number in window
(setq custom-file (concat user-emacs-directory "custom.el"))
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize);;mepla setup
(load-theme 'catppuccin :no-confirm) ;; load catppuccin theme
(require 'init-ivy)
(provide 'init)

;;; init.el ends here
