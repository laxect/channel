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
  #:use-module (gnu packages glib)
  #:use-module (gnu packages rust)
  #:use-module (gnu packages gnome)
  #:use-module (gnu packages crates-io)
  #:use-module (gnu packages pkg-config)
  #:use-module (gnu packages compression)
  #:use-module (gnu packages crates-graphics)
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

(define-public changeup
  (package
    (name "changeup")
    (version "0.2.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "https://github.com/laxect/changeup/releases/download/"
                    version
                    "/"
                    name
                    "-"
                    version
                    ".zip"))
              (file-name (string-append name "-" version ".zip"))
              (sha256
               (base32
                "076fwhkz8k5avvvgwplii7fwq1aqlywzixh3zrs0bbf43vhqhxsv"))))
    (build-system cargo-build-system)
    (native-inputs (list dbus unzip pkg-config))
    (arguments
     `(#:install-source? #f
       #:phases (modify-phases %standard-phases
                  (delete 'configure)
                  (add-before 'install 'ch
                    (lambda _
                      (chdir "..")))
                  (add-after 'install 'install-service
                    (lambda* (#:key outputs #:allow-other-keys)
                      "Install Services."
                      (let* ((out (assoc-ref outputs "out"))
                             (systemd-user (string-append out
                                            "/lib/systemd/user/"))
                             (dbus-service (string-append out
                                            "/share/dbus-1/services/")))
                        (for-each mkdir-p
                                  (list out systemd-user dbus-service))
                        (substitute* '("changeup.service"
                                       "moe.gyara.changeup.service")
                          (("/usr")
                           out))
                        (copy-file "changeup.service"
                                   (string-append systemd-user
                                                  "changeup.service"))
                        (copy-file "moe.gyara.changeup.service"
                                   (string-append dbus-service
                                    "moe.gyara.changeup.service")) #t))))))
    (home-page "https://git.sr.ht/~fubuki/changeup")
    (synopsis "Wake up!")
    (description "Sway helper daemon")
    (license license:expat)))

(define-public diva-livomo
  (package
    (name "diva-livomo")
    (version "0.3.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "https://github.com/laxect/diva-livomo/releases/download/"
                    version
                    "/"
                    name
                    "-"
                    version
                    ".zip"))
              (file-name (string-append name "-" version ".zip"))
              (sha256
               (base32
                "0phgawcz1afsdiai2sgzi2kipjm1yf6rdrilii5x3ng2ynflcyjl"))))
    (build-system cargo-build-system)
    (inputs (list openssl libsecret))
    (native-inputs (list unzip pkg-config))
    (arguments
     `(#:install-source? #f
       #:phases (modify-phases %standard-phases
                  (replace 'configure
                    (lambda* (#:key inputs #:allow-other-keys)
                      (setenv "RUSTFLAGS" "--cap-lints allow")
                      (setenv "CC"
                              (string-append (assoc-ref inputs "gcc")
                                             "/bin/gcc"))
                      (setenv "LIBGIT2_SYS_USE_PKG_CONFIG" "1")
                      (setenv "LIBSSH2_SYS_USE_PKG_CONFIG" "1")
                      (setenv "OPENSSL_DIR"
                              (assoc-ref inputs "openssl"))
                      #t))
                  (add-before 'install 'ch
                    (lambda _
                      (chdir "..")))
                  (add-after 'install 'install-completion
                    (lambda* (#:key outputs #:allow-other-keys)
                      "Install Completion."
                      (let* ((out (assoc-ref outputs "out"))
                             (zsh (string-append out
                                                 "/share/zsh/site-functions/")))
                        (mkdir-p zsh)
                        (copy-file "_dival"
                                   (string-append zsh "_dival")) #t))))))
    (home-page "https://github.com/laxect/diva-livomo/")
    (synopsis "Diva Līvõmō")
    (description "Note to markdown")
    (license license:expat)))

(define-public hyouka
  (package
    (name "hyouka")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "https://github.com/laxect/hyouka/releases/download/"
                    version
                    "/"
                    name
                    "-"
                    version
                    ".zip"))
              (file-name (string-append name "-" version ".zip"))
              (sha256
               (base32
                "1c4jj5l1ry8bfyc77gh0cmikvwv0wddgcna09mpxf50p39fjv9nn"))))
    (build-system cargo-build-system)
    (native-inputs (list unzip pkg-config))
    (arguments
     `(#:install-source? #f
       #:phases (modify-phases %standard-phases
                  (delete 'configure)
                  (add-before 'install 'ch
                    (lambda _
                      (chdir "..")))
                  (add-after 'install 'install-completion
                    (lambda* (#:key outputs #:allow-other-keys)
                      "Install Completion."
                      (let* ((out (assoc-ref outputs "out"))
                             (zsh (string-append out
                                                 "/share/zsh/site-functions/")))
                        (install-file "_hyouka" zsh)) #t)))))
    (home-page "https://github.com/laxect/hyouka/")
    (synopsis "Blog manager")
    (description "Create blog page and post them in terminal")
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
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1s222h2rjrsi45i16jp7f419ylwzlx1lsi76545dms7imxw884dg"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-chinese-number" ,rust-chinese-number-0.6)
                       ("rust-color-eyre" ,rust-color-eyre-0.6)
                       ("rust-time" ,rust-time-0.3))))
    (home-page "https://github.com/shimakaze-system/kyou")
    (synopsis "Waybar calender plugin")
    (description "Waybar calender plugin")
    (license license:expat)))

(define-public unlocker
  (package
    (name "unlocker")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "https://github.com/laxect/unlocker/archive/v" version
                    ".tar.gz"))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "022m6y78bxdyd5z8xw1sg99715cn6jkjk3411k8f98pngq9k2l2w"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-dirs" ,rust-dirs-3)
                       ("rust-color-eyre" ,rust-color-eyre-0.6)
                       ("rust-serde" ,rust-serde-1)
                       ("rust-toml" ,rust-toml-0.5)
                       ("rust-tracing" ,rust-tracing-0.1)
                       ("rust-tracing-subscsriber" ,rust-tracing-subscriber-0.3))))
    (home-page "https://github.com/laxect/unlocker")
    (synopsis "Waybar calender plugin")
    (description "Waybar calender plugin")
    (license license:expat)))

(define-public whisper
  (package
    (name "whisper")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "https://github.com/laxect/whisper/releases/download/"
                    version
                    "/"
                    name
                    "-"
                    version
                    ".zip"))
              (file-name (string-append name "-" version ".zip"))
              (sha256
               (base32
                "0mhfgia3k109hngs9bbzqn1kghmynahgi9lp5v4i02kjcyyfy6f3"))))
    (build-system cargo-build-system)
    (inputs (list libsecret))
    (native-inputs (list unzip pkg-config glib))
    (arguments
     `(#:install-source? #f
       #:phases (modify-phases %standard-phases
                  (replace 'configure
                    (lambda* (#:key inputs #:allow-other-keys)
                      (setenv "RUSTFLAGS" "--cap-lints allow")
                      (setenv "CC"
                              (string-append (assoc-ref inputs "gcc")
                                             "/bin/gcc")) #t))
                  (add-before 'install 'ch
                    (lambda _
                      (chdir "..")))
                  (add-after 'install 'install-wrapper
                    (lambda* (#:key outputs #:allow-other-keys)
                      "Install Wrapper shell."
                      (let* ((out (assoc-ref outputs "out")))
                        (copy-file "contrib/bemenu.sh"
                                   (string-append out "/bin/whisper-bemenu"))
                        #t))))))
    (home-page "https://github.com/laxect/whisper/")
    (synopsis "Libsecret bemenu link")
    (description "Bemenu wrapper for libsecret")
    (license license:expat)))

(define-public shimasen
  (package
    (name "shimasen")
    (version "0.5.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri name version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1apklr155s0yc95s8vw9bcv7135lga3h2j84lwka5xs94q5zs4al"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-color-eyre" ,rust-color-eyre-0.6)
                       ("rust-mail-parser" ,rust-mail-parser-0.5)
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
