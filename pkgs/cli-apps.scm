(define-module
  (pkgs cli-apps)
  #:use-module
  ((guix licenses) #:prefix license:)
  #:use-module
  (guix build-system copy)
  #:use-module
  (guix build-system cargo)
  #:use-module
  (guix download)
  #:use-module
  (guix git-download)
  #:use-module
  (guix packages)
  #:use-module
  (guix utils)
  #:use-module
  (gnu packages)
  #:use-module
  (gnu packages tls)
  #:use-module
  (gnu packages crates-io)
  #:use-module
  (gnu packages crates-graphics)
  #:use-module
  (gnu packages rust))

(define-public anki-status-0.2
  (package
    (name "anki-status")
    (version "0.2.3")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "anki-status" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256 (base32 "0n152zg4h65liwbp6nd7mdwql4cgn4sw9wxn2w6qjnqq268aafld"))))
    (build-system cargo-build-system)
    (inputs (list openssl))
    (arguments
      `(#:cargo-inputs
        (("rust-reqwest" ,rust-reqwest-0.11)
         ("rust-serde" ,rust-serde-1)
         ("rust-time" ,rust-time-0.3))))
    (home-page "")
    (synopsis "Anki 2.1.x status bar plugin")
    (description "Anki 2.1.x status bar plugin")
    (license license:expat)))

; Binary package
(define-public starship
  (package
    (name "starship")
    (version "1.9.1")
    (source
      (origin
        (method url-fetch/tarbomb)
        (uri (string-append
               "https://github.com/starship/starship/releases/download/v"
               version
               "/starship-x86_64-unknown-linux-musl.tar.gz"))
        (sha256 (base32 "03bsfrb74axj5l79mbgf88y3cnv1i0wnx3n01vbgzxpqh4xd7z4c"))))
    (build-system copy-build-system)
    (arguments '(#:install-plan '(("starship" "bin/"))))
    (home-page "https://starship.rs")
    (synopsis
      "The minimal, blazing-fast, and infinitely customizable prompt for any shell!")
    (description
      "The minimal, blazing-fast, and infinitely customizable prompt for any shell!")
    (license license:isc)))
