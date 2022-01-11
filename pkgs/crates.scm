(define-module (pkgs crates)
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
  #:use-module (gnu packages rust))

(define-public rust-winreg-0.10
  (package
    (name "rust-winreg")
    (version "0.10.1")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "winreg" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "17c6h02z88ijjba02bnxi5k94q5cz490nf3njh9yypf8fbig9l40"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs
       (("rust-chrono" ,rust-chrono-0.4) ("rust-serde" ,rust-serde-1)
        ("rust-winapi" ,rust-winapi-0.3))))
    (home-page "https://github.com/gentoo90/winreg-rs")
    (synopsis "Rust bindings to MS Windows Registry API")
    (description "Rust bindings to MS Windows Registry API")
    (license license:expat)))

(define-public rust-wast-39
  (package
    (name "rust-wast")
    (version "39.0.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "wast" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "01fxycnka12j7x0fkzkwkak1ylrn4kjy7vkg30hp89ib8d9vvfz9"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs
       (("rust-leb128" ,rust-leb128-0.2) ("rust-memchr" ,rust-memchr-2)
        ("rust-unicode-width" ,rust-unicode-width-0.1))))
    (home-page
     "https://github.com/bytecodealliance/wasm-tools/tree/main/crates/wast")
    (synopsis
     "Customizable Rust parsers for the WebAssembly Text formats WAT and WAST
")
    (description
     "Customizable Rust parsers for the WebAssembly Text formats WAT and WAST")
    (license (list license:asl2.0))))

(define-public rust-wat-1
  (package
    (name "rust-wat")
    (version "1.0.41")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "wat" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0c0qwqzxvwil8shw7da0c0ryb4iygkr1g1km52gwd5sg94jyv65b"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs
       (("rust-wast" ,rust-wast-39))))
    (home-page
     "https://github.com/bytecodealliance/wasm-tools/tree/main/crates/wat")
    (synopsis "Rust parser for the WebAssembly Text format, WAT
")
    (description "Rust parser for the WebAssembly Text format, WAT")
    (license (list license:asl2.0))))

(define-public rust-wasmer-engine-universal-2
  (package
    (name "rust-wasmer-engine-universal")
    (version "2.1.1")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "wasmer-engine-universal" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1qk9g26xvqwpk2zppzhf08hpnl7127mnckm3z6y7mb95p3ayisnz"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs
       (("rust-cfg-if" ,rust-cfg-if-1) ("rust-enumset" ,rust-enumset-1)
        ("rust-leb128" ,rust-leb128-0.2)
        ("rust-loupe" ,rust-loupe-0.1)
        ("rust-region" ,rust-region-3)
        ("rust-rkyv" ,rust-rkyv-0.7)
        ("rust-wasmer-compiler" ,rust-wasmer-compiler-2)
        ("rust-wasmer-engine" ,rust-wasmer-engine-2)
        ("rust-wasmer-types" ,rust-wasmer-types-2)
        ("rust-wasmer-vm" ,rust-wasmer-vm-2)
        ("rust-winapi" ,rust-winapi-0.3))))
    (home-page "https://github.com/wasmerio/wasmer")
    (synopsis "Wasmer Universal Engine")
    (description "Wasmer Universal Engine")
    (license (list license:expat license:asl2.0))))

(define-public rust-wasmer-object-2
  (package
    (name "rust-wasmer-object")
    (version "2.1.1")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "wasmer-object" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1xvjrcnp2r2nxh01v8vd0gg9kk8rgm0q8hn2awhkpp1v9x773m63"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs
       (("rust-object" ,rust-object-0.27) ("rust-thiserror" ,rust-thiserror-1)
        ("rust-wasmer-compiler" ,rust-wasmer-compiler-2)
        ("rust-wasmer-types" ,rust-wasmer-types-2))))
    (home-page "https://github.com/wasmerio/wasmer")
    (synopsis "Wasmer Native Object generator")
    (description "Wasmer Native Object generator")
    (license license:expat)))

(define-public rust-wasmer-engine-dylib-2
  (package
    (name "rust-wasmer-engine-dylib")
    (version "2.1.1")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "wasmer-engine-dylib" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1skmzyps3jn6h761gkkj57qq4v11f9gzza0hmz6drq9i8ykvgmcd"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs
       (("rust-cfg-if" ,rust-cfg-if-1) ("rust-enumset" ,rust-enumset-1)
        ("rust-leb128" ,rust-leb128-0.2)
        ("rust-libloading" ,rust-libloading-0.7)
        ("rust-loupe" ,rust-loupe-0.1)
        ("rust-rkyv" ,rust-rkyv-0.7)
        ("rust-serde" ,rust-serde-1)
        ("rust-tempfile" ,rust-tempfile-3)
        ("rust-tracing" ,rust-tracing-0.1)
        ("rust-wasmer-compiler" ,rust-wasmer-compiler-2)
        ("rust-wasmer-engine" ,rust-wasmer-engine-2)
        ("rust-wasmer-object" ,rust-wasmer-object-2)
        ("rust-wasmer-types" ,rust-wasmer-types-2)
        ("rust-wasmer-vm" ,rust-wasmer-vm-2)
        ("rust-which" ,rust-which-4))))
    (home-page "https://github.com/wasmerio/wasmer")
    (synopsis "Wasmer Dylib Engine")
    (description "Wasmer Dylib Engine")
    (license license:expat)))

(define-public rust-wasmer-engine-2
  (package
    (name "rust-wasmer-engine")
    (version "2.1.1")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "wasmer-engine" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "06lpi02nvj0xgl965wlgrp0rkws53857whb6qwmw3qjg6lf3285b"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs
       (("rust-backtrace" ,rust-backtrace-0.3) ("rust-enumset" ,rust-enumset-1)
        ("rust-lazy-static" ,rust-lazy-static-1)
        ("rust-loupe" ,rust-loupe-0.1)
        ("rust-memmap2" ,rust-memmap2-0.5)
        ("rust-more-asserts" ,rust-more-asserts-0.2)
        ("rust-rustc-demangle" ,rust-rustc-demangle-0.1)
        ("rust-serde" ,rust-serde-1)
        ("rust-serde-bytes" ,rust-serde-bytes-0.11)
        ("rust-target-lexicon" ,rust-target-lexicon-0.12)
        ("rust-thiserror" ,rust-thiserror-1)
        ("rust-wasmer-compiler" ,rust-wasmer-compiler-2)
        ("rust-wasmer-types" ,rust-wasmer-types-2)
        ("rust-wasmer-vm" ,rust-wasmer-vm-2))))
    (home-page "https://github.com/wasmerio/wasmer")
    (synopsis "Wasmer Engine abstraction")
    (description "Wasmer Engine abstraction")
    (license (list license:expat license:asl2.0))))

(define-public rust-wasmer-derive-2
  (package
    (name "rust-wasmer-derive")
    (version "2.1.1")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "wasmer-derive" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1icw0zzkjpvhzw1vhr7hfasjsza7nxpmvaax47qhj3k415xwpxck"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs
       (("rust-proc-macro-error" ,rust-proc-macro-error-1) ("rust-proc-macro2" ,rust-proc-macro2-1)
        ("rust-quote" ,rust-quote-1)
        ("rust-syn" ,rust-syn-1))))
    (home-page "https://github.com/wasmerio/wasmer")
    (synopsis "Wasmer derive macros")
    (description "Wasmer derive macros")
    (license license:expat)))

(define-public rust-dynasmrt-1
  (package
    (name "rust-dynasmrt")
    (version "1.2.1")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "dynasmrt" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0qchn2g010f1a4p54niwqgpd46i0g155zyn1zxnqya5djgy8lhhx"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs
       (("rust-byteorder" ,rust-byteorder-1) ("rust-dynasm" ,rust-dynasm-1)
        ("rust-memmap2" ,rust-memmap2-0.5))))
    (home-page "https://github.com/CensoredUsername/dynasm-rs")
    (synopsis
     "A simple runtime for assembling code at runtime. Combined with the plugin crate dynasm it can be used to write JIT compilers easily.")
    (description
     "This package provides a simple runtime for assembling code at runtime.  Combined
with the plugin crate dynasm it can be used to write JIT compilers easily.")
    (license license:mpl2.0)))

(define-public rust-dynasm-1
  (package
    (name "rust-dynasm")
    (version "1.2.1")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "dynasm" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0g68s1ax9pvabsckszhc82d9qx6cwr6q3gxxpg83dlqbccg81ca7"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs
       (("rust-bitflags" ,rust-bitflags-1) ("rust-byteorder" ,rust-byteorder-1)
        ("rust-lazy-static" ,rust-lazy-static-1)
        ("rust-proc-macro-error" ,rust-proc-macro-error-1)
        ("rust-proc-macro2" ,rust-proc-macro2-1)
        ("rust-quote" ,rust-quote-1)
        ("rust-syn" ,rust-syn-1))))
    (home-page "https://github.com/CensoredUsername/dynasm-rs")
    (synopsis
     "A plugin for assembling code at runtime. Combined with the runtime crate dynasmrt it can be used to write JIT compilers easily.")
    (description
     "This package provides a plugin for assembling code at runtime.  Combined with
the runtime crate dynasmrt it can be used to write JIT compilers easily.")
    (license license:mpl2.0)))

(define-public rust-wasmer-compiler-singlepass-2
  (package
    (name "rust-wasmer-compiler-singlepass")
    (version "2.1.1")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "wasmer-compiler-singlepass" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1i6axhx8bnv52zwww2val5pqnn6jjsx48fgwz6rqn6jx9ji3s797"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs
       (("rust-byteorder" ,rust-byteorder-1) ("rust-dynasm" ,rust-dynasm-1)
        ("rust-dynasmrt" ,rust-dynasmrt-1)
        ("rust-hashbrown" ,rust-hashbrown-0.11)
        ("rust-lazy-static" ,rust-lazy-static-1)
        ("rust-loupe" ,rust-loupe-0.1)
        ("rust-more-asserts" ,rust-more-asserts-0.2)
        ("rust-rayon" ,rust-rayon-1)
        ("rust-smallvec" ,rust-smallvec-1)
        ("rust-wasmer-compiler" ,rust-wasmer-compiler-2)
        ("rust-wasmer-types" ,rust-wasmer-types-2)
        ("rust-wasmer-vm" ,rust-wasmer-vm-2))))
    (home-page "https://github.com/wasmerio/wasmer")
    (synopsis "Singlepass compiler for Wasmer WebAssembly runtime")
    (description "Singlepass compiler for Wasmer WebAssembly runtime")
    (license license:expat)))

(define-public rust-rustc-version-0.4
  (package
    (name "rust-rustc-version")
    (version "0.4.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "rustc_version" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0rpk9rcdk405xhbmgclsh4pai0svn49x35aggl4nhbkd4a2zb85z"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs
       (("rust-semver" ,rust-semver-1))))
    (home-page "https://github.com/Kimundi/rustc-version-rs")
    (synopsis
     "A library for querying the version of a installed rustc compiler")
    (description
     "This package provides a library for querying the version of a installed rustc
compiler")
    (license (list license:expat license:asl2.0))))

(define-public rust-alloc-traits-0.1
  (package
    (name "rust-alloc-traits")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "alloc-traits" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "10z4rmykwnp8ps5r5n34190h6gmzpj1f67fqildi1z8r6f2m8bbb"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t))
    (home-page "https://github.com/HeroicKatora/static-alloc")
    (synopsis "Traits to replace or supplement the alloc module in no_std")
    (description "Traits to replace or supplement the alloc module in no_std")
    (license license:expat)))

(define-public rust-static-alloc-0.2
  (package
    (name "rust-static-alloc")
    (version "0.2.3")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "static-alloc" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0dcfbd4glaivs93qfv05943mfrvmz3fwpprbpx235wa838g2d9vv"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs
       (("rust-alloc-traits" ,rust-alloc-traits-0.1) ("rust-atomic-polyfill" ,rust-atomic-polyfill-0.1))))
    (home-page "https://github.com/HeroicKatora/static-alloc")
    (synopsis "A bump allocator on static memory for the alloc-traits crate")
    (description
     "This package provides a bump allocator on static memory for the alloc-traits
crate")
    (license (list license:expat license:asl2.0 license:zlib))))

(define-public rust-llvm-sys-80
  (package
    (name "rust-llvm-sys")
    (version "80.3.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "llvm-sys" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "18fpvbrhq1ijghr9mhw0a7pnd88xs5qqah9gz080vn6dgkabfkyg"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs
       (("rust-cc" ,rust-cc-1) ("rust-lazy-static" ,rust-lazy-static-1)
        ("rust-libc" ,rust-libc-0.2)
        ("rust-regex" ,rust-regex-1)
        ("rust-semver" ,rust-semver-0.9))))
    (home-page "https://gitlab.com/taricorp/llvm-sys.rs")
    (synopsis "Bindings to LLVM's C API")
    (description "Bindings to LLVM's C API")
    (license license:expat)))

(define-public rust-cargo-toml-0.8
  (package
    (name "rust-cargo-toml")
    (version "0.8.1")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "cargo_toml" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1sbgjvbzb67mg7dzlpdndnzlr7ca1ldiqan078lbiiw8d0i1fgai"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs
       (("rust-serde" ,rust-serde-1) ("rust-serde-derive" ,rust-serde-derive-1)
        ("rust-toml" ,rust-toml-0.5))))
    (home-page "https://lib.rs/cargo_toml")
    (synopsis "`Cargo.toml` struct definitions for parsing with Serde")
    (description "`Cargo.toml` struct definitions for parsing with Serde")
    (license (list license:asl2.0 license:expat))))

(define-public rust-inkwell-internals-0.1
  (package
    (name "rust-inkwell-internals")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "inkwell_internals" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0arzyvjjdwwa006gsp6pvpbkrr7pmpy0mqqqhgliaqpqiyyl562m"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs
       (("rust-cargo-toml" ,rust-cargo-toml-0.8) ("rust-proc-macro2" ,rust-proc-macro2-0.4)
        ("rust-quote" ,rust-quote-0.6)
        ("rust-reqwest" ,rust-reqwest-0.9)
        ("rust-syn" ,rust-syn-0.15))))
    (home-page "https://github.com/TheDan64/inkwell")
    (synopsis "Internal macro crate for inkwell")
    (description "Internal macro crate for inkwell")
    (license license:asl2.0)))

(define-public rust-inkwell-0.1
  (package
    (name "rust-inkwell")
    (version "0.1.0-llvm8sample")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "inkwell" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1k7lg67yvc650s4cqgdqn14ppkg52cqvhlzb3gazsfjsg34pan2p"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs
       (("rust-either" ,rust-either-1) ("rust-inkwell-internals" ,rust-inkwell-internals-0.1)
        ("rust-libc" ,rust-libc-0.2)
        ("rust-llvm-sys" ,rust-llvm-sys-80)
        ("rust-once-cell" ,rust-once-cell-1)
        ("rust-parking-lot" ,rust-parking-lot-0.10)
        ("rust-regex" ,rust-regex-1)
        ("rust-static-alloc" ,rust-static-alloc-0.2))))
    (home-page "https://github.com/TheDan64/inkwell")
    (synopsis
     "Inkwell aims to help you pen your own programming languages by safely wrapping llvm-sys.")
    (description
     "Inkwell aims to help you pen your own programming languages by safely wrapping
llvm-sys.")
    (license license:asl2.0)))

(define-public rust-wasmer-compiler-llvm-2
  (package
    (name "rust-wasmer-compiler-llvm")
    (version "2.1.1")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "wasmer-compiler-llvm" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0jg2rr2q252hiixb0n1a0z8klqg3izfy3pshl0dnrj48rxzirr8d"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs
       (("rust-byteorder" ,rust-byteorder-1) ("rust-cc" ,rust-cc-1)
        ("rust-inkwell" ,rust-inkwell-0.1)
        ("rust-itertools" ,rust-itertools-0.10)
        ("rust-lazy-static" ,rust-lazy-static-1)
        ("rust-libc" ,rust-libc-0.2)
        ("rust-loupe" ,rust-loupe-0.1)
        ("rust-object" ,rust-object-0.27)
        ("rust-rayon" ,rust-rayon-1)
        ("rust-regex" ,rust-regex-1)
        ("rust-rustc-version" ,rust-rustc-version-0.4)
        ("rust-semver" ,rust-semver-1)
        ("rust-smallvec" ,rust-smallvec-1)
        ("rust-target-lexicon" ,rust-target-lexicon-0.12)
        ("rust-wasmer-compiler" ,rust-wasmer-compiler-2)
        ("rust-wasmer-types" ,rust-wasmer-types-2)
        ("rust-wasmer-vm" ,rust-wasmer-vm-2))))
    (home-page "https://github.com/wasmerio/wasmer")
    (synopsis "LLVM compiler for Wasmer WebAssembly runtime")
    (description "LLVM compiler for Wasmer WebAssembly runtime")
    (license license:expat)))

(define-public rust-cranelift-frontend-0.76
  (package
    (name "rust-cranelift-frontend")
    (version "0.76.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "cranelift-frontend" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "08gr4srcr7rf9c82isb9in638yqph7aw6ds8z5rvflg6sg0gr6i7"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs
       (("rust-cranelift-codegen" ,rust-cranelift-codegen-0.76) ("rust-hashbrown" ,rust-hashbrown-0.9)
        ("rust-log" ,rust-log-0.4)
        ("rust-smallvec" ,rust-smallvec-1)
        ("rust-target-lexicon" ,rust-target-lexicon-0.12))))
    (home-page "https://github.com/bytecodealliance/wasmtime")
    (synopsis "Cranelift IR builder helper")
    (description "Cranelift IR builder helper")
    (license (list license:asl2.0))))

(define-public rust-id-arena-2
  (package
    (name "rust-id-arena")
    (version "2.2.1")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "id-arena" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "01ch8jhpgnih8sawqs44fqsqpc7bzwgy0xpi6j0f4j0i5mkvr8i5"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs
       (("rust-rayon" ,rust-rayon-1))))
    (home-page "https://github.com/fitzgen/id-arena")
    (synopsis "A simple, id-based arena.")
    (description "This package provides a simple, id-based arena.")
    (license (list license:expat license:asl2.0))))

(define-public rust-souper-ir-2
  (package
    (name "rust-souper-ir")
    (version "2.1.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "souper-ir" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0i60q84w5k3rd0j3zhsdc5xasrd4wrkamyrs01rik3lq6g71h355"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs
       (("rust-id-arena" ,rust-id-arena-2))))
    (home-page "https://github.com/fitzgen/souper-ir")
    (synopsis "A library for manipulating Souper IR")
    (description "This package provides a library for manipulating Souper IR")
    (license (list license:expat license:asl2.0))))

(define-public rust-regalloc-0.0.31
  (package
    (name "rust-regalloc")
    (version "0.0.31")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "regalloc" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1ic1jdjpk4wh2ms90jj28g172cp0x0zqadydhm97bi31glwpy7sp"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs
       (("rust-log" ,rust-log-0.4) ("rust-rustc-hash" ,rust-rustc-hash-1)
        ("rust-serde" ,rust-serde-1)
        ("rust-smallvec" ,rust-smallvec-1))))
    (home-page "https://github.com/bytecodealliance/regalloc.rs")
    (synopsis "Modular register allocation algorithms")
    (description "Modular register allocation algorithms")
    (license (list license:asl2.0))))

(define-public rust-z3-sys-0.6
  (package
    (name "rust-z3-sys")
    (version "0.6.3")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "z3-sys" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1q0xh5iqar5nvwyww31inz6yj7zrj7yw6h5lzx0kx4ylzfjqp8dg"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs
       (("rust-cmake" ,rust-cmake-0.1))))
    (home-page "https://github.com/prove-rs/z3.rs")
    (synopsis
     "Low-level bindings for the Z3 SMT solver from Microsoft Research")
    (description
     "Low-level bindings for the Z3 SMT solver from Microsoft Research")
    (license license:expat)))

(define-public rust-z3-0.7
  (package
    (name "rust-z3")
    (version "0.7.1")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "z3" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1rcwngqjgf2khwa87dm6xbrjd1jzvi8571x05vgaihn6aacbw5xa"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs
       (("rust-lazy-static" ,rust-lazy-static-1) ("rust-log" ,rust-log-0.4)
        ("rust-num" ,rust-num-0.2)
        ("rust-z3-sys" ,rust-z3-sys-0.6))))
    (home-page "https://github.com/prove-rs/z3.rs")
    (synopsis
     "High-level rust bindings for the Z3 SMT solver from Microsoft Research")
    (description
     "High-level rust bindings for the Z3 SMT solver from Microsoft Research")
    (license license:expat)))

(define-public rust-leb128-0.2
  (package
    (name "rust-leb128")
    (version "0.2.5")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "leb128" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0rxxjdn76sjbrb08s4bi7m4x47zg68f71jzgx8ww7j0cnivjckl8"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t))
    (home-page "https://github.com/gimli-rs/leb128")
    (synopsis
     "Read and write DWARF's \"Little Endian Base 128\" (LEB128) variable length integer encoding.")
    (description
     "Read and write DWARF's \"Little Endian Base 128\" (LEB128) variable length integer
encoding.")
    (license (list license:asl2.0 license:expat))))

(define-public rust-wast-36
  (package
    (name "rust-wast")
    (version "36.0.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "wast" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1i5rbfnnhnz3py1s2dwr5lm5h0n37nd3f2nbl4fmfr53fjipnpcb"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t #:cargo-inputs (("rust-leb128" ,rust-leb128-0.2))))
    (home-page
      "https://github.com/bytecodealliance/wasm-tools/tree/main/crates/wast")
    (synopsis
      "Customizable Rust parsers for the WebAssembly Text formats WAT and WAST
")
    (description
      "Customizable Rust parsers for the WebAssembly Text formats WAT and WAST")
    (license (list license:asl2.0))))

(define-public rust-peepmatic-traits-0.76
  (package
    (name "rust-peepmatic-traits")
    (version "0.76.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "peepmatic-traits" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1kjpb2fbwvxx8p688d66pp2r3jyrgcy8307sqn9lk9j578a16jvm"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t))
    (home-page "")
    (synopsis "Common traits for peepmatic")
    (description "Common traits for peepmatic")
    (license (list license:asl2.0))))

(define-public rust-peepmatic-runtime-0.76
  (package
    (name "rust-peepmatic-runtime")
    (version "0.76.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "peepmatic-runtime" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1yrd64j1fd9qvifz19x92f2g890maa8jfdi51mpzlvv1k5yia2y8"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs
       (("rust-bincode" ,rust-bincode-1) ("rust-bumpalo" ,rust-bumpalo-3)
        ("rust-log" ,rust-log-0.4)
        ("rust-peepmatic-automata" ,rust-peepmatic-automata-0.76)
        ("rust-peepmatic-traits" ,rust-peepmatic-traits-0.76)
        ("rust-serde" ,rust-serde-1)
        ("rust-thiserror" ,rust-thiserror-1)
        ("rust-wast" ,rust-wast-36))))
    (home-page "")
    (synopsis "Runtime support for peepmatic peephole optimizers")
    (description "Runtime support for peepmatic peephole optimizers")
    (license (list license:asl2.0))))

(define-public rust-peepmatic-macro-0.76
  (package
    (name "rust-peepmatic-macro")
    (version "0.76.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "peepmatic-macro" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0vcc8lvabjai1ckx1f236k2jl9acl017f6vb1qkhy58rd9hjcgq3"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs
       (("rust-proc-macro2" ,rust-proc-macro2-1) ("rust-quote" ,rust-quote-1)
        ("rust-syn" ,rust-syn-1))))
    (home-page "")
    (synopsis "Macros for peepmatic")
    (description "Macros for peepmatic")
    (license (list license:asl2.0))))

(define-public rust-peepmatic-automata-0.76
  (package
    (name "rust-peepmatic-automata")
    (version "0.76.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "peepmatic-automata" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0lh3rshpzvlfkh236cxm34r40h40w01j5vb78nmq8z2l7k20mva1"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs
       (("rust-serde" ,rust-serde-1))))
    (home-page "")
    (synopsis "Finite-state transducer automata")
    (description "Finite-state transducer automata")
    (license (list license:asl2.0))))

(define-public rust-peepmatic-0.76
  (package
    (name "rust-peepmatic")
    (version "0.76.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "peepmatic" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "063r631vgab5z8x696c415jqmi9zg30a4vjwiwj776vxy3plhszg"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs
       (("rust-anyhow" ,rust-anyhow-1) ("rust-peepmatic-automata" ,rust-peepmatic-automata-0.76)
        ("rust-peepmatic-macro" ,rust-peepmatic-macro-0.76)
        ("rust-peepmatic-runtime" ,rust-peepmatic-runtime-0.76)
        ("rust-peepmatic-traits" ,rust-peepmatic-traits-0.76)
        ("rust-serde" ,rust-serde-1)
        ("rust-wast" ,rust-wast-36)
        ("rust-z3" ,rust-z3-0.7))))
    (home-page "")
    (synopsis "DSL and compiler for generating peephole optimizers")
    (description "DSL and compiler for generating peephole optimizers")
    (license (list license:asl2.0))))

(define-public rust-gimli-0.25
  (package
    (name "rust-gimli")
    (version "0.25.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "gimli" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1rwgmjp94ivk872xd2s9lfb7wpz6rj1s9bzqnhnkn6l4jw21x87h"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-compiler-builtins" ,rust-compiler-builtins-0.1)
         ("rust-fallible-iterator" ,rust-fallible-iterator-0.2)
         ("rust-indexmap" ,rust-indexmap-1)
         ("rust-rustc-std-workspace-alloc" ,rust-rustc-std-workspace-alloc-1)
         ("rust-rustc-std-workspace-core" ,rust-rustc-std-workspace-core-1)
         ("rust-stable-deref-trait" ,rust-stable-deref-trait-1))))
    (home-page "https://github.com/gimli-rs/gimli")
    (synopsis "A library for reading and writing the DWARF debugging format.")
    (description
      "This package provides a library for reading and writing the DWARF debugging
format.")
    (license (list license:asl2.0 license:expat))))

(define-public rust-cranelift-codegen-shared-0.76
  (package
    (name "rust-cranelift-codegen-shared")
    (version "0.76.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "cranelift-codegen-shared" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1p255cmz93bdysw4f0jj5lbwidb5mr2mn69lwi94ckg0cvzbbawx"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs
       (("rust-serde" ,rust-serde-1))))
    (home-page "https://github.com/bytecodealliance/wasmtime")
    (synopsis
     "For code shared between cranelift-codegen-meta and cranelift-codegen")
    (description
     "For code shared between cranelift-codegen-meta and cranelift-codegen")
    (license (list license:asl2.0))))

(define-public rust-cranelift-codegen-meta-0.76
  (package
    (name "rust-cranelift-codegen-meta")
    (version "0.76.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "cranelift-codegen-meta" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0psm7iih6knh500m68qsbj4lv98n8rv176afppb2qkxbzhignvlp"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs
       (("rust-cranelift-codegen-shared" ,rust-cranelift-codegen-shared-0.76) ("rust-cranelift-entity" ,rust-cranelift-entity-0.76))))
    (home-page "https://github.com/bytecodealliance/wasmtime")
    (synopsis "Metaprogram for cranelift-codegen code generator library")
    (description "Metaprogram for cranelift-codegen code generator library")
    (license (list license:asl2.0))))

(define-public rust-cranelift-entity-0.76
  (package
    (name "rust-cranelift-entity")
    (version "0.76.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "cranelift-entity" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "16a7979nnd07swbdvqv407r6dgw0xvxa9jpg174933jb9lz76a9k"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs
       (("rust-serde" ,rust-serde-1))))
    (home-page "https://github.com/bytecodealliance/wasmtime")
    (synopsis "Data structures using entity references as mapping keys")
    (description "Data structures using entity references as mapping keys")
    (license (list license:asl2.0))))

(define-public rust-cranelift-bforest-0.76
  (package
    (name "rust-cranelift-bforest")
    (version "0.76.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "cranelift-bforest" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0cvk0qwy6n5fwiq9nb39wp2323kf9z7qab7saizj81bmjrkylsvy"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs
       (("rust-cranelift-entity" ,rust-cranelift-entity-0.76))))
    (home-page "https://github.com/bytecodealliance/wasmtime")
    (synopsis "A forest of B+-trees")
    (description "This package provides a forest of B+-trees")
    (license (list license:asl2.0))))

(define-public rust-cranelift-codegen-0.76
  (package
    (name "rust-cranelift-codegen")
    (version "0.76.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "cranelift-codegen" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0x0xkgizj2g8sjjma4rb5bsravk7i2my6ag4v9dxsavms8sl06a8"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs
       (("rust-bincode" ,rust-bincode-1) ("rust-cranelift-bforest" ,rust-cranelift-bforest-0.76)
        ("rust-cranelift-codegen-meta" ,rust-cranelift-codegen-meta-0.76)
        ("rust-cranelift-codegen-shared" ,rust-cranelift-codegen-shared-0.76)
        ("rust-cranelift-entity" ,rust-cranelift-entity-0.76)
        ("rust-gimli" ,rust-gimli-0.25)
        ("rust-hashbrown" ,rust-hashbrown-0.9)
        ("rust-log" ,rust-log-0.4)
        ("rust-peepmatic" ,rust-peepmatic-0.76)
        ("rust-peepmatic-runtime" ,rust-peepmatic-runtime-0.76)
        ("rust-peepmatic-traits" ,rust-peepmatic-traits-0.76)
        ("rust-regalloc" ,rust-regalloc-0.0.31)
        ("rust-serde" ,rust-serde-1)
        ("rust-smallvec" ,rust-smallvec-1)
        ("rust-souper-ir" ,rust-souper-ir-2)
        ("rust-target-lexicon" ,rust-target-lexicon-0.12)
        ("rust-wast" ,rust-wast-36))))
    (home-page "https://github.com/bytecodealliance/wasmtime")
    (synopsis "Low-level code generator library")
    (description "Low-level code generator library")
    (license (list license:asl2.0))))

(define-public rust-wasmer-compiler-cranelift-2
  (package
    (name "rust-wasmer-compiler-cranelift")
    (version "2.1.1")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "wasmer-compiler-cranelift" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1wlkcyqmlaqw0x5iij5g9776d2wqrpwn0zqjs8l12kiv68z1ws89"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs
       (("rust-cranelift-codegen" ,rust-cranelift-codegen-0.76) ("rust-cranelift-entity" ,rust-cranelift-entity-0.76)
        ("rust-cranelift-frontend" ,rust-cranelift-frontend-0.76)
        ("rust-gimli" ,rust-gimli-0.25)
        ("rust-hashbrown" ,rust-hashbrown-0.11)
        ("rust-loupe" ,rust-loupe-0.1)
        ("rust-more-asserts" ,rust-more-asserts-0.2)
        ("rust-rayon" ,rust-rayon-1)
        ("rust-smallvec" ,rust-smallvec-1)
        ("rust-target-lexicon" ,rust-target-lexicon-0.12)
        ("rust-tracing" ,rust-tracing-0.1)
        ("rust-wasmer-compiler" ,rust-wasmer-compiler-2)
        ("rust-wasmer-types" ,rust-wasmer-types-2)
        ("rust-wasmer-vm" ,rust-wasmer-vm-2))))
    (home-page "https://github.com/wasmerio/wasmer")
    (synopsis "Cranelift compiler for Wasmer WebAssembly runtime")
    (description "Cranelift compiler for Wasmer WebAssembly runtime")
    (license (list license:expat license:asl2.0))))

(define-public rust-wasmparser-0.78
  (package
    (name "rust-wasmparser")
    (version "0.78.2")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "wasmparser" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0rgx29yg656rrwras0k0blqy8k414bxfbf7abh2qpkz5g164s52j"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t))
    (home-page
     "https://github.com/bytecodealliance/wasm-tools/tree/main/crates/wasmparser")
    (synopsis
     "A simple event-driven library for parsing WebAssembly binary files.
")
    (description
     "This package provides a simple event-driven library for parsing WebAssembly
binary files.")
    (license (list license:asl2.0))))

(define-public rust-region-3
  (package
    (name "rust-region")
    (version "3.0.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "region" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0bji1p0c9abzh78ps5hs0ygg9pxkg7gjspll43lxr14q6v18kqbn"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs
       (("rust-bitflags" ,rust-bitflags-1) ("rust-libc" ,rust-libc-0.2)
        ("rust-mach" ,rust-mach-0.3)
        ("rust-winapi" ,rust-winapi-0.3))))
    (home-page "https://github.com/darfink/region-rs")
    (synopsis "Cross-platform virtual memory API")
    (description "Cross-platform virtual memory API")
    (license license:expat)))

(define-public rust-wasmer-vm-2
  (package
    (name "rust-wasmer-vm")
    (version "2.1.1")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "wasmer-vm" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0mh11v7syrqv3vqcg7r300gmk0j72s5bja026j0ry3d7pd79d3yc"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs
       (("rust-backtrace" ,rust-backtrace-0.3) ("rust-cc" ,rust-cc-1)
        ("rust-cfg-if" ,rust-cfg-if-1)
        ("rust-indexmap" ,rust-indexmap-1)
        ("rust-libc" ,rust-libc-0.2)
        ("rust-loupe" ,rust-loupe-0.1)
        ("rust-memoffset" ,rust-memoffset-0.6)
        ("rust-more-asserts" ,rust-more-asserts-0.2)
        ("rust-region" ,rust-region-3)
        ("rust-rkyv" ,rust-rkyv-0.7)
        ("rust-serde" ,rust-serde-1)
        ("rust-thiserror" ,rust-thiserror-1)
        ("rust-wasmer-types" ,rust-wasmer-types-2)
        ("rust-winapi" ,rust-winapi-0.3))))
    (home-page "https://github.com/wasmerio/wasmer")
    (synopsis "Runtime library support for Wasmer")
    (description "Runtime library support for Wasmer")
    (license (list license:expat license:asl2.0))))

(define-public rust-wasmer-types-2
  (package
    (name "rust-wasmer-types")
    (version "2.1.1")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "wasmer-types" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1bgf9855zswzx0xsi2vyy1h846c6brysmclhrbn782nsfw0iqkj3"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs
       (("rust-indexmap" ,rust-indexmap-1) ("rust-loupe" ,rust-loupe-0.1)
        ("rust-rkyv" ,rust-rkyv-0.7)
        ("rust-serde" ,rust-serde-1)
        ("rust-thiserror" ,rust-thiserror-1))))
    (home-page "https://github.com/wasmerio/wasmer")
    (synopsis "Wasmer Common Types")
    (description "Wasmer Common Types")
    (license (list license:expat license:asl2.0))))

(define-public rust-tinyvec-1
  (package
    (name "rust-tinyvec")
    (version "1.5.1")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "tinyvec" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1lnqnva56673r0d40586rkzyl2qqcz19wm29q8h5a95n89d1s71c"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs
       (("rust-arbitrary" ,rust-arbitrary-1) ("rust-serde" ,rust-serde-1)
        ("rust-tinyvec-macros" ,rust-tinyvec-macros-0.1))))
    (home-page "https://github.com/Lokathor/tinyvec")
    (synopsis "`tinyvec` provides 100% safe vec-like data structures.")
    (description "`tinyvec` provides 100% safe vec-like data structures.")
    (license (list license:zlib license:asl2.0 license:expat))))

(define-public rust-smallvec-1
  (package
    (name "rust-smallvec")
    (version "1.7.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "smallvec" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "02gka690j8l12gl50ifg7axqnx1m6v6d1byaq0wl3fx66p3vdjhy"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs
       (("rust-serde" ,rust-serde-1))))
    (home-page "https://github.com/servo/rust-smallvec")
    (synopsis
     "'Small vector' optimization: store up to a small number of items on the stack")
    (description
     "'Small vector' optimization: store up to a small number of items on the stack")
    (license (list license:expat license:asl2.0))))

(define-public rust-rkyv-derive-0.7
  (package
    (name "rust-rkyv-derive")
    (version "0.7.29")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "rkyv_derive" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "18bmhj9pnr1nvb43dip3lc9b3vr1gvck4nybwv726jz8s1yl97bi"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs
       (("rust-proc-macro2" ,rust-proc-macro2-1) ("rust-quote" ,rust-quote-1)
        ("rust-syn" ,rust-syn-1))))
    (home-page "https://github.com/rkyv/rkyv")
    (synopsis "Derive macro for rkyv")
    (description "Derive macro for rkyv")
    (license license:expat)))

(define-public rust-rend-0.3
  (package
    (name "rust-rend")
    (version "0.3.6")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "rend" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "15fz3rw8c74586kxl6dcdn4s864ph884wfpg9shgnbrnnss69bvr"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs
       (("rust-bytecheck" ,rust-bytecheck-0.6))))
    (home-page "https://github.com/djkoloski/rend")
    (synopsis "Endian-aware primitives for Rust")
    (description "Endian-aware primitives for Rust")
    (license license:expat)))

(define-public rust-bytecheck-derive-0.6
  (package
    (name "rust-bytecheck-derive")
    (version "0.6.7")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "bytecheck_derive" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0006ycn72g788hzfy5zd7gl3hxhqi5dj0q7plrjydnimq693nasa"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs
       (("rust-proc-macro2" ,rust-proc-macro2-1) ("rust-quote" ,rust-quote-1)
        ("rust-syn" ,rust-syn-1))))
    (home-page "https://github.com/djkoloski/bytecheck")
    (synopsis "Derive macro for bytecheck")
    (description "Derive macro for bytecheck")
    (license license:expat)))

(define-public rust-bytecheck-0.6
  (package
    (name "rust-bytecheck")
    (version "0.6.7")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "bytecheck" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1gjasf0viyrn1p01fb77n3n8ga8mjif6wvixgk5n98nd67m8jj1i"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs
       (("rust-bytecheck-derive" ,rust-bytecheck-derive-0.6) ("rust-ptr-meta" ,rust-ptr-meta-0.1)
        ("rust-simdutf8" ,rust-simdutf8-0.1)
        ("rust-uuid" ,rust-uuid-0.8))))
    (home-page "https://github.com/djkoloski/bytecheck")
    (synopsis "Derive macro for bytecheck")
    (description "Derive macro for bytecheck")
    (license license:expat)))

(define-public rust-rkyv-0.7
  (package
    (name "rust-rkyv")
    (version "0.7.29")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "rkyv" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "15lgvpdp15br2wdzm6banqkf903v7k8aq7cnjhnsw2y6vzjpv8s9"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs
       (("rust-bytecheck" ,rust-bytecheck-0.6) ("rust-hashbrown" ,rust-hashbrown-0.11)
        ("rust-indexmap" ,rust-indexmap-1)
        ("rust-ptr-meta" ,rust-ptr-meta-0.1)
        ("rust-rend" ,rust-rend-0.3)
        ("rust-rkyv-derive" ,rust-rkyv-derive-0.7)
        ("rust-seahash" ,rust-seahash-4)
        ("rust-smallvec" ,rust-smallvec-1)
        ("rust-tinyvec" ,rust-tinyvec-1)
        ("rust-uuid" ,rust-uuid-0.8))))
    (home-page "https://github.com/rkyv/rkyv")
    (synopsis "Zero-copy deserialization framework for Rust")
    (description "Zero-copy deserialization framework for Rust")
    (license license:expat)))

(define-public rust-darling-macro-0.13
  (package
    (name "rust-darling-macro")
    (version "0.13.1")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "darling_macro" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0jzljnd0y7idi5lb7lhvymh3nkhaf32ksx0d38hv7zjjfcxipi3j"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs
       (("rust-darling-core" ,rust-darling-core-0.13) ("rust-quote" ,rust-quote-1)
        ("rust-syn" ,rust-syn-1))))
    (home-page "https://github.com/TedDriggs/darling")
    (synopsis
     "Internal support for a proc-macro library for reading attributes into structs when
implementing custom derives. Use https://crates.io/crates/darling in your code.
")
    (description
     "Internal support for a proc-macro library for reading attributes into structs
when implementing custom derives.  Use https://crates.io/crates/darling in your
code.")
    (license license:expat)))

(define-public rust-fnv-1
  (package
    (name "rust-fnv")
    (version "1.0.7")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "fnv" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1hc2mcqha06aibcaza94vbi81j6pr9a1bbxrxjfhc91zin8yr7iz"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t))
    (home-page "https://github.com/servo/rust-fnv")
    (synopsis "FowlerâNollâVo hash function")
    (description "FowlerâNollâVo hash function")
    (license (list license:asl2.0 license:expat))))

(define-public rust-darling-core-0.13
  (package
    (name "rust-darling-core")
    (version "0.13.1")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "darling_core" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0933k2avb6xk9j4ryr0bvp3pww5j8i0nrqvsnkgd3vic3lj0yd3s"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs
       (("rust-fnv" ,rust-fnv-1) ("rust-ident-case" ,rust-ident-case-1)
        ("rust-proc-macro2" ,rust-proc-macro2-1)
        ("rust-quote" ,rust-quote-1)
        ("rust-strsim" ,rust-strsim-0.10)
        ("rust-syn" ,rust-syn-1))))
    (home-page "https://github.com/TedDriggs/darling")
    (synopsis
     "Helper crate for proc-macro library for reading attributes into structs when
implementing custom derives. Use https://crates.io/crates/darling in your code.
")
    (description
     "Helper crate for proc-macro library for reading attributes into structs when
implementing custom derives.  Use https://crates.io/crates/darling in your code.")
    (license license:expat)))

(define-public rust-darling-0.13
  (package
    (name "rust-darling")
    (version "0.13.1")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "darling" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1x7pgzjswg28798zd5gk5g6nifhcaqq0apqmclydi39zd2w21myh"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs
       (("rust-darling-core" ,rust-darling-core-0.13) ("rust-darling-macro" ,rust-darling-macro-0.13))))
    (home-page "https://github.com/TedDriggs/darling")
    (synopsis "A proc-macro library for reading attributes into structs when
implementing custom derives.
")
    (description
     "This package provides a proc-macro library for reading attributes into structs
when implementing custom derives.")
    (license license:expat)))

(define-public rust-enumset-derive-0.5
  (package
    (name "rust-enumset-derive")
    (version "0.5.5")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "enumset_derive" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1m7ccz9fcxsx3s1drj77psk62xfgjia0hp9lal3qhpb5ls514lb4"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs
       (("rust-darling" ,rust-darling-0.13) ("rust-proc-macro2" ,rust-proc-macro2-1)
        ("rust-quote" ,rust-quote-1)
        ("rust-syn" ,rust-syn-1))))
    (home-page "https://github.com/Lymia/enumset")
    (synopsis "An internal helper crate for enumset. Not public API.")
    (description "An internal helper crate for enumset.  Not public API.")
    (license (list license:expat license:asl2.0))))

(define-public rust-enumset-1
  (package
    (name "rust-enumset")
    (version "1.0.8")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "enumset" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0b2vdggbsnvvw09czxaazbqcpa378fycf7fs3afz5dbgkb0x45k2"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs
       (("rust-enumset-derive" ,rust-enumset-derive-0.5) ("rust-serde" ,rust-serde-1))))
    (home-page "https://github.com/Lymia/enumset")
    (synopsis "A library for creating compact sets of enums.")
    (description
     "This package provides a library for creating compact sets of enums.")
    (license (list license:expat license:asl2.0))))

(define-public rust-wasmer-compiler-2
  (package
    (name "rust-wasmer-compiler")
    (version "2.1.1")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "wasmer-compiler" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0iz4kwfl53xak915j3g05v5xcxk9871494ijpn85yb3pi72iric8"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs
       (("rust-enumset" ,rust-enumset-1) ("rust-hashbrown" ,rust-hashbrown-0.11)
        ("rust-loupe" ,rust-loupe-0.1)
        ("rust-rkyv" ,rust-rkyv-0.7)
        ("rust-serde" ,rust-serde-1)
        ("rust-serde-bytes" ,rust-serde-bytes-0.11)
        ("rust-smallvec" ,rust-smallvec-1)
        ("rust-target-lexicon" ,rust-target-lexicon-0.12)
        ("rust-thiserror" ,rust-thiserror-1)
        ("rust-wasmer-types" ,rust-wasmer-types-2)
        ("rust-wasmer-vm" ,rust-wasmer-vm-2)
        ("rust-wasmparser" ,rust-wasmparser-0.78))))
    (home-page "https://github.com/wasmerio/wasmer")
    (synopsis "Base compiler abstraction for Wasmer WebAssembly runtime")
    (description "Base compiler abstraction for Wasmer WebAssembly runtime")
    (license (list license:expat license:asl2.0))))

(define-public rust-more-asserts-0.2
  (package
    (name "rust-more-asserts")
    (version "0.2.2")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "more-asserts" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "12b3fypg2sr4qmxy6wiyx6k9sdg573f5ij98cdmbrg00whnyqhvq"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t))
    (home-page "https://github.com/thomcc/rust-more-asserts")
    (synopsis
     "Small library providing additional assert_* and debug_assert_* macros.")
    (description
     "Small library providing additional assert_* and debug_assert_* macros.")
    (license license:cc0)))

(define-public rust-loupe-derive-0.1
  (package
    (name "rust-loupe-derive")
    (version "0.1.3")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "loupe-derive" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0ljrdhp4yk87xnbdq53f679yzm7yghanxq4s5sgjfs3i6f4gryy0"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs
       (("rust-quote" ,rust-quote-1) ("rust-syn" ,rust-syn-1))))
    (home-page "https://github.com/wasmerio/loupe")
    (synopsis "Profiling tool for Rust, see the `loupe` crate")
    (description "Profiling tool for Rust, see the `loupe` crate")
    (license license:expat)))

(define-public rust-loupe-0.1
  (package
    (name "rust-loupe")
    (version "0.1.3")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "loupe" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0kb3bc62xh20i405afr8bf65m6gznbp0fhxrfrg5pqaglkgp4slv"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs
       (("rust-indexmap" ,rust-indexmap-1) ("rust-loupe-derive" ,rust-loupe-derive-0.1)
        ("rust-rustversion" ,rust-rustversion-1))))
    (home-page "https://github.com/wasmerio/loupe")
    (synopsis "Profiling tool for Rust")
    (description "Profiling tool for Rust")
    (license license:expat)))

(define-public rust-wasmer-2
  (package
    (name "rust-wasmer")
    (version "2.1.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "wasmer" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0pn20bzkjfcnvgh1wmyrysq9fhmy77n2iqcg5gc175i0pak97sh3"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs
       (("rust-cfg-if" ,rust-cfg-if-1) ("rust-hashbrown" ,rust-hashbrown-0.11)
        ("rust-indexmap" ,rust-indexmap-1)
        ("rust-js-sys" ,rust-js-sys-0.3)
        ("rust-loupe" ,rust-loupe-0.1)
        ("rust-more-asserts" ,rust-more-asserts-0.2)
        ("rust-target-lexicon" ,rust-target-lexicon-0.12)
        ("rust-thiserror" ,rust-thiserror-1)
        ("rust-wasm-bindgen" ,rust-wasm-bindgen-0.2)
        ("rust-wasmer-compiler" ,rust-wasmer-compiler-2)
        ("rust-wasmer-compiler-cranelift" ,rust-wasmer-compiler-cranelift-2)
        ("rust-wasmer-compiler-llvm" ,rust-wasmer-compiler-llvm-2)
        ("rust-wasmer-compiler-singlepass" ,rust-wasmer-compiler-singlepass-2)
        ("rust-wasmer-derive" ,rust-wasmer-derive-2)
        ("rust-wasmer-engine" ,rust-wasmer-engine-2)
        ("rust-wasmer-engine-dylib" ,rust-wasmer-engine-dylib-2)
        ("rust-wasmer-engine-universal" ,rust-wasmer-engine-universal-2)
        ("rust-wasmer-types" ,rust-wasmer-types-2)
        ("rust-wasmer-vm" ,rust-wasmer-vm-2)
        ("rust-wasmparser" ,rust-wasmparser-0.78)
        ("rust-wat" ,rust-wat-1)
        ("rust-winapi" ,rust-winapi-0.3))))
    (home-page "https://github.com/wasmerio/wasmer")
    (synopsis "High-performance WebAssembly runtime")
    (description "High-performance WebAssembly runtime")
    (license license:expat)))

(define-public rust-crypto-common-0.1
  (package
    (name "rust-crypto-common")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "crypto-common" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1l4q4ync13i056vjc775v0za8qh987da7yvrjj25q909cd9nngb8"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs
       (("rust-generic-array" ,rust-generic-array-0.14) ("rust-rand-core" ,rust-rand-core-0.6))))
    (home-page "https://github.com/RustCrypto/traits")
    (synopsis "Common cryptographic traits")
    (description "Common cryptographic traits")
    (license (list license:expat license:asl2.0))))

(define-public rust-block-buffer-0.10
  (package
    (name "rust-block-buffer")
    (version "0.10.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "block-buffer" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "15cbh9jbcfcbbi863dlmamjka2f8l55ld915vr0b0xlf0l16mlzi"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs
       (("rust-generic-array" ,rust-generic-array-0.14))))
    (home-page "https://github.com/RustCrypto/utils")
    (synopsis "Buffer type for block processing of data")
    (description "Buffer type for block processing of data")
    (license (list license:expat license:asl2.0))))

(define-public rust-digest-0.10
  (package
    (name "rust-digest")
    (version "0.10.1")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "digest" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "16wpqnwlzx0lbnwccwikns7dq8fblcc6kma2l7xz8anlh5hdd5xn"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs
       (("rust-blobby" ,rust-blobby-0.3) ("rust-block-buffer" ,rust-block-buffer-0.10)
        ("rust-crypto-common" ,rust-crypto-common-0.1)
        ("rust-generic-array" ,rust-generic-array-0.14)
        ("rust-subtle" ,rust-subtle-2))))
    (home-page "https://github.com/RustCrypto/traits")
    (synopsis "Traits for cryptographic hash functions")
    (description "Traits for cryptographic hash functions")
    (license (list license:expat license:asl2.0))))

(define-public rust-twox-hash-1
  (package
    (name "rust-twox-hash")
    (version "1.6.2")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "twox-hash" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1866mb05iimdb2vmbn2wc5fifcajmn6dkm5qah1r9zi495p3xrsf"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs
       (("rust-cfg-if" ,rust-cfg-if-1) ("rust-digest" ,rust-digest-0.9)
        ("rust-digest" ,rust-digest-0.10)
        ("rust-digest" ,rust-digest-0.8)
        ("rust-rand" ,rust-rand-0.8)
        ("rust-serde" ,rust-serde-1)
        ("rust-static-assertions" ,rust-static-assertions-1))))
    (home-page "https://github.com/shepmaster/twox-hash")
    (synopsis "A Rust implementation of the XXHash and XXH3 algorithms")
    (description
     "This package provides a Rust implementation of the XXHash and XXH3 algorithms")
    (license license:expat)))

(define-public rust-similar-2
  (package
    (name "rust-similar")
    (version "2.1.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "similar" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1lw33na01r35h09s47jqhjgz3m29wapl20f6ybsla5d1cfgrf91f"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs
       (("rust-bstr" ,rust-bstr-0.2) ("rust-serde" ,rust-serde-1)
        ("rust-unicode-segmentation" ,rust-unicode-segmentation-1))))
    (home-page "https://github.com/mitsuhiko/similar")
    (synopsis "A diff library for Rust")
    (description "This package provides a diff library for Rust")
    (license license:asl2.0)))

(define-public rust-jsonc-parser-0.17
  (package
    (name "rust-jsonc-parser")
    (version "0.17.1")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "jsonc-parser" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0zq5xk0zsxygripb913lx72ivbhb70bz39s3iga6k27w1frmbsrc"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs
       (("rust-serde-json" ,rust-serde-json-1))))
    (home-page "https://github.com/dprint/jsonc-parser")
    (synopsis "JSONC parser.")
    (description "JSONC parser.")
    (license license:expat)))

(define-public rust-dunce-1
  (package
    (name "rust-dunce")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "dunce" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0hbmlqjwj8q0vl3qsz72hlphszfb80jr9r205bypfmfgf7140d25"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t))
    (home-page "https://lib.rs/crates/dunce")
    (synopsis
     "Normalize Windows paths to the most compatible format, avoiding UNC where possible")
    (description
     "Normalize Windows paths to the most compatible format, avoiding UNC where
possible")
    (license license:cc0)))

(define-public rust-bumpalo-3
  (package
    (name "rust-bumpalo")
    (version "3.9.1")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "bumpalo" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1688dv6s0cbj72p9lmll8a02a85dzxvdw2is7pji490zmd35m954"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t))
    (home-page "https://github.com/fitzgen/bumpalo")
    (synopsis "A fast bump allocation arena for Rust.")
    (description
     "This package provides a fast bump allocation arena for Rust.")
    (license (list license:expat license:asl2.0))))

(define-public rust-dprint-core-0.49
  (package
    (name "rust-dprint-core")
    (version "0.49.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "dprint-core" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1gxg6x1vinyvc2haya0857gr6p61h3zcfvyg9zxfhg8pk2csq4w1"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs
       (("rust-anyhow" ,rust-anyhow-1) ("rust-bumpalo" ,rust-bumpalo-3)
        ("rust-libc" ,rust-libc-0.2)
        ("rust-rustc-hash" ,rust-rustc-hash-1)
        ("rust-serde" ,rust-serde-1)
        ("rust-serde-json" ,rust-serde-json-1)
        ("rust-winapi" ,rust-winapi-0.3))))
    (home-page "https://github.com/dprint/dprint/tree/main/crates/core")
    (synopsis "Core library for dprint.")
    (description "Core library for dprint.")
    (license license:expat)))

(define-public rust-webpki-roots-0.22
  (package
    (name "rust-webpki-roots")
    (version "0.22.2")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "webpki-roots" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0jbll0ys9jakrvv3l1i216bbgj7jbxr7ad2dihw28xcm7s8fnb2m"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs
       (("rust-webpki" ,rust-webpki-0.22))))
    (home-page "https://github.com/rustls/webpki-roots")
    (synopsis "Mozilla's CA root certificates for use with webpki")
    (description "Mozilla's CA root certificates for use with webpki")
    (license license:mpl2.0)))

(define-public rust-rustls-pemfile-0.2
  (package
    (name "rust-rustls-pemfile")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "rustls-pemfile" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1jfi97lqnnnnxhmfy6ygrsp0x70m8wsdpaw45svvz1qc6vmymssy"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs
       (("rust-base64" ,rust-base64-0.13))))
    (home-page "https://github.com/rustls/pemfile")
    (synopsis "Basic .pem file parser for keys and certificates")
    (description "Basic .pem file parser for keys and certificates")
    (license (list license:asl2.0 license:isc license:expat))))

(define-public rust-rustls-native-certs-0.6
  (package
    (name "rust-rustls-native-certs")
    (version "0.6.1")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "rustls-native-certs" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0hq9h3kri19kv00gvbq61h21rarqadxh6y98wj0c2gvxlbgypaaw"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs
       (("rust-openssl-probe" ,rust-openssl-probe-0.1) ("rust-rustls-pemfile" ,rust-rustls-pemfile-0.2)
        ("rust-schannel" ,rust-schannel-0.1)
        ("rust-security-framework" ,rust-security-framework-2))))
    (home-page "https://github.com/ctz/rustls-native-certs")
    (synopsis
     "rustls-native-certs allows rustls to use the platform native certificate store")
    (description
     "rustls-native-certs allows rustls to use the platform native certificate store")
    (license (list license:asl2.0 license:isc license:expat))))

(define-public rust-webpki-0.22
  (package
    (name "rust-webpki")
    (version "0.22.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "webpki" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1gd1gxip5kgdwmrvhj5gjxij2mgg2mavq1ych4q1h272ja0xg5gh"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs
       (("rust-ring" ,rust-ring-0.16) ("rust-untrusted" ,rust-untrusted-0.7))))
    (home-page "https://github.com/briansmith/webpki")
    (synopsis "Web PKI X.509 Certificate Verification.")
    (description "Web PKI X.509 Certificate Verification.")
    (license license:expat)))

(define-public rust-sct-0.7
  (package
    (name "rust-sct")
    (version "0.7.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "sct" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "193w3dg2pcn7138ab4c586pl76nkryn4h6wqlwvqj5gqr6vwsgfm"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs
       (("rust-ring" ,rust-ring-0.16) ("rust-untrusted" ,rust-untrusted-0.7))))
    (home-page "https://github.com/ctz/sct.rs")
    (synopsis "Certificate transparency SCT verification library")
    (description "Certificate transparency SCT verification library")
    (license (list license:asl2.0 license:isc license:expat))))

(define-public rust-rustls-0.20
  (package
    (name "rust-rustls")
    (version "0.20.2")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "rustls" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "111z24faq1i1z3gbznfgl7qp3in2fx1y1adijjsl1q7kj0i5wznk"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs
       (("rust-log" ,rust-log-0.4) ("rust-ring" ,rust-ring-0.16)
        ("rust-sct" ,rust-sct-0.7)
        ("rust-webpki" ,rust-webpki-0.22))))
    (home-page "https://github.com/rustls/rustls")
    (synopsis "Rustls is a modern TLS library written in Rust.")
    (description "Rustls is a modern TLS library written in Rust.")
    (license (list license:asl2.0 license:isc license:expat))))

(define-public rust-cloudflare-zlib-sys-0.3
  (package
    (name "rust-cloudflare-zlib-sys")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "cloudflare-zlib-sys" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0vyd0l0vprvh9hc1ikllybrk8xc0lz9f509d2xgxgrpyxp8vch10"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs
       (("rust-cc" ,rust-cc-1))))
    (home-page "https://github.com/cloudflare/zlib")
    (synopsis "Cloudflare fork of zlib with massive performance improvements")
    (description
     "Cloudflare fork of zlib with massive performance improvements")
    (license (list license:expat license:zlib license:asl2.0 license:zlib))))

(define-public rust-flate2-1
  (package
    (name "rust-flate2")
    (version "1.0.22")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "flate2" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0gy5iwfqylb2f0dd9n7r8w2xwbzlrqlsairvyj2w9jf1jzl8hs8y"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs
       (("rust-cfg-if" ,rust-cfg-if-1) ("rust-cloudflare-zlib-sys" ,rust-cloudflare-zlib-sys-0.3)
        ("rust-crc32fast" ,rust-crc32fast-1)
        ("rust-futures" ,rust-futures-0.1)
        ("rust-libc" ,rust-libc-0.2)
        ("rust-libz-sys" ,rust-libz-sys-1)
        ("rust-miniz-sys" ,rust-miniz-sys-0.1)
        ("rust-miniz-oxide" ,rust-miniz-oxide-0.4)
        ("rust-tokio-io" ,rust-tokio-io-0.1))))
    (home-page "https://github.com/rust-lang/flate2-rs")
    (synopsis
     "DEFLATE compression and decompression exposed as Read/BufRead/Write streams.
Supports miniz_oxide, miniz.c, and multiple zlib implementations. Supports
zlib, gzip, and raw deflate streams.
")
    (description
     "DEFLATE compression and decompression exposed as Read/BufRead/Write streams.
Supports miniz_oxide, miniz.c, and multiple zlib implementations.  Supports
zlib, gzip, and raw deflate streams.")
    (license (list license:expat license:asl2.0))))

(define-public rust-time-macros-0.1
  (package
    (name "rust-time-macros")
    (version "0.1.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "time-macros" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1wg24yxpxcfmim6dgblrf8p321m7cyxpdivzvp8bcb7i4rp9qzlm"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-proc-macro-hack" ,rust-proc-macro-hack-0.5)
         ("rust-time-macros-impl" ,rust-time-macros-impl-0.1))))
    (home-page "https://github.com/time-rs/time")
    (synopsis "Procedural macros for the time crate.")
    (description "Procedural macros for the time crate.")
    (license (list license:expat license:asl2.0))))

(define-public rust-standback-0.2
  (package
    (name "rust-standback")
    (version "0.2.17")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "standback" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1zr8zy3kzryaggz3k0j4135m3zbd31pyqmja8cyj8yp07mpzn4z1"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs
       (("rust-version-check" ,rust-version-check-0.9))))
    (home-page "https://github.com/jhpratt/standback")
    (synopsis "New standard library, old compiler.")
    (description "New standard library, old compiler.")
    (license (list license:expat license:asl2.0))))

(define-public rust-time-0.2
  (package
    (name "rust-time")
    (version "0.2.27")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "time" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0hm209d078jfgxzjhi5xqim64q31rlj1h70zz57qbmpbirzsjlj7"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-const-fn" ,rust-const-fn-0.4)
         ("rust-libc" ,rust-libc-0.2)
         ("rust-rand" ,rust-rand-0.7)
         ("rust-serde" ,rust-serde-1)
         ("rust-standback" ,rust-standback-0.2)
         ("rust-stdweb" ,rust-stdweb-0.4)
         ("rust-time-macros" ,rust-time-macros-0.1)
         ("rust-version-check" ,rust-version-check-0.9)
         ("rust-winapi" ,rust-winapi-0.3))))
    (home-page "https://time-rs.github.io")
    (synopsis
      "Date and time library. Fully interoperable with the standard library. Mostly compatible with #![no_std].")
    (description
      "Date and time library.  Fully interoperable with the standard library.  Mostly
compatible with #![no_std].")
    (license (list license:expat license:asl2.0))))

(define-public rust-unicode-normalization-0.1
  (package
    (name "rust-unicode-normalization")
    (version "0.1.19")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "unicode-normalization" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1yabhmg8zlcksda3ajly9hpbzqgbhknxwch8dwkfkaa1569r0ifm"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs
       (("rust-tinyvec" ,rust-tinyvec-1))))
    (home-page "https://github.com/unicode-rs/unicode-normalization")
    (synopsis "This crate provides functions for normalization of
Unicode strings, including Canonical and Compatible
Decomposition and Recomposition, as described in
Unicode Standard Annex #15.
")
    (description
     "This crate provides functions for normalization of Unicode strings, including
Canonical and Compatible Decomposition and Recomposition, as described in
Unicode Standard Annex #15.")
    (license (list license:expat license:asl2.0))))

(define-public rust-idna-0.2
  (package
    (name "rust-idna")
    (version "0.2.3")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "idna" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1y7ca2w5qp9msgl57n03zqp78gq1bk2crqzg6kv7a542mdphm2j1"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs
       (("rust-matches" ,rust-matches-0.1) ("rust-unicode-bidi" ,rust-unicode-bidi-0.3)
        ("rust-unicode-normalization" ,rust-unicode-normalization-0.1))))
    (home-page "https://github.com/servo/rust-url/")
    (synopsis
     "IDNA (Internationalizing Domain Names in Applications) and Punycode.")
    (description
     "IDNA (Internationalizing Domain Names in Applications) and Punycode.")
    (license (list license:expat license:asl2.0))))

(define-public rust-cookie-store-0.15
  (package
    (name "rust-cookie-store")
    (version "0.15.1")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "cookie_store" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0z0navy9k0ivrdvz492q8c4nhd3iv5l77hwfppskdp1j15607xxk"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs
       (("rust-cookie" ,rust-cookie-0.15) ("rust-idna" ,rust-idna-0.2)
        ("rust-indexmap" ,rust-indexmap-1)
        ("rust-log" ,rust-log-0.4)
        ("rust-publicsuffix" ,rust-publicsuffix-2)
        ("rust-serde" ,rust-serde-1)
        ("rust-serde-json" ,rust-serde-json-1)
        ("rust-time" ,rust-time-0.2)
        ("rust-url" ,rust-url-2))))
    (home-page "https://github.com/pfernie/cookie_store")
    (synopsis "Implementation of Cookie storage and retrieval")
    (description "Implementation of Cookie storage and retrieval")
    (license (list license:expat license:asl2.0))))

(define-public rust-subtle-2
  (package
    (name "rust-subtle")
    (version "2.4.1")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "subtle" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "00b6jzh9gzb0h9n25g06nqr90z3xzqppfhhb260s1hjhh4pg7pkb"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t))
    (home-page "https://dalek.rs/")
    (synopsis
     "Pure-Rust traits and utilities for constant-time cryptographic implementations.")
    (description
     "Pure-Rust traits and utilities for constant-time cryptographic implementations.")
    (license license:bsd-3)))

(define-public rust-hkdf-0.10
  (package
    (name "rust-hkdf")
    (version "0.10.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "hkdf" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0kwn3scjvv2x8zc6nz3wrnzxp9shpsdxnjqiyv2r65r3kiijzasi"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs
       (("rust-digest" ,rust-digest-0.9) ("rust-hmac" ,rust-hmac-0.10))))
    (home-page "https://github.com/RustCrypto/KDFs/")
    (synopsis "HMAC-based Extract-and-Expand Key Derivation Function (HKDF)")
    (description
     "HMAC-based Extract-and-Expand Key Derivation Function (HKDF)")
    (license (list license:expat license:asl2.0))))

(define-public rust-aes-gcm-0.8
  (package
    (name "rust-aes-gcm")
    (version "0.8.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "aes-gcm" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1nl8iwlh209y1vj9n2lm1a70i69clvg2z6x69bi4dgdrpgxbay2j"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs
       (("rust-aead" ,rust-aead-0.3) ("rust-aes" ,rust-aes-0.6)
        ("rust-cipher" ,rust-cipher-0.2)
        ("rust-ctr" ,rust-ctr-0.6)
        ("rust-ghash" ,rust-ghash-0.3)
        ("rust-subtle" ,rust-subtle-2)
        ("rust-zeroize" ,rust-zeroize-1))))
    (home-page "https://github.com/RustCrypto/AEADs")
    (synopsis "Pure Rust implementation of the AES-GCM (Galois/Counter Mode)
Authenticated Encryption with Associated Data (AEAD) Cipher
with optional architecture-specific hardware acceleration
")
    (description
     "Pure Rust implementation of the AES-GCM (Galois/Counter Mode) Authenticated
Encryption with Associated Data (AEAD) Cipher with optional
architecture-specific hardware acceleration")
    (license (list license:asl2.0 license:expat))))

(define-public rust-cookie-0.15
  (package
    (name "rust-cookie")
    (version "0.15.1")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "cookie" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "03gql9c2l0wg3hpfp67wg2ns21wysk0xsjxwdbjrf0s6grrcgwfm"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs
       (("rust-aes-gcm" ,rust-aes-gcm-0.8) ("rust-base64" ,rust-base64-0.13)
        ("rust-hkdf" ,rust-hkdf-0.10)
        ("rust-hmac" ,rust-hmac-0.10)
        ("rust-percent-encoding" ,rust-percent-encoding-2)
        ("rust-rand" ,rust-rand-0.8)
        ("rust-sha2" ,rust-sha2-0.9)
        ("rust-subtle" ,rust-subtle-2)
        ("rust-time" ,rust-time-0.2)
        ("rust-version-check" ,rust-version-check-0.9))))
    (home-page "https://github.com/SergioBenitez/cookie-rs")
    (synopsis
     "HTTP cookie parsing and cookie jar management. Supports signed and private
(encrypted, authenticated) jars.
")
    (description
     "HTTP cookie parsing and cookie jar management.  Supports signed and private
(encrypted, authenticated) jars.")
    (license (list license:expat license:asl2.0))))

(define-public rust-brotli-decompressor-2
  (package
    (name "rust-brotli-decompressor")
    (version "2.3.2")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "brotli-decompressor" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "102v89h9z0p45j5fsjna97761nxx9nxz9ccpwxma6p5zad32vbar"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs
       (("rust-alloc-no-stdlib" ,rust-alloc-no-stdlib-2) ("rust-alloc-stdlib" ,rust-alloc-stdlib-0.2))))
    (home-page "https://github.com/dropbox/rust-brotli-decompressor")
    (synopsis
     "A brotli decompressor that with an interface avoiding the rust stdlib. This makes it suitable for embedded devices and kernels. It is designed with a pluggable allocator so that the standard lib's allocator may be employed. The default build also includes a stdlib allocator and stream interface. Disable this with --features=no-stdlib. Alternatively, --features=unsafe turns off array bounds checks and memory initialization but provides a safe interface for the caller.  Without adding the --features=unsafe argument, all included code is safe. For compression in addition to this library, download https://github.com/dropbox/rust-brotli ")
    (description
     "This package provides a brotli decompressor that with an interface avoiding the
rust stdlib.  This makes it suitable for embedded devices and kernels.  It is
designed with a pluggable allocator so that the standard lib's allocator may be
employed.  The default build also includes a stdlib allocator and stream
interface.  Disable this with --features=no-stdlib.  Alternatively,
--features=unsafe turns off array bounds checks and memory initialization but
provides a safe interface for the caller.  Without adding the --features=unsafe
argument, all included code is safe.  For compression in addition to this
library, download https://github.com/dropbox/rust-brotli ")
    (license (list license:bsd-3 license:expat))))

(define-public rust-ureq-2
  (package
    (name "rust-ureq")
    (version "2.4.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "ureq" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1m8nzx683iph4zfpfg2xmkkbwmgf1i403lnbhxqk4gbsj8pzm6ck"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs
       (("rust-base64" ,rust-base64-0.13) ("rust-brotli-decompressor" ,rust-brotli-decompressor-2)
        ("rust-chunked-transfer" ,rust-chunked-transfer-1)
        ("rust-cookie" ,rust-cookie-0.15)
        ("rust-cookie-store" ,rust-cookie-store-0.15)
        ("rust-encoding-rs" ,rust-encoding-rs-0.8)
        ("rust-flate2" ,rust-flate2-1)
        ("rust-log" ,rust-log-0.4)
        ("rust-native-tls" ,rust-native-tls-0.2)
        ("rust-once-cell" ,rust-once-cell-1)
        ("rust-rustls" ,rust-rustls-0.20)
        ("rust-rustls-native-certs" ,rust-rustls-native-certs-0.6)
        ("rust-serde" ,rust-serde-1)
        ("rust-serde-json" ,rust-serde-json-1)
        ("rust-socks" ,rust-socks-0.3)
        ("rust-url" ,rust-url-2)
        ("rust-webpki" ,rust-webpki-0.22)
        ("rust-webpki-roots" ,rust-webpki-roots-0.22))))
    (home-page "https://github.com/algesten/ureq")
    (synopsis "Simple, safe HTTP client")
    (description "Simple, safe HTTP client")
    (license (list license:expat license:asl2.0))))

(define-public rust-cpufeatures-0.2
  (package
    (name "rust-cpufeatures")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "cpufeatures" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0sgllzsvs8hinylaiigmd9c908gd8wclxnqz8dinpxbdyql981cm"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs
       (("rust-libc" ,rust-libc-0.2))))
    (home-page "https://github.com/RustCrypto/utils")
    (synopsis "Lightweight and efficient no-std compatible alternative to the
is_x86_feature_detected! macro
")
    (description
     "Lightweight and efficient no-std compatible alternative to the
is_x86_feature_detected! macro")
    (license (list license:expat license:asl2.0))))

(define-public rust-sha2-0.9
  (package
    (name "rust-sha2")
    (version "0.9.9")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "sha2" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "006q2f0ar26xcjxqz8zsncfgz86zqa5dkwlwv03rhx1rpzhs2n2d"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs
       (("rust-block-buffer" ,rust-block-buffer-0.9) ("rust-cfg-if" ,rust-cfg-if-1)
        ("rust-cpufeatures" ,rust-cpufeatures-0.2)
        ("rust-digest" ,rust-digest-0.9)
        ("rust-opaque-debug" ,rust-opaque-debug-0.3)
        ("rust-sha2-asm" ,rust-sha2-asm-0.6))))
    (home-page "https://github.com/RustCrypto/hashes")
    (synopsis "Pure Rust implementation of the SHA-2 hash function family
including SHA-224, SHA-256, SHA-384, and SHA-512.
")
    (description
     "Pure Rust implementation of the SHA-2 hash function family including SHA-224,
SHA-256, SHA-384, and SHA-512.")
    (license (list license:expat license:asl2.0))))

(define-public rust-thread-id-4
  (package
    (name "rust-thread-id")
    (version "4.0.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "thread-id" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0zvikdngp0950hi0jgiipr8l36rskk1wk7pc8cd43xr3g5if1psz"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs
       (("rust-libc" ,rust-libc-0.2) ("rust-redox-syscall" ,rust-redox-syscall-0.2)
        ("rust-winapi" ,rust-winapi-0.3))))
    (home-page "https://github.com/ruuda/thread-id")
    (synopsis "Get a unique thread ID")
    (description "Get a unique thread ID")
    (license (list license:expat license:asl2.0))))

(define-public rust-redox-syscall-0.2
  (package
    (name "rust-redox-syscall")
    (version "0.2.10")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "redox_syscall" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1zq36bhw4c6xig340ja1jmr36iy0d3djp8smsabxx71676bg70w3"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs
       (("rust-bitflags" ,rust-bitflags-1))))
    (home-page "https://gitlab.redox-os.org/redox-os/syscall")
    (synopsis "A Rust library to access raw Redox system calls")
    (description
     "This package provides a Rust library to access raw Redox system calls")
    (license license:expat)))

(define-public rust-cc-1
  (package
    (name "rust-cc")
    (version "1.0.72")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "cc" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1vl50h2qh0nh0iddzj6gd1pnxnxpvwmbfxc30578c1pajmxi7a92"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs
       (("rust-jobserver" ,rust-jobserver-0.1))))
    (home-page "https://github.com/alexcrichton/cc-rs")
    (synopsis
     "A build-time dependency for Cargo build scripts to assist in invoking the native
C compiler to compile native C code into a static archive to be linked into Rust
code.
")
    (description
     "This package provides a build-time dependency for Cargo build scripts to assist
in invoking the native C compiler to compile native C code into a static archive
to be linked into Rust code.")
    (license (list license:expat license:asl2.0))))

(define-public rust-memchr-2
  (package
    (name "rust-memchr")
    (version "2.4.1")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "memchr" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0smq8xzd40njqpfzv5mghigj91fzlfrfg842iz8x0wqvw2dw731h"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs
       (("rust-compiler-builtins" ,rust-compiler-builtins-0.1) ("rust-libc" ,rust-libc-0.2)
        ("rust-rustc-std-workspace-core" ,rust-rustc-std-workspace-core-1))))
    (home-page "https://github.com/BurntSushi/memchr")
    (synopsis "Safe interface to memchr.")
    (description "Safe interface to memchr.")
    (license (list license:unlicense license:expat))))

(define-public rust-object-0.27
  (package
    (name "rust-object")
    (version "0.27.1")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "object" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1ygv9zgi9wz6q5f2z9xn72i0c97jjr1dgj30kbyicdhxk8zivb37"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs
       (("rust-compiler-builtins" ,rust-compiler-builtins-0.1) ("rust-crc32fast" ,rust-crc32fast-1)
        ("rust-flate2" ,rust-flate2-1)
        ("rust-indexmap" ,rust-indexmap-1)
        ("rust-memchr" ,rust-memchr-2)
        ("rust-rustc-std-workspace-alloc" ,rust-rustc-std-workspace-alloc-1)
        ("rust-rustc-std-workspace-core" ,rust-rustc-std-workspace-core-1)
        ("rust-wasmparser" ,rust-wasmparser-0.57))))
    (home-page "https://github.com/gimli-rs/object")
    (synopsis
     "A unified interface for reading and writing object file formats.")
    (description
     "This package provides a unified interface for reading and writing object file
formats.")
    (license (list license:asl2.0 license:expat))))

(define-public rust-gimli-0.26
  (package
    (name "rust-gimli")
    (version "0.26.1")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "gimli" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1m0vi36ypv4gx9gzcw6y456yqnlypizhwlcqrmg6vkwd0lnkgk3q"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs
       (("rust-compiler-builtins" ,rust-compiler-builtins-0.1) ("rust-fallible-iterator" ,rust-fallible-iterator-0.2)
        ("rust-indexmap" ,rust-indexmap-1)
        ("rust-rustc-std-workspace-alloc" ,rust-rustc-std-workspace-alloc-1)
        ("rust-rustc-std-workspace-core" ,rust-rustc-std-workspace-core-1)
        ("rust-stable-deref-trait" ,rust-stable-deref-trait-1))))
    (home-page "https://github.com/gimli-rs/gimli")
    (synopsis "A library for reading and writing the DWARF debugging format.")
    (description
     "This package provides a library for reading and writing the DWARF debugging
format.")
    (license (list license:asl2.0 license:expat))))

(define-public rust-addr2line-0.17
  (package
    (name "rust-addr2line")
    (version "0.17.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "addr2line" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0sw16zqy6w0ar633z69m7lw6gb0k1y7xj3387a8wly43ij5div5r"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs
       (("rust-compiler-builtins" ,rust-compiler-builtins-0.1) ("rust-cpp-demangle" ,rust-cpp-demangle-0.3)
        ("rust-fallible-iterator" ,rust-fallible-iterator-0.2)
        ("rust-gimli" ,rust-gimli-0.26)
        ("rust-object" ,rust-object-0.27)
        ("rust-rustc-demangle" ,rust-rustc-demangle-0.1)
        ("rust-rustc-std-workspace-alloc" ,rust-rustc-std-workspace-alloc-1)
        ("rust-rustc-std-workspace-core" ,rust-rustc-std-workspace-core-1)
        ("rust-smallvec" ,rust-smallvec-1))))
    (home-page "https://github.com/gimli-rs/addr2line")
    (synopsis
     "A cross-platform symbolication library written in Rust, using `gimli`")
    (description
     "This package provides a cross-platform symbolication library written in Rust,
using `gimli`")
    (license (list license:asl2.0 license:expat))))

(define-public rust-backtrace-0.3
  (package
    (name "rust-backtrace")
    (version "0.3.63")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "backtrace" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1dp1dik2riphgslibafp3kzj95f8kgx42wkh4qghc4v5pbc2j5ij"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs
       (("rust-addr2line" ,rust-addr2line-0.17) ("rust-cc" ,rust-cc-1)
        ("rust-cfg-if" ,rust-cfg-if-1)
        ("rust-cpp-demangle" ,rust-cpp-demangle-0.3)
        ("rust-libc" ,rust-libc-0.2)
        ("rust-miniz-oxide" ,rust-miniz-oxide-0.4)
        ("rust-object" ,rust-object-0.27)
        ("rust-rustc-demangle" ,rust-rustc-demangle-0.1)
        ("rust-rustc-serialize" ,rust-rustc-serialize-0.3)
        ("rust-serde" ,rust-serde-1)
        ("rust-winapi" ,rust-winapi-0.3))))
    (home-page "https://github.com/rust-lang/backtrace-rs")
    (synopsis
     "A library to acquire a stack trace (backtrace) at runtime in a Rust program.
")
    (description
     "This package provides a library to acquire a stack trace (backtrace) at runtime
in a Rust program.")
    (license (list license:expat license:asl2.0))))

(define-public rust-parking-lot-core-0.8
  (package
    (name "rust-parking-lot-core")
    (version "0.8.5")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "parking_lot_core" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "05ij4zxsylx99srbq8qd1k2wiwaq8krkf9y4cqkhvb5wjca8wvnp"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs
       (("rust-backtrace" ,rust-backtrace-0.3) ("rust-cfg-if" ,rust-cfg-if-1)
        ("rust-instant" ,rust-instant-0.1)
        ("rust-libc" ,rust-libc-0.2)
        ("rust-petgraph" ,rust-petgraph-0.5)
        ("rust-redox-syscall" ,rust-redox-syscall-0.2)
        ("rust-smallvec" ,rust-smallvec-1)
        ("rust-thread-id" ,rust-thread-id-4)
        ("rust-winapi" ,rust-winapi-0.3))))
    (home-page "https://github.com/Amanieu/parking_lot")
    (synopsis
     "An advanced API for creating custom synchronization primitives.")
    (description
     "An advanced API for creating custom synchronization primitives.")
    (license (list license:asl2.0 license:expat))))

(define-public rust-lock-api-0.4
  (package
    (name "rust-lock-api")
    (version "0.4.5")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "lock_api" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "028izfyraynijd9h9x5miv1vmg6sjnw1v95wgm7f4xlr7h4lsaki"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs
       (("rust-owning-ref" ,rust-owning-ref-0.4) ("rust-scopeguard" ,rust-scopeguard-1)
        ("rust-serde" ,rust-serde-1))))
    (home-page "https://github.com/Amanieu/parking_lot")
    (synopsis
     "Wrappers to create fully-featured Mutex and RwLock types. Compatible with no_std.")
    (description
     "Wrappers to create fully-featured Mutex and RwLock types.  Compatible with
no_std.")
    (license (list license:asl2.0 license:expat))))

(define-public rust-instant-0.1
  (package
    (name "rust-instant")
    (version "0.1.12")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "instant" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0b2bx5qdlwayriidhrag8vhy10kdfimfhmb3jnjmsz2h9j1bwnvs"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs
       (("rust-cfg-if" ,rust-cfg-if-1) ("rust-js-sys" ,rust-js-sys-0.3)
        ("rust-stdweb" ,rust-stdweb-0.4)
        ("rust-wasm-bindgen" ,rust-wasm-bindgen-0.2)
        ("rust-web-sys" ,rust-web-sys-0.3))))
    (home-page "https://github.com/sebcrozet/instant")
    (synopsis
     "A partial replacement for std::time::Instant that works on WASM too.")
    (description
     "This package provides a partial replacement for std::time::Instant that works on
WASM too.")
    (license license:bsd-3)))

(define-public rust-parking-lot-0.11
  (package
    (name "rust-parking-lot")
    (version "0.11.2")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "parking_lot" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "16gzf41bxmm10x82bla8d6wfppy9ym3fxsmdjyvn61m66s0bf5vx"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs
       (("rust-instant" ,rust-instant-0.1) ("rust-lock-api" ,rust-lock-api-0.4)
        ("rust-parking-lot-core" ,rust-parking-lot-core-0.8))))
    (home-page "https://github.com/Amanieu/parking_lot")
    (synopsis
     "More compact and efficient implementations of the standard synchronization primitives.")
    (description
     "More compact and efficient implementations of the standard synchronization
primitives.")
    (license (list license:asl2.0 license:expat))))

(define-public rust-dprint-cli-core-0.10
  (package
    (name "rust-dprint-cli-core")
    (version "0.10.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "dprint-cli-core" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1ajvnr0i3bra4nwa8d335wmgy54mq1nnfghbvma04bqfxpsy544d"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs
       (("rust-anyhow" ,rust-anyhow-1) ("rust-crossterm" ,rust-crossterm-0.21)
        ("rust-parking-lot" ,rust-parking-lot-0.11)
        ("rust-sha2" ,rust-sha2-0.9)
        ("rust-ureq" ,rust-ureq-2))))
    (home-page "https://github.com/dprint/dprint")
    (synopsis "Core Dprint CLI library for reuse.")
    (description "Core Dprint CLI library for reuse.")
    (license license:expat)))

(define-public rust-dirs-4
  (package
    (name "rust-dirs")
    (version "4.0.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "dirs" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0n8020zl4f0frfnzvgb9agvk4a14i1kjz4daqnxkgslndwmaffna"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs
       (("rust-dirs-sys" ,rust-dirs-sys-0.3))))
    (home-page "https://github.com/soc/dirs-rs")
    (synopsis
     "A tiny low-level library that provides platform-specific standard locations of directories for config, cache and other data on Linux, Windows, macOS and Redox by leveraging the mechanisms defined by the XDG base/user directory specifications on Linux, the Known Folder API on Windows, and the Standard Directory guidelines on macOS.")
    (description
     "This package provides a tiny low-level library that provides platform-specific
standard locations of directories for config, cache and other data on Linux,
Windows, macOS and Redox by leveraging the mechanisms defined by the XDG
base/user directory specifications on Linux, the Known Folder API on Windows,
and the Standard Directory guidelines on macOS.")
    (license (list license:expat license:asl2.0))))

(define-public rust-crossterm-0.21
  (package
    (name "rust-crossterm")
    (version "0.21.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "crossterm" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "126ps5vg9hwh4qql6l674yci7x5r8izc83acalwyz8bigwi48va8"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs
       (("rust-bitflags" ,rust-bitflags-1) ("rust-crossterm-winapi" ,rust-crossterm-winapi-0.8)
        ("rust-futures-core" ,rust-futures-core-0.3)
        ("rust-libc" ,rust-libc-0.2)
        ("rust-mio" ,rust-mio-0.7)
        ("rust-parking-lot" ,rust-parking-lot-0.11)
        ("rust-serde" ,rust-serde-1)
        ("rust-signal-hook" ,rust-signal-hook-0.3)
        ("rust-signal-hook-mio" ,rust-signal-hook-mio-0.2)
        ("rust-winapi" ,rust-winapi-0.3))))
    (home-page "https://github.com/crossterm-rs/crossterm")
    (synopsis "A crossplatform terminal library for manipulating terminals.")
    (description
     "This package provides a crossplatform terminal library for manipulating
terminals.")
    (license license:expat)))

(define-public rust-anyhow-1
  (package
    (name "rust-anyhow")
    (version "1.0.52")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "anyhow" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1cymyb8v6dk5rsx88lqyicsp3l65zccfg36f8i0vmlcb985hsic4"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs
       (("rust-backtrace" ,rust-backtrace-0.3))))
    (home-page "https://github.com/dtolnay/anyhow")
    (synopsis "Flexible concrete Error type built on std::error::Error")
    (description "Flexible concrete Error type built on std::error::Error")
    (license (list license:expat license:asl2.0))))

(define-public rust-pretty-assertions-1
  (package
    (name "rust-pretty-assertions")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "pretty-assertions" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1k01jc9gxgiyqbd9445q7x4kw2pf0q4m0ki31yx75w834hdzw37c"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs
       (("rust-ansi-term" ,rust-ansi-term-0.12) ("rust-ctor" ,rust-ctor-0.1)
        ("rust-diff" ,rust-diff-0.1)
        ("rust-output-vt100" ,rust-output-vt100-0.1))))
    (home-page "https://github.com/colin-kiegel/rust-pretty-assertions")
    (synopsis
     "Overwrite `assert_eq!` and `assert_ne!` with drop-in replacements, adding colorful diffs.")
    (description
     "Overwrite `assert_eq!` and `assert_ne!` with drop-in replacements, adding
colorful diffs.")
    (license (list license:expat license:asl2.0))))

