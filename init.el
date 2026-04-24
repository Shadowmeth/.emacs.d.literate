;;; init.el --- Bootstrap literate config -*- lexical-binding: t; -*-

;; Bootstrap straight.el (used only for packages not on MELPA).
(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name
        "straight/repos/straight.el/bootstrap.el"
        (or (bound-and-true-p straight-base-dir)
            user-emacs-directory)))
      (bootstrap-version 7))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/radian-software/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

;; Ensure straight's Org takes precedence over Emacs's built-in Org
;; before org-babel-load-file triggers Org loading.
(straight-use-package 'org)

;;; Load the literate configuration
(org-babel-load-file
 (expand-file-name "config.org" user-emacs-directory))
