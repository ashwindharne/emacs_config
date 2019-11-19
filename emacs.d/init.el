;;; init.el --- Initialization file for Emacs
;;; Commentary: Emacs Startup File --- initialization for Emacs

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)
(require 'package)
(setq package-archives '(("gnu" . "http://mirrors.163.com/elpa/gnu/")
                         ("melpa" . "https://melpa.org/packages/")
                         ("org" . "http://orgmode.org/elpa/")))

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(setq package-check-signature nil)

(setq use-package-always-ensure t)

(setq custom-file "~/.emacs.d/lisp/custom.el")
(load custom-file)

;;; Default Font
(set-face-attribute 'default nil
		    :family "Source Code Pro"
		    :weight 'normal
		    :width 'normal)
(setq-default cursor-type 'bar)
(set-cursor-color "#09FF00")

;;; Disable menu, scroll, toolbar
(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)

(use-package exec-path-from-shell)
(exec-path-from-shell-initialize)
;;; Flycheck install
(use-package flycheck)
(setq-default flycheck-disabled-checkers '(emacs-lisp-checkdoc))

;;; Line number mode
(global-linum-mode)
(defadvice linum-mode (around my-linum-mode-turn-on-maybe)
  (unless (memq major-mode
		(list 'elisp-mode 'tex-mode))
    ad-do-it))
(ad-activate 'linum-mode)

;;; Fringe color to background color, provides separator between code and line numbers
(set-face-attribute 'fringe nil :background nil)

;;; org-mode latex fragment size
(require 'org)
(setq org-format-latex-options (plist-put org-format-latex-options :scale 3.0))

;;; PDF Tools
(use-package tablist)
(use-package pdf-tools)
(pdf-loader-install)



;;; LaTex Options
(use-package auctex
  :defer t)
(cond
 ((eq system-type "darwin") (setq exec-path (append exec-path '("/usr/local/texlive/2019/bin"))))
 ((eq system-type "gnu/linux") (setq exec-path (append exec-path '("/usr/local/texlive/2018/bin"))))
 )
(cond
 ((eq system-type "darwin") (setq exec-path (setenv "PATH" (concat (getenv "PATH") "/usr/local/texlive/2019/bin"))))
 ((eq system-type "gnu/linux") (setq exec-path (setenv "PATH" (concat (getenv "PATH") "/usr/local/texlive/2018/bin"))))
 )
(setq TeX-auto-save t)
(setq TeX-PDF-mode t)
(setq TeX-parse-self t)

;; Use pdf-tools to open PDF files
(setq TeX-view-program-selection '((output-pdf "PDF Tools"))
      TeX-source-correlate-start-server t)

;; Update PDF buffers after successful LaTeX runs
(add-hook 'TeX-after-compilation-finished-functions
	  #'TeX-revert-document-buffer)

(setq TeX-show-compilation nil)
(setq TeX-save-query nil)
(setq Tex-source-correlate-mode t)



;;; Yasnippet
(use-package yasnippet)
(yas-global-mode 1)
(setq yas-triggers-in-field t)
(setq yas-snippet-dirs '("~/.emacs.d/snippets"))
(add-to-list 'yas-key-syntaxes 'yas-shortest-key-until-whitespace)

;;; Markdown
(use-package markdown-mode
  :ensure t
  :commands (markdown-mode gfm-mode)
  :mode (("README\\.md\\'" . gfm-mode)
         ("\\.md\\'" . markdown-mode)
         ("\\.markdown\\'" . markdown-mode))
  :init (setq markdown-command "pandoc"))

(electric-pair-mode 1)

;;; Haskell
(use-package haskell-mode)
(use-package flycheck-haskell)
(add-hook 'haskell-mode-hook #'flycheck-haskell-setup)

;;; Rust
(use-package rust-mode)
(use-package flycheck-rust)
;;; neotree
(use-package neotree)
(global-set-key [f8] 'neotree-toggle)

;;; ivy
(use-package ivy)
(ivy-mode 1)

;;; Neotree
(use-package neotree)
(global-set-key [f8] 'neotree-toggle)

;;; Helm
;(use-package helm)
;(global-set-key (kbd "M-x") #'helm-M-x)
;(global-set-key (kbd "C-x C-f") #'helm-find-files)

;;; Ivy
(use-package ivy)
(use-package counsel)
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-c k") 'counsel-ag)
(global-set-key (kbd "\C-s") 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)

(delete-selection-mode 1)

(use-package company
  :ensure t
  :config
  (progn
    (add-hook 'after-init-hook 'global-company-mode)))


