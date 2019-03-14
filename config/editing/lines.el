;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; copy current line without selection
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; http://emacs-fu.blogspot.com/2009/11/copying-lines-without-selecting-them.html
;;
(defadvice kill-ring-save (before slick-copy activate compile) "When called
  interactively with no active region, copy a single line instead."
  (interactive (if mark-active (list (region-beginning) (region-end)) (message
  "Copied line") (list (line-beginning-position) (line-beginning-position
  2)))))

(defadvice kill-region (before slick-cut activate compile)
  "When called interactively with no active region, kill a single line instead."
  (interactive
    (if mark-active (list (region-beginning) (region-end))
      (list (line-beginning-position)
        (line-beginning-position 2)))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; duplicate current line
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; http://www.emacswiki.org/emacs/CopyingWholeLines
;;
(defun duplicate-current-line (&optional n)
  "duplicate current line, make more than 1 copy given a numeric argument"
  (interactive "p")
  (save-excursion
    (let ((nb (or n 1))
          (current-line (thing-at-point 'line)))
      ;; when on last line, insert a newline first
      (when (or (= 1 (forward-line 1)) (eq (point) (point-max)))
        (insert "\n"))
      
      ;; now insert as many time as requested
      (while (> n 0)
        (insert current-line)
        (decf n)))))

(global-set-key (kbd "C-x y") 'duplicate-current-line)

;; join lines
(global-set-key "\C-cj" 'join-line)

;; fixed home/end
(define-key global-map [home] 'beginning-of-line)
(define-key global-map [end]  'end-of-line)

