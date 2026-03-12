;;; early-init.el --- Early configuration -*- lexical-binding: t -*-
(setq inhibit-startup-message t)        ; delete welcome page 
(defconst *is-a-mac* (eq system-type 'darwin))
(when *is-a-mac*
    (add-to-list 'default-frame-alist '(ns-transparent-titlebar . t))
    (add-to-list 'default-frame-alist '(ns-appearance . dark))
    (setq frame-title-format nil))
(tool-bar-mode -1)              ; no tool bar
(provide 'early-init)
;;end of file
