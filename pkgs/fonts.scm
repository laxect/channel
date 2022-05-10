(define-module
  (pkgs fonts)
  #:use-module
  (gnu packages fonts)
  #:use-module
  (guix download)
  #:use-module
  (guix packages)
  #:use-module
  (guix licenses)
  #:use-module
  (guix build-system font))

(define %iosevka-version "15.3.0")

(define-public font-iosevka-term-ss10
  (package
    (name "font-iosevka-term-ss10")
    (version %iosevka-version)
    (build-system font-build-system)
    (home-page "https://be5invis.github.io/Iosevka/")
    (source
      (origin
        (method url-fetch/zipbomb)
        (uri (string-append
               "https://github.com/be5invis/Iosevka"
               "/releases/download/v"
               %iosevka-version
               "/ttf-iosevka-term-ss10-"
               %iosevka-version
               ".zip"))
        (sha256 (base32 "07iphnbalsgg3789r8d8anq3lyf9mjcvazqxrxn6pa3fgqdkvxda"))))
    (synopsis "Coders' typeface, built from code")
    (description
      "Iosevka is a slender monospace sans-serif or slab-serif typeface inspired\nby Pragmata Pro, M+, and PF DIN Mono, designed to be the ideal font for\nprogramming.  Iosevka is completely generated from its source code.")
    (license (list silofl1.1 bsd-3))))
;supporting code
