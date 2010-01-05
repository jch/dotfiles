 (autoload 'ruby-mode "ruby-mode"
   "Mode for editing ruby source files" t)
 (setq auto-mode-alist
       (append '(("\\.rb$" . ruby-mode)) auto-mode-alist))
 (setq interpreter-mode-alist (append '(("ruby" . ruby-mode))
    				     interpreter-mode-alist))
    
;;; set to load inf-ruby and set inf-ruby key definition in ruby-mode.

 (autoload 'run-ruby "inf-ruby"
   "Run an inferior Ruby process")
 (autoload 'inf-ruby-keys "inf-ruby"
   "Set local key defs for inf-ruby in ruby-mode")
 (add-hook 'ruby-mode-hook
       '(lambda ()
          (inf-ruby-keys)
 ))