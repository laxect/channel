(define-module (pkgs cli-apps)
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
  #:use-module (gnu packages rust)
  #:use-module (pkgs crates-io))

(define-public anki-status
  (package
    (name "anki-status")
    (version "0.2.3")
    (source (origin
              (method url-fetch)
              (uri (crate-uri name version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0n152zg4h65liwbp6nd7mdwql4cgn4sw9wxn2w6qjnqq268aafld"))))
    (build-system cargo-build-system)
    (inputs (list openssl))
    (arguments
     `(#:cargo-inputs (("rust-reqwest" ,rust-reqwest-0.11)
                       ("rust-serde" ,rust-serde-1)
                       ("rust-time" ,rust-time-0.3))))
    (home-page "https://git.sr.ht/~fubuki/anki-status")
    (synopsis "Anki 2.1.x status bar plugin")
    (description "Anki 2.1.x status bar plugin")
    (license license:expat)))

(define-public kyou
  (package
    (name "kyou")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "https://github.com/shimakaze-system/kyou/archive/v"
                    version ".tar.gz"))
              (sha256
               (base32
                "1s222h2rjrsi45i16jp7f419ylwzlx1lsi76545dms7imxw884dg"))))
    (build-system cargo-build-system)
    (inputs (list openssl))
    (arguments
     `(#:cargo-inputs (("rust-chinese-number" ,rust-chinese-number-0.6)
                       ("rust-color-eyre" ,rust-color-eyre-0.6)
                       ("rust-time" ,rust-time-0.3))))
    (home-page "https://github.com/shimakaze-system/kyou")
    (synopsis "Waybar calender plugin")
    (description "Waybar calender plugin")
    (license license:expat)))

(define-public shimasen
  (package
    (name "shimasen")
    (version "0.4.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri name version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1hdymhyw67bywghii0c14b3zycqw2h7j2ij2lnasasmvb4rpmvdx"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-anyhow" ,rust-anyhow-1)
                       ("rust-base64" ,rust-base64-0.13)
                       ("rust-regex" ,rust-regex-1))))
    (home-page "https://git.sr.ht/~fubuki/shimasen")
    (synopsis "Tool to convert CCB bill mail to beancount format")
    (description "Tool to convert CCB bill mail to beancount format")
    (license license:gpl3)))

; Binary package
(define-public starship
  (package
    (name "starship")
    (version "1.9.1")
    (source (origin
              (method url-fetch/tarbomb)
              (uri (string-append
                    "https://github.com/starship/starship/releases/download/v"
                    version "/starship-x86_64-unknown-linux-musl.tar.gz"))
              (sha256
               (base32
                "03bsfrb74axj5l79mbgf88y3cnv1i0wnx3n01vbgzxpqh4xd7z4c"))))
    (build-system copy-build-system)
    (arguments
     '(#:install-plan '(("starship" "bin/"))))
    (home-page "https://starship.rs")
    (synopsis
     "The minimal, blazing-fast, and infinitely customizable prompt for any shell!")
    (description
     "The minimal, blazing-fast, and infinitely customizable prompt for any shell!")
    (license license:isc)))
