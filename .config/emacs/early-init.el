(setq inhibit-startup-message t) 
;(setq frame-title-format nil)
(setq frame-title-format '("Emacs"))
(tool-bar-mode -1)              ; no tool bar
(menu-bar-mode -1)   ; 关闭菜单栏
(add-to-list 'default-frame-alist '(background-color . "#1e1e2e")) 
(add-to-list 'default-frame-alist '(undecorated . t))
(defconst *is-a-mac* (eq system-type 'darwin))
(when *is-a-mac*
    (add-to-list 'default-frame-alist '(ns-transparent-titlebar . t))
    (add-to-list 'default-frame-alist '(ns-appearance . dark))
    (setq frame-title-format nil))
(provide 'early-init)
