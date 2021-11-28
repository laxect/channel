(use-modules 
  (guix packages)
  (guix download))

(define %iosevka-version "11.1.0")

(define-public font-iosevka-term-ss10
  (package
    (name "font-iosevka-term-ss10")
    (version %iosevka-version)
    (build-system font-build-system)
    (home-page "https://be5invis.github.io/Iosevka/")
    (source
     (origin
       (method url-fetch/zipbomb)
       (uri (string-append "https://github.com/be5invis/Iosevka"
                           "/releases/download/v" version
                           "/ttf-iosevka-term-ss10-" version ".zip"))
       (sha256
        (base32 "1asj7ah4w0sqz5kp1rf74ymrx53xhq5iv5xf9yrk14cnlinb1x38"))))
    (synopsis "Coders' typeface, built from code")
    (description
     "Iosevka is a slender monospace sans-serif or slab-serif typeface inspired
by Pragmata Pro, M+, and PF DIN Mono, designed to be the ideal font for
programming.  Iosevka is completely generated from its source code.")
    (license (list license:silofl1.1    ;build artifacts (i.e., the fonts)
                   license:bsd-3))))    ;supporting code
