(define-module (pkgs rust)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (guix build-system cargo)
  #:use-module (guix download)
  #:use-module (guix git-download)
  #:use-module (guix packages)
  #:use-module (guix utils)
  #:use-module (gnu packages)
  #:use-module (gnu packages tls)
  #:use-module (gnu packages crates-io)
  #:use-module (gnu packages rust))

(define-public anki-status-0.2
  (package
    (name "anki-status")
    (version "0.2.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "anki-status" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0pv9h2mv3k07dh0z17vxymbg396pn974ngxh8a1y9f8zjflgqkw6"))))
    (build-system cargo-build-system)
    (inputs (list openssl))
    (arguments
      `(#:rust ,rust-1.57
        #:cargo-inputs
        (("rust-reqwest" ,rust-reqwest-0.11)
         ("rust-serde" ,rust-serde-1)
         ("rust-time" ,rust-time-0.3))))
    (home-page "")
    (synopsis "Anki 2.1.x status bar plugin")
    (description "Anki 2.1.x status bar plugin")
    (license license:expat)))

