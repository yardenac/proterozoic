(setq-default indent-tabs-mode nil)
(setq default-tab-width 3)
(setq make-backup-files nil)
(setq inhibit-splash-screen t)
(setq line-number-mode t)
(setq column-number-mode t)
(setq menu-bar-mode nil)
(setq auto-save-list-file-prefix (concat (getenv "HOME") "/.emacs-save-" ))
(setq auto-mode-alist (cons '("\\.lua$" . lua-mode) auto-mode-alist))
(autoload 'lua-mode "lua-mode" "Lua editing mode." t)
(add-hook 'lua-mode-hook 'turn-on-font-lock)
(setq save-abbrevs nil)

(autoload 'tidy-buffer "tidy" "Run Tidy HTML parser on current buffer" t)
(autoload 'tidy-parse-config-file "tidy" "Parse the `tidy-config-file'" t)
(autoload 'tidy-save-settings "tidy" "Save settings to `tidy-config-file'" t)
(autoload 'tidy-build-menu  "tidy" "Install an options menu for HTML Tidy." t)
(autoload 'magit-status "magit" nil t)

(defun my-html-mode-hook () "Customize my html-mode."
  (tidy-build-menu html-mode-map)
  (local-set-key [(control c) (control c)] 'tidy-buffer)
  (setq sgml-validate-command "tidy"))

(add-hook 'html-mode-hook 'my-html-mode-hook)

(autoload 'php-mode "php-mode.el" "Php mode." t)
(setq auto-mode-alist (append '(("/.*\.php[345]?\\'" . php-mode)) auto-mode-alist))

(global-set-key (kbd "C-c C-e") 'auto-revert-mode)
(global-set-key (kbd "C-c C-r") 'revert-buffer)
(global-set-key (kbd "C-c C-p") 'shell-script-mode)
(global-set-key (kbd "C-c C-t") 'toggle-truncate-lines)

(defun sort-lines-nocase ()
  (interactive)
  (let ((sort-fold-case t))
    (call-interactively 'sort-lines)))
