;;; maheilu-functions.el --- Description -*- lexical-binding: t; -*-
(defun maheilu-try-format ()
  "versucht den Buffer abhängig vom major-mode zu formatieren"
  (interactive)
  (cond
   ((or (eq major-mode #'c++-mode)
        (eq major-mode #'elixir-mode))
    (require 'lsp-mode)
    (lsp-format-buffer))
   (t (message "kein Formatter für %s gefunden" major-mode))))

(provide 'maheilu-functions)
;;; maheilu-functions.el ends here
