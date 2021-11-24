(TeX-add-style-hook
 "poster2"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("beamer" "final")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("beamerposter" "scale=1.25") ("biblatex" "backend=bibtex") ("textpos" "absolute" "overlay")))
   (add-to-list 'LaTeX-verbatim-environments-local "semiverbatim")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "href")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (TeX-run-style-hooks
    "latex2e"
    "beamer"
    "beamer10"
    "beamerposter"
    "wrapfig"
    "kky"
    "biblatex"
    "textpos"
    "graphicx"
    "booktabs")
   (LaTeX-add-labels
    "eq")
   (LaTeX-add-bibliographies
    "sample")
   (LaTeX-add-lengths
    "sepwid"
    "onecolwid"
    "onecolwidone"
    "onecolwidtwo"
    "onecolwidthree"
    "twocolwid"
    "threecolwid"))
 :latex)

