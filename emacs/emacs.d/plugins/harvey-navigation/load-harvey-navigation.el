;;; Lets you move the buffer without 

;; quick move cursor to top or bottom of screen
(defun point-to-top ()
  "Put point on top line of window."
  (interactive)
  (move-to-window-line 0))

(defun point-to-bottom ()
  "Put point at beginning of last visible line."
  (interactive)
  (move-to-window-line -1))

(defun indent-or-complete ()
  "Complete if point is at end of a word, otherwise indent line."
  (interactive)
  (if (looking-at "\\>")
      (dabbrev-expand nil)
    (indent-for-tab-command)
    ))

(defun next-line-noscroll ()
  "Scroll the buffer one line down without moving where point is."
  (interactive)
  (next-line -1)
  (scroll-down 1))

(defun previous-line-noscroll ()
  "Scroll the buffer one line up without moving where point is."
  (interactive)
  (next-line 1)
  (scroll-down -1))

(defun next-line-other-window ()
  "Scroll the other window one line up"
  (interactive)
  (next-line 1)
  (scroll-down -1))

(global-set-key "\M-3" 'point-to-top)
(global-set-key "\M-4" 'point-to-bottom)
(global-set-key "\M-n" 'next-line-noscroll)
(global-set-key "\M-p" 'previous-line-noscroll)