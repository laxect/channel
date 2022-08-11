(define-module (pkgs crates-io)
  #:use-module ((guix licenses)
                #:prefix license:)
  #:use-module (guix build-system copy)
  #:use-module (guix build-system cargo)
  #:use-module (guix download)
  #:use-module (guix git-download)
  #:use-module (guix packages)
  #:use-module (guix utils)
  #:use-module (gnu packages)
  #:use-module (gnu packages tls)
  #:use-module (gnu packages crates-io)
  #:use-module (gnu packages crates-graphics)
  #:use-module (gnu packages rust))

(define-public rust-tracing-error-0.2
  (package
    (name "rust-tracing-error")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "tracing-error" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0vi0rns7r8iny2milg0kikz1mhgcl9wz5clpy1vi4jrq1wffr1nn"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-tracing" ,rust-tracing-0.1)
                       ("rust-tracing-subscriber" ,rust-tracing-subscriber-0.3))))
    (home-page "https://tokio.rs")
    (synopsis "Utilities for enriching errors with `tracing`.
")
    (description "Utilities for enriching errors with `tracing`.")
    (license license:expat)))

(define-public rust-is-ci-1
  (package
    (name "rust-is-ci")
    (version "1.1.1")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "is_ci" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1ywra2z56x6d4pc02zq24a4x7gvpixynh9524icbpchbf9ydwv31"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t))
    (home-page "https://github.com/zkat/is_ci")
    (synopsis
     "Super lightweight CI environment checker. Just tells you if you're in CI or not without much fuss.")
    (description
     "Super lightweight CI environment checker.  Just tells you if you're in CI or not
without much fuss.")
    (license license:isc)))

(define-public rust-supports-color-1
  (package
    (name "rust-supports-color")
    (version "1.3.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "supports-color" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1yfi8yswjipk3ljzm79rbf3phw2fwlznhji1iap7pm4idg9wwwj8"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-atty" ,rust-atty-0.2)
                       ("rust-is-ci" ,rust-is-ci-1))))
    (home-page "https://github.com/zkat/supports-color")
    (synopsis
     "Detects whether a terminal supports color, and gives details about that support.")
    (description
     "Detects whether a terminal supports color, and gives details about that support.")
    (license license:asl2.0)))

(define-public rust-owo-colors-3
  (package
    (name "rust-owo-colors")
    (version "3.4.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "owo-colors" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0yx8glp9vipa6gybbqmpg8lyrcsrv9z6dia94p5lvshzja0p7kyy"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-supports-color" ,rust-supports-color-1))))
    (home-page "https://github.com/jam1garner/owo-colors")
    (synopsis "Zero-allocation terminal colors that'll make people go owo")
    (description "Zero-allocation terminal colors that'll make people go owo")
    (license license:expat)))

(define-public rust-color-spantrace-0.2
  (package
    (name "rust-color-spantrace")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "color-spantrace" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1kldrjm5j3mzz6c84brxshnzm1qbvjglgg7c4z5xrv29jhymp9qv"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-once-cell" ,rust-once-cell-1)
                       ("rust-owo-colors" ,rust-owo-colors-3)
                       ("rust-tracing-core" ,rust-tracing-core-0.1)
                       ("rust-tracing-error" ,rust-tracing-error-0.2))))
    (home-page "https://github.com/yaahc/color-spantrace")
    (synopsis
     "A pretty printer for tracing_error::SpanTrace based on color-backtrace")
    (description
     "This package provides a pretty printer for tracing_error::SpanTrace based on
color-backtrace")
    (license (list license:expat license:asl2.0))))

(define-public rust-color-eyre-0.6
  (package
    (name "rust-color-eyre")
    (version "0.6.2")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "color-eyre" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "014j49slcblg6cnsh974k9yjmi1khbm4dpmqdm1zii58rj1parjs"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-backtrace" ,rust-backtrace-0.3)
                       ("rust-color-spantrace" ,rust-color-spantrace-0.2)
                       ("rust-eyre" ,rust-eyre-0.6)
                       ("rust-indenter" ,rust-indenter-0.3)
                       ("rust-once-cell" ,rust-once-cell-1)
                       ("rust-owo-colors" ,rust-owo-colors-3)
                       ("rust-tracing-error" ,rust-tracing-error-0.2)
                       ("rust-url" ,rust-url-2))))
    (home-page "https://github.com/yaahc/color-eyre")
    (synopsis
     "An error report handler for panics and eyre::Reports for colorful, consistent, and well formatted error reports for all kinds of errors.")
    (description
     "An error report handler for panics and eyre::Reports for colorful, consistent,
and well formatted error reports for all kinds of errors.")
    (license (list license:expat license:asl2.0))))

(define-public rust-chinese-variant-1
  (package
    (name "rust-chinese-variant")
    (version "1.0.9")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "chinese-variant" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1xq0yy7cqh0hj7van9ppc71acrpv9qz5svlmf9wrbazgi6di7smf"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t))
    (home-page "https://magiclen.org/chinese-variant")
    (synopsis "An enum to represent the variants of the Chinese Language.")
    (description "An enum to represent the variants of the Chinese Language.")
    (license license:expat)))

(define-public rust-chinese-number-0.6
  (package
    (name "rust-chinese-number")
    (version "0.6.4")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "chinese-number" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0api8081wwn8ls3rdka02j5ii33phzg6ywrj6nfsvvqg12kq9s6d"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-chinese-variant" ,rust-chinese-variant-1))))
    (home-page "https://magiclen.org/chinese-number")
    (synopsis
     "Convert primitive numbers to Chinese numbers, or parse Chinese numbers to primitive numbers.")
    (description
     "Convert primitive numbers to Chinese numbers, or parse Chinese numbers to
primitive numbers.")
    (license license:expat)))

(define-public rust-mail-parser-0.5
  (package
    (name "rust-mail-parser")
    (version "0.5.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "mail-parser" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1dylbm63mr74nx81m3ks3mhz706i5zqrjd531j756q0krplyj98y"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-encoding-rs" ,rust-encoding-rs-0.8)
                       ("rust-serde" ,rust-serde-1))))
    (home-page "https://github.com/stalwartlabs/mail-parser")
    (synopsis "Fast and robust e-mail parsing library for Rust")
    (description "Fast and robust e-mail parsing library for Rust")
    (license (list license:asl2.0 license:expat))))
