(require 'javascript-mode)
(autoload 'multi-mode
          "multi-mode" 
          "Allowing multiple major modes in a buffer"
          t)
(defun my-html-mode () (interactive)
  (multi-mode 1
              'html-mode
              '("<script type=\"text/javascript\">" c-mode)
              '("<script lang=\"javascript\">" c-mode)
              '("</script>" html-mode)
              '("<style type=\"text/css\">" c-mode)
              '("</style>" html-mode)
              ))

(add-to-list 'auto-mode-alist '("\\.html$" . (lambda nil (progn
                                                         (my-html-mode)))))