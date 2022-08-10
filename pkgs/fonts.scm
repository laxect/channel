(define-module (pkgs fonts)
  #:use-module (gnu packages fonts)
  #:use-module (guix download)
  #:use-module (guix packages)
  #:use-module (guix licenses)
  #:use-module (guix build-system font))

(define %iosevka-version
  "15.6.3")

(define-public font-iosevka-term-ss10
  (package
    (name "font-iosevka-term-ss10")
    (version %iosevka-version)
    (build-system font-build-system)
    (home-page "https://be5invis.github.io/Iosevka/")
    (source (origin
              (method url-fetch/zipbomb)
              (uri (string-append "https://github.com/be5invis/Iosevka"
                                  "/releases/download/v"
                                  %iosevka-version
                                  "/ttf-iosevka-term-ss10-"
                                  %iosevka-version
                                  ".zip"))
              (sha256
               (base32
                "0i0wjdc08c5gnr6f631j538rkggz7d6r3ca7bvwdfvk39jvh5nfc"))))
    (synopsis "Coders' typeface, built from code")
    (description
     "Iosevka is a slender monospace sans-serif or slab-serif typeface inspired
by Pragmata Pro, M+, and PF DIN Mono, designed to be the ideal font for
programming.  Iosevka is completely generated from its source code.")
    (license (list silofl1.1 bsd-3))))
;supporting code
