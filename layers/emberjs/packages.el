;;; packages.el --- emberjs layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2016 Sylvain Benner & Contributors
;;
;; Author: Robert O'Connor <robby.oconnor@gmail.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Commentary:
;; Remove when https://github.com/syl20bnr/spacemacs/pull/4958 is merged into spacemacs

;;; Code:

(defconst emberjs-packages
  '(ember-mode
    ember-yasnippets))


(defun emberjs/init-ember-mode ()
  (use-package ember-mode
    :defer t))

(defun emberjs/init-ember-yasnippets ()
  (use-package ember-yasnippets
    :defer t))

;;; packages.el ends here
