;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; kill current buffer without confirmation
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; http://eden.rutgers.edu/~mangesh/emacs.html
;;

(defun kill-current-buffer ()
  "Kill the current buffer, without confirmation."
  (interactive)
  (kill-buffer (current-buffer)))

(global-set-key "\C-xq" 'kill-current-buffer)


;; kill inactive buffer
;; https://www.emacswiki.org/emacs/KillingBuffers
;;
(defun close-and-kill-next-pane ()
      "If there are multiple windows, then close the other pane and kill the buffer in it also."
      (interactive)
      (other-window 1)
      (kill-this-buffer)
      (if (not (one-window-p))
          (delete-window)))

(global-set-key (kbd "C-x K") 'close-and-kill-next-pane)
