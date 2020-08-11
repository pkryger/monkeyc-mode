;;; after-init.el --- load and activate `monkeyc-mode' in `exordium'
;;; Commentary:
;;; Code:

(add-to-list 'load-path (file-name-directory (or load-file-name
                                                 buffer-file-name)))

(use-package whitespace
  :ensure nil
  :config
  (setq whitespace-line-column 200))

(use-package monkeyc-mode
  :commands (monkeyc-mode)
  :init
  (defun pk/use-tabs-for-indent ()
    (setq-local indent-tabs-mode t)
    (setq-local tab-width 4))
  :ensure nil
  :hook ((monkeyc-mode . pk/use-tabs-for-indent)
         (monkeyc-mode . whitespace-mode))
  :config
  (add-to-list 'auto-mode-alist '("\\.mc\\'" . monkeyc-mode)))

;;; after-init.el ends here
