;;; maheilu-functions.el --- Description -*- lexical-binding: t; -*-
;;; commentary:
;;; code:
(defun maheilu-try-format ()
  "Versucht den Buffer abhängig vom major-mode zu formatieren."
  (interactive)
  (cond
   ((eq major-mode #'c++-mode)
    (require 'lsp-mode)
    (lsp-format-buffer))
   ((eq major-mode #'elixir-mode)
    (require 'elixir-format)
    (elixir-format))
   ((eq major-mode #'ess-r-mode)
    (require 'lsp-mode)
    ;;; this needs the R language server and the R package styler
    ;;; R packages "languageserver" and "styler" respectively
    (lsp-format-buffer))
   (t (message "kein Formatter für %s gefunden" major-mode))))

(provide 'maheilu-functions)
;;; maheilu-functions.el ends here
