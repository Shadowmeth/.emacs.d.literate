;;; early-init.el -- Code that should be run before init.el -*- lexical-binding: t; -*-
;;; Commentary:
;;; Code:

;; Suppress straight.el's complaint about coexisting with package.el.
;; We knowingly use both (package.el primary, straight for escape-hatch cases).
(with-eval-after-load 'warnings
  (add-to-list 'warning-suppress-log-types '(straight))
  (add-to-list 'warning-suppress-types '(straight)))

(provide 'early-init)
;;; early-init.el ends here
