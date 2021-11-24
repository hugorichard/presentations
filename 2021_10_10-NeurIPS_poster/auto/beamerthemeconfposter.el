(TeX-add-style-hook
 "beamerthemeconfposter"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("fontenc" "T1")))
   (TeX-run-style-hooks
    "tikz"
    "fontenc"
    "lmodern"
    "textcomp"
    "amsmath"
    "amssymb"
    "ragged2e")
   (TeX-add-symbols
    "makeruleinbox")
   (LaTeX-add-lengths
    "inboxwd"
    "iinboxwd"
    "inboxrule"))
 :latex)

