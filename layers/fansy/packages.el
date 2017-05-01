;;; packages.el --- fansy layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2017 Sylvain Benner & Contributors
;;
;; Author: hexpinr <hexpinr@Alvitr>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Commentary:

;; See the Spacemacs documentation and FAQs for instructions on how to implement
;; a new layer:
;;
;;   SPC h SPC layers RET
;;
;;
;; Briefly, each package to be installed or configured by this layer should be
;; added to `fansy-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `fansy/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `fansy/pre-init-PACKAGE' and/or
;;   `fansy/post-init-PACKAGE' to customize the package as it is loaded.

;;; Code:

(defconst fansy-packages
  '((all-the-icons :location elpa)
    (spaceline-all-the-icons :location local)
    (all-the-icons-dired :location elpa)
    ;; spaceline
    ;; powerline
    )
  "The list of Lisp packages required by the fansy layer.

Each entry is either:

1. A symbol, which is interpreted as a package to be installed, or

2. A list of the form (PACKAGE KEYS...), where PACKAGE is the
    name of the package to be installed or loaded, and KEYS are
    any number of keyword-value-pairs.

    The following keys are accepted:

    - :excluded (t or nil): Prevent the package from being loaded
      if value is non-nil

    - :location: Specify a custom installation location.
      The following values are legal:

      - The symbol `elpa' (default) means PACKAGE will be
        installed using the Emacs package manager.

      - The symbol `local' directs Spacemacs to load the file at
        `./local/PACKAGE/PACKAGE.el'

      - A list beginning with the symbol `recipe' is a melpa
        recipe.  See: https://github.com/milkypostman/melpa#recipe-format")

(defun fansy/init-all-the-icons ()
  (use-package all-the-icons))

(defun fansy/init-spaceline-all-the-icons ()
  (use-package spaceline-all-the-icens
    :after spaceline
    :load-path "/Users/hexpinr/.spacemacs.d/layers/fansy/local/spaceline-all-the-icons/spaceline-all-the-icons.el"))

;; (defun fansy/init-spaceline ()
;;   (use-package spaceline
;;     :after powerline
;;     :config (setq-default mode-line-format '("%e" (:eval (spaceline-ml-ati))))))

;; (defun fansy/init-powerline ()
;;   (use-package powerline))

(defun fansy/init-all-the-icons-dired ()
  (use-package all-the-icons-color-icons
    :after all-the-icons
    :init
    (add-hook 'dired-mode-hook 'all-the-icons-dired-mode)))

;;; packages.el ends here
