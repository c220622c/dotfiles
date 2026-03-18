(setq org-directory (file-truename "~/Documents/notes"))
(setq initial-buffer-choice (file-truename "~/Documents/notes"))
(setq org-agenda-files '("~/Documents/notes"))
(setq default-input-method "chinese-py-punct")
(use-package magit
  :ensure t)
(use-package rime
             :ensure t)
(setq default-input-method "rime")
(global-set-key (kbd "C-c a") 'org-agenda)
(setq org-log-done 'time)
(setq calendar-week-start 1)            ;设置星期一为每周的第一天
(provide 'init-org)
