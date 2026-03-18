;;; use ctrl + h/j/k/l to move cursor
(global-set-key (kbd "C-h") nil)   
(global-set-key (kbd "C-j") nil)       
(global-set-key (kbd "C-k") nil)   
(global-set-key (kbd "C-l") nil)    
(global-set-key (kbd "C-h") 'backward-char)   
(global-set-key (kbd "C-j") 'next-line)       
(global-set-key (kbd "C-k") 'previous-line)   
(global-set-key (kbd "C-l") 'forward-char)    
(setq help-char (kbd "<f1>")) 
(global-set-key (kbd "RET") 'newline-and-indent)
(provide 'init-keys)
;;;init-keys end here
