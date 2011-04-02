(setq default-tab-width 3)
(setq make-backup-files nil)
(setq inhibit-splash-screen t)
(setq line-number-mode t)
(setq column-number-mode t)
(setq auto-save-list-file-prefix (concat (getenv "HOME") "/.emacs-save-" ))
(setq auto-mode-alist (cons '("\\.lua$" . lua-mode) auto-mode-alist))
(autoload 'lua-mode "lua-mode" "Lua editing mode." t)
(add-hook 'lua-mode-hook 'turn-on-font-lock)
(setq save-abbrevs nil)

(autoload 'tidy-buffer "tidy" "Run Tidy HTML parser on current buffer" t)
(autoload 'tidy-parse-config-file "tidy" "Parse the `tidy-config-file'" t)
(autoload 'tidy-save-settings "tidy" "Save settings to `tidy-config-file'" t)
(autoload 'tidy-build-menu  "tidy" "Install an options menu for HTML Tidy." t)

(defun my-html-mode-hook () "Customize my html-mode."
  (tidy-build-menu html-mode-map)
  (local-set-key [(control c) (control c)] 'tidy-buffer)
  (setq sgml-validate-command "tidy"))

(add-hook 'html-mode-hook 'my-html-mode-hook)

(global-set-key (kbd "C-c r") 'revert-buffer)
(global-set-key (kbd "C-c p") 'shell-script-mode)
(global-set-key (kbd "C-c l") 'toggle-truncate-lines)
