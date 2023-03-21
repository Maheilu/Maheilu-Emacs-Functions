;;; maheilu-functions.el --- Description -*- lexical-binding: t; -*-
(defun maheilu-try-format ()
  "versucht den Buffer abhängig vom major-mode zu formatieren"
  (interactive)
  (cond
   ((eq major-mode #'c++-mode)
    (require 'lsp-mode)
    (lsp-format-buffer))
   ((eq major-mode #'elixir-mode)
    (require 'elixir-format)
    (elixir-format))
   (t (message "kein Formatter für %s gefunden" major-mode))))

(provide 'maheilu-functions)
;;; maheilu-functions.el ends here
