(define-key global-map "\C-xg"  'goto-line)
(define-key global-map "\M-s"   'isearch-forward-regexp)
(define-key global-map "\M-r"   'isearch-backward-regexp)
(define-key global-map "\C-x/"  'query-replace-regexp)

;; Delete region
(global-set-key "\C-x\C-k" 'kill-region)

;; find occurences of regexp
(global-set-key "\C-c/" 'occur)
