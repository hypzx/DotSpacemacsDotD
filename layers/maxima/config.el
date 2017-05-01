;; maxima

;;; after load from shell not need any more
;; (add-to-list 'exec-path "/usr/local/texlive/2015basic/bin/x86_64-darwin/")
;; (add-to-list 'load-path "/usr/local/opt/maxima/share/maxima/5.38.1/emacs")


;; (autoload 'maxima-mode "maxima" "Maxima mode" t)
;; (autoload 'imaxima "imaxima" "Frontend for maxima with Image support" t)
;; (autoload 'maxima "maxima" "Maxima interaction" t)
;; (autoload 'imath-mode "imath" "Imath mode for math formula input" t)

;; (add-to-list 'auto-mode-alist '("\\.ma[cx]" . maxima-mode))

(setq imaxima-fnt-size "Huge")
(setq imaxima-pt-size 16)
(setq imaxima-use-maxima-mode-flag t)
(setq imaxima-bg-color nil)
(setq imaxima-equation-color "white")
