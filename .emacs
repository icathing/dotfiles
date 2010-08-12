;(add-to-list 'load-path (expand-file-name "C:/Program Files/emacs-22.3/site-lisp\remember-2.0"))
(add-to-list 'load-path (expand-file-name "C:/Users/bill.ORC/AppData/Roaming"))
(add-to-list 'load-path (expand-file-name "C:/Users/bill.ORC/AppData/Roaming/lisp"))
;(add-to-list 'load-path (expand-file-name "C:/Users/bill.ORC/AppData/Roaming/lispruby-mode"))
;(add-to-list 'load-path (expand-file-name "C:/Users/bill.ORC/AppData/Roaming/lisp/rinari"))
;(add-to-list 'load-path (expand-file-name "C:/Users/bill.ORC/AppData/Roaming/lisp/rinari/rhtml"))

(require 'filladapt)
(require 'ido)
(ido-mode t)

;; The following lines are always needed.  Choose your own keys.
;(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
;(global-set-key "\C-cl" 'org-store-link)
;(global-set-key "\C-ca" 'org-agenda)
;(global-set-key "\C-cb" 'org-iswitchb)
;(setq org-todo-keywords '("TODO" "STARTED" "WAITING" "DONE")
;           org-todo-interpretation 'sequence)
;(setq org-log-done '(state))
;(add-hook 'org-mode-hook 'turn-on-font-lock)  ; Org buffers only

;(require 'remember)

;(setq org-directory "~/")
;(setq org-default-notes-file "~/.notes")
;(setq remember-annotation-functions '(org-remember-annotation))
;(setq remember-handler-functions '(org-remember-handler))
;(add-hook 'remember-mode-hook 'org-remember-apply-template)
;(setq org-remember-store-without-prompt t)

;(setq org-remember-templates
;      '((116 "* TODO %?\n  %i\n  %a" "~/todo.org" "Tasks")
;        (110 "* %U %?\n\n  %i\n  %a" "~/journal.org")
;        (112 "* %^{Title}\n  %i\n  %a" "~/journal.org" "New Ideas")))


(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(cua-mode t nil (cua-base))
 '(fringe-mode 0 nil (fringe))
 '(inhibit-startup-screen t)
 '(initial-scratch-message "

"))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "SystemWindow" :foreground "SystemWindowText" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 113 :width normal :foundry "outline" :family "Consolas")))))


(autoload 'js2-mode "js2" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))


(require 'pabbrev)

;; explorer
;; ----------
    ;;; Windows explorer to open current file - Arun Ravindran

(defun explorer ()
  "Launch the windows explorer in the current directory and selects current file"
  (interactive)
  (w32-shell-execute
   "open"
   "explorer"
   (concat "/e,/select," (convert-standard-filename buffer-file-name))))

(global-set-key [f12]         'explorer)        ; F12 - Open Explorer for the current file path

;;(desktop-change-dir '(expand-file-name "~/.emacs.d"))

(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)
(server-start)