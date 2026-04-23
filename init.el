;;; init.el --- Bootstrap literate config -*- lexical-binding: t; -*-

;;; Load the literate configuration
(org-babel-load-file
 (expand-file-name "config.org" user-emacs-directory))
