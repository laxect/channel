(define-module (pkgs cli-apps)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (guix build-system cargo)
  #:use-module (guix download)
  #:use-module (guix git-download)
  #:use-module (guix packages)
  #:use-module (guix utils)
  #:use-module (gnu packages)
  #:use-module (gnu packages tls)
  #:use-module (gnu packages crates-io)
  #:use-module (gnu packages crates-graphics)
  #:use-module (pkgs crates)
  #:use-module (gnu packages rust))

(define-public anki-status-0.2
  (package
    (name "anki-status")
    (version "0.2.2")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "anki-status" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0fz35qzgx5311vmvd5xcacgmn09qf58asac6rj54dqjcp7nsk3bl"))))
    (build-system cargo-build-system)
    (inputs (list openssl))
    (arguments
     `(#:rust ,rust-1.57
       #:cargo-inputs
       (("rust-reqwest" ,rust-reqwest-0.11) ("rust-serde" ,rust-serde-1)
        ("rust-time" ,rust-time-0.3))))
    (home-page "")
    (synopsis "Anki 2.1.x status bar plugin")
    (description "Anki 2.1.x status bar plugin")
    (license license:expat)))

(define-public rust-dprint-0.19
  (package
    (name "rust-dprint")
    (version "0.19.2")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "dprint" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "05w4xk8yn5g40nxcq2hzg23r40whcss2aznp2d70xjllc2rl17p5"))))
    (build-system cargo-build-system)
    (arguments
     `(#:rust ,rust-1.57
       #:cargo-inputs
       (("rust-anyhow" ,rust-anyhow-1) ("rust-clap" ,rust-clap-2)
        ("rust-crossterm" ,rust-crossterm-0.21)
        ("rust-dirs" ,rust-dirs-4)
        ("rust-dprint-cli-core" ,rust-dprint-cli-core-0.10)
        ("rust-dprint-core" ,rust-dprint-core-0.49)
        ("rust-dunce" ,rust-dunce-1)
        ("rust-ignore" ,rust-ignore-0.4)
        ("rust-jsonc-parser" ,rust-jsonc-parser-0.17)
        ("rust-num-cpus" ,rust-num-cpus-1)
        ("rust-parking-lot" ,rust-parking-lot-0.11)
        ("rust-rayon" ,rust-rayon-1)
        ("rust-serde" ,rust-serde-1)
        ("rust-serde-json" ,rust-serde-json-1)
        ("rust-similar" ,rust-similar-2)
        ("rust-twox-hash" ,rust-twox-hash-1)
        ("rust-url" ,rust-url-2)
        ("rust-wasmer" ,rust-wasmer-2)
        ("rust-wild" ,rust-wild-2)
        ("rust-winreg" ,rust-winreg-0.10)
        ("rust-zip" ,rust-zip-0.5))
       #:cargo-development-inputs
       (("rust-lazy-static" ,rust-lazy-static-1) ("rust-path-clean" ,rust-path-clean-0.1)
        ("rust-pretty-assertions" ,rust-pretty-assertions-1))
       #:tests?
       #f))
    (home-page "https://github.com/dprint/dprint")
    (synopsis
     "Binary for dprint code formatterâa pluggable and configurable code formatting platform.")
    (description
     "Binary for dprint code formatterâa pluggable and configurable code formatting
platform.")
    (license license:expat)))

