;;; packages.el --- jsmestad-spaceline layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2017 Sylvain Benner & Contributors
;;
;; Author: Justin Smestad <justin.smestad@gmail.com>
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
;; added to `jsmestad-spaceline-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `jsmestad-spaceline/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `jsmestad-spaceline/pre-init-PACKAGE' and/or
;;   `jsmestad-spaceline/post-init-PACKAGE' to customize the package as it is loaded.

;;; Code:

(defconst jsmestad-spaceline-packages
  '(all-the-icons
    spaceline
    spaceline-all-the-icons))

(defun jsmestad-spaceline/init-all-the-icons ()
  (use-package all-the-icons
    :config (setq neo-theme 'icons)))

(defun jsmestad-spaceline/init-spaceline ()
  (use-package spaceline))

(defun jsmestad-spaceline/init-spaceline-all-the-icons ()
  (use-package spaceline-all-the-icons
    :after spaceline
    :config (progn
              (spaceline-all-the-icons-theme)
              (setq spaceline-all-the-icons-separator-type 'none
                    spaceline-all-the-icons-icon-set-eyebrowse-slot 'string
                    spaceline-all-the-icons-icon-set-flycheck-slim 'outline
                    spaceline-all-the-icons-icon-set-git-ahead 'commit
                    spaceline-all-the-icons-icon-set-window-numbering 'square))))


;;; packages.el ends here
