
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)
(require 'package)
(add-to-list 'package-archives
  '("melpa" . "http://melpa.milkbox.net/packages/") t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(custom-enabled-themes (quote (tsdh-dark)))
 '(package-selected-packages
   (quote
    (yasnippet-snippets yasnippet latex-preview-pane auctex))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)

; then define packages you use
(use-package latex-preview-pane)
(use-package yasnippet)

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

;;; Latex path
(setq exec-path (append exec-path '("/usr/local/texlive/2018/bin/x86_64-linux/")))
(setenv "PATH" (concat (getenv "PATH") ":/usr/local/texlive/2018/bin/x86_64-linux/"))
;;; org-mode latex fragment size
(require 'org)
(setq org-format-latex-options (plist-put org-format-latex-options :scale 3.0))

;;; LaTex Options
(setq TeX-auto-save t)
(setq TeX-PDF-mode t)
(setq TeX-parse-self t)
(setq TeX-show-compilation t)
(latex-preview-pane-enable)

;;; Yasnippet
(require 'yasnippet)
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
