(TeX-add-style-hook
 "beamerposter"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("fp" "debug")))
   (TeX-run-style-hooks
    "xkeyval"
    "type1cm"
    "fp")
   (TeX-add-symbols
    "tmp"
    "veryHuge"
    "VeryHuge"))
 :latex)

