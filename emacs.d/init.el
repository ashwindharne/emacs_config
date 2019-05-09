
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)
(require 'package)
(add-to-list 'package-archives
     '("melpa" . "http://melpa.org/packages/") t)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(setq use-package-always-ensure t)

(setq custom-file "~/.emacs.d/lisp/custom.el")
(load custom-file)

;;; Default Font
(set-face-attribute 'default nil
		    :family "Source Code Pro"
		    :weight 'normal
		    :width 'normal)

;;; Disable menu, scroll, toolbar
(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)

;;; Line number mode
(global-linum-mode)
;;; Fringe color to background color, provides separator between code and line numbers
(set-face-attribute 'fringe nil :background nil)

;;; org-mode latex fragment size
(require 'org)
(setq org-format-latex-options (plist-put org-format-latex-options :scale 3.0))

;;; LaTex Options
(setq exec-path (append exec-path '("/usr/local/texlive/2018/bin/x86_64-linux/")))
(setenv "PATH" (concat (getenv "PATH") ":/usr/local/texlive/2018/bin/x86_64-linux/"))
(setq TeX-auto-save t)
(setq TeX-PDF-mode t)
(setq TeX-parse-self t)
(setq TeX-show-compilation t)
(use-package latex-preview-pane)
(latex-preview-pane-enable)

;;; Yasnippet
(use-package yasnippet)
(yas-global-mode 1)
(setq yas-triggers-in-field t)
(setq yas-snippet-dirs '("~/.emacs.d/snippets"))

;;; Markdown
(use-package markdown-mode
  :ensure t
  :commands (markdown-mode gfm-mode)
  :mode (("README\\.md\\'" . gfm-mode)
         ("\\.md\\'" . markdown-mode)
         ("\\.markdown\\'" . markdown-mode))
  :init (setq markdown-command "pandoc"))

(electric-pair-mode 1)
(use-package magit)

(use-package sublimity)
(require 'sublimity-scroll)
(setq sublimity-scroll-weight 10
      sublimity-scroll-drift-length 10)
(sublimity-mode 1)
