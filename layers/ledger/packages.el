;;; packages.el --- ledger layer packages file for Spacemacs.
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
;; added to `ledger-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `ledger/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `ledger/pre-init-PACKAGE' and/or
;;   `ledger/post-init-PACKAGE' to customize the package as it is loaded.

;;; Code:

(defconst ledger-packages
  '((ledger-mode :location elpa)
    (flycheck-ledger :location elpa))
  "The list of Lisp packages required by the ledger layer.

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

(defun ledger/init-ledger-mode ()
  (use-package ledger-mode
    :mode "\\.ledger\\'"
    :bind (("RET" . newline)
           ("C-o" . open-line))
    :init
    (add-hook 'ledger-mode-hook 'goto-address-prog-mode)))

(defun ledger/init-flycheck-ledger ()
  (use-package flycheck
    :init
    (require 'flycheck-ledger)))

;; 這個是從 purcell 的設定中抄出來的，
;; 以我的情況，我在原本的 shell 沒有定義 LEDGER_FILE 這個變數，
;; 之後再看情況要不要使用
;; (defun ledfer/post-init-ledger-mode ()
;;   (when (memq window-system '(mac ns))
;;     (exec-path-from-shell-copy-env "LEDGER_FILE")))

;;; packages.el ends here
