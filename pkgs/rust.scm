(define-module (pkgs rust)
  #:use-module (gnu packages crates-io)
  #:use-module (gnu packages crates-graphics)
  #:use-module (guix download)
  #:use-module (guix packages)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (guix build-system cargo))

(define-public rust-windows-macros-0.9
  (package
    (name "rust-windows-macros")
    (version "0.9.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "windows_macros" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0xivsg3lf023hs83xiab2k40fmrl11nbihcdrdkc8pc4ab398xqg"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-syn" ,rust-syn-1) ("rust-windows-gen" ,rust-windows-gen-0.9))))
    (home-page "")
    (synopsis "Macros for the windows crate")
    (description "Macros for the windows crate")
    (license (list license:expat license:asl2.0))))

(define-public rust-windows-gen-0.9
  (package
    (name "rust-windows-gen")
    (version "0.9.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "windows_gen" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0lh492px26rrna0harikyy4p7nk520pw2lv0dczp4n2xa6y4s5al"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t #:cargo-inputs (("rust-syn" ,rust-syn-1))))
    (home-page "")
    (synopsis "Code gen support for the windows crate")
    (description "Code gen support for the windows crate")
    (license (list license:expat license:asl2.0))))

(define-public rust-const-sha1-0.2
  (package
    (name "rust-const-sha1")
    (version "0.2.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "const-sha1" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "179cgi2m3wj5g80j49pggs95xalc6y1ivvbrv4m82alc3r2vcn7v"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page "https://github.com/rylev/const-sha1")
    (synopsis "A sha1 implementation for use in const contexts")
    (description
      "This package provides a sha1 implementation for use in const contexts")
    (license (list license:asl2.0 license:expat))))

(define-public rust-windows-0.9
  (package
    (name "rust-windows")
    (version "0.9.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "windows" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0zy9jmhkhmsng7l9qiznxpdh5ns303s875p5kf6a5q9ym0rka7rn"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-const-sha1" ,rust-const-sha1-0.2)
         ("rust-windows-gen" ,rust-windows-gen-0.9)
         ("rust-windows-macros" ,rust-windows-macros-0.9))))
    (home-page "https://github.com/microsoft/windows-rs")
    (synopsis "Rust for Windows")
    (description "Rust for Windows")
    (license (list license:expat license:asl2.0))))

(define-public rust-trash-2
  (package
    (name "rust-trash")
    (version "2.0.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "trash" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1g3wjnr5qvgvvi144mlgf0mh80dybmy9zv2xyswpm55p5p5vdsyk"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-chrono" ,rust-chrono-0.4)
         ("rust-libc" ,rust-libc-0.2)
         ("rust-log" ,rust-log-0.4)
         ("rust-objc" ,rust-objc-0.2)
         ("rust-scopeguard" ,rust-scopeguard-1)
         ("rust-url" ,rust-url-2)
         ("rust-windows" ,rust-windows-0.9)
         ("rust-windows" ,rust-windows-0.9))))
    (home-page "https://github.com/ArturKovacs/trash")
    (synopsis "A library for moving files and folders to the Recycle Bin")
    (description
      "This package provides a library for moving files and folders to the Recycle Bin")
    (license license:expat)))

(define-public rust-libc-0.2
  (package
    (name "rust-libc")
    (version "0.2.108")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "libc" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "06finl0p44lvqyw7s0qgc7bgmdz771gfg6bmmxlyrcbngsss28c5"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-rustc-std-workspace-core" ,rust-rustc-std-workspace-core-1))))
    (home-page "https://github.com/rust-lang/libc")
    (synopsis "Raw FFI bindings to platform libraries like libc.
")
    (description "Raw FFI bindings to platform libraries like libc.
")
    (license (list license:expat license:asl2.0))))

(define-public rust-sysinfo-0.20
  (package
    (name "rust-sysinfo")
    (version "0.20.5")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "sysinfo" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "17v7f7wxqk6761h0gnb684fd6xq7lkpkhvnfq8s5lj3bsdfcc8z2"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-cfg-if" ,rust-cfg-if-1)
         ("rust-core-foundation-sys" ,rust-core-foundation-sys-0.8)
         ("rust-libc" ,rust-libc-0.2)
         ("rust-ntapi" ,rust-ntapi-0.3)
         ("rust-once-cell" ,rust-once-cell-1)
         ("rust-rayon" ,rust-rayon-1)
         ("rust-winapi" ,rust-winapi-0.3))))
    (home-page "https://github.com/GuillaumeGomez/sysinfo")
    (synopsis
      "Library to get system information such as processes, processors, disks, components and networks")
    (description
      "Library to get system information such as processes, processors, disks, components and networks")
    (license license:expat)))

(define-public rust-fixedbitset-0.4
  (package
    (name "rust-fixedbitset")
    (version "0.4.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "fixedbitset" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "17mnwa48dy11dnbasxa0c92sdj243acjl2ilhpcb1fa0pvxa93ir"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t #:cargo-inputs (("rust-serde" ,rust-serde-1))))
    (home-page "https://github.com/bluss/fixedbitset")
    (synopsis "FixedBitSet is a simple bitset collection")
    (description "FixedBitSet is a simple bitset collection")
    (license (list license:expat license:asl2.0))))

(define-public rust-petgraph-0.6
  (package
    (name "rust-petgraph")
    (version "0.6.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "petgraph" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0kw27zzhsa82d4qpkrz91vznyxi3wm0qg0i84grfaqqbkpxa44sa"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-fixedbitset" ,rust-fixedbitset-0.4)
         ("rust-indexmap" ,rust-indexmap-1)
         ("rust-quickcheck" ,rust-quickcheck-0.8)
         ("rust-serde" ,rust-serde-1)
         ("rust-serde-derive" ,rust-serde-derive-1))))
    (home-page "https://github.com/petgraph/petgraph")
    (synopsis
      "Graph data structure library. Provides graph types and graph algorithms.")
    (description
      "Graph data structure library.  Provides graph types and graph algorithms.")
    (license (list license:expat license:asl2.0))))

(define-public rust-open-2
  (package
    (name "rust-open")
    (version "2.0.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "open" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1gwn9259bjyywj0sbsyc147fi12v7gd2vbj3zrkw2fyqwwyj6sxl"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-pathdiff" ,rust-pathdiff-0.2)
         ("rust-winapi" ,rust-winapi-0.3))))
    (home-page "https://github.com/Byron/open-rs")
    (synopsis "Open a path or URL using the program configured on the system")
    (description
      "Open a path or URL using the program configured on the system")
    (license license:expat)))

(define-public rust-jwalk-0.6
  (package
    (name "rust-jwalk")
    (version "0.6.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "jwalk" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1fbb3c1aacgghavgkslczpvqlc6z1m3yhza28v7cnrx0agl549qp"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-crossbeam" ,rust-crossbeam-0.8) ("rust-rayon" ,rust-rayon-1))))
    (home-page "https://github.com/jessegrosjean/jwalk")
    (synopsis
      "Filesystem walk performed in parallel with streamed and sorted results.")
    (description
      "Filesystem walk performed in parallel with streamed and sorted results.")
    (license license:expat)))

(define-public rust-tui-react-0.16
  (package
    (name "rust-tui-react")
    (version "0.16.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "tui-react" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0rrbn3cyddq3yy45ilvxlzlpskrvgk48f8ikgxfy6b1ir2xgg1in"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-log" ,rust-log-0.4)
         ("rust-tui" ,rust-tui-0.16)
         ("rust-unicode-segmentation" ,rust-unicode-segmentation-1)
         ("rust-unicode-width" ,rust-unicode-width-0.1))))
    (home-page "https://github.com/Byron/tui-crates")
    (synopsis
      "TUI widgets using a react-like paradigm, allowing mutable component state and render properties.")
    (description
      "TUI widgets using a react-like paradigm, allowing mutable component state and render properties.")
    (license license:expat)))

(define-public rust-tui-0.16
  (package
    (name "rust-tui")
    (version "0.16.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "tui" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "08qcdjmi8sn2xyh38ilr17i9bn89ic2aaqx3rybyv7h44x7cxj1r"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-bitflags" ,rust-bitflags-1)
         ("rust-cassowary" ,rust-cassowary-0.3)
         ("rust-crossterm" ,rust-crossterm-0.20)
         ("rust-easycurses" ,rust-easycurses-0.12)
         ("rust-pancurses" ,rust-pancurses-0.16)
         ("rust-rustbox" ,rust-rustbox-0.11)
         ("rust-serde" ,rust-serde-1)
         ("rust-termion" ,rust-termion-1)
         ("rust-unicode-segmentation" ,rust-unicode-segmentation-1)
         ("rust-unicode-width" ,rust-unicode-width-0.1))))
    (home-page "https://github.com/fdehau/tui-rs")
    (synopsis
      "A library to build rich terminal user interfaces or dashboards
")
    (description
      "This package provides a library to build rich terminal user interfaces or dashboards
")
    (license license:expat)))

(define-public rust-crosstermion-0.8
  (package
    (name "rust-crosstermion")
    (version "0.8.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "crosstermion" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0m78j902zn92r463l854ndz7v3ibqj2lmhhgk42yarfkx130nw4a"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-ansi-term" ,rust-ansi-term-0.12)
         ("rust-async-channel" ,rust-async-channel-1)
         ("rust-crossterm" ,rust-crossterm-0.20)
         ("rust-futures-channel" ,rust-futures-channel-0.3)
         ("rust-futures-core" ,rust-futures-core-0.3)
         ("rust-futures-lite" ,rust-futures-lite-1)
         ("rust-termion" ,rust-termion-1)
         ("rust-tui" ,rust-tui-0.16)
         ("rust-tui-react" ,rust-tui-react-0.16))))
    (home-page "https://github.com/Byron/tui-crates")
    (synopsis
      "The unification of crossterm and termion behind a common facade for use with feature flags")
    (description
      "The unification of crossterm and termion behind a common facade for use with feature flags")
    (license license:expat)))

(define-public rust-unicode-linebreak-0.1
  (package
    (name "rust-unicode-linebreak")
    (version "0.1.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "unicode-linebreak" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0grq6bsn967q4vpifld53s7a140nlmpq5vy8ghgr73f4n2mdqlis"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t #:cargo-inputs (("rust-regex" ,rust-regex-1))))
    (home-page "https://github.com/axelf4/unicode-linebreak")
    (synopsis "Implementation of the Unicode Line Breaking Algorithm")
    (description "Implementation of the Unicode Line Breaking Algorithm")
    (license license:asl2.0)))

(define-public rust-openblas-src-0.9
  (package
    (name "rust-openblas-src")
    (version "0.9.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "openblas-src" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0syy38a5bgv5mj6mb1n1zk1d6l5gqqrswvbmwkwx6h4z9wfrsql4"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page "https://github.com/blas-lapack-rs/openblas-src")
    (synopsis "The package provides a source of BLAS and LAPACK via OpenBLAS.")
    (description
      "The package provides a source of BLAS and LAPACK via OpenBLAS.")
    (license (list license:asl2.0 license:expat))))

(define-public rust-netlib-src-0.8
  (package
    (name "rust-netlib-src")
    (version "0.8.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "netlib-src" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "04l2ggdaq0bjc64prsw2f8ddxn84m1rmpnkjb9nr0ijdpcv1zx1r"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t #:cargo-inputs (("rust-cmake" ,rust-cmake-0.1))))
    (home-page "https://github.com/blas-lapack-rs/netlib-src")
    (synopsis "The package provides a source of BLAS and LAPACK via Netlib.")
    (description
      "The package provides a source of BLAS and LAPACK via Netlib.")
    (license (list license:asl2.0 license:expat))))

(define-public rust-intel-mkl-tool-0.1
  (package
    (name "rust-intel-mkl-tool")
    (version "0.1.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "intel-mkl-tool" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1myyrxvmyij4c60w9x15npwzhlbjm8y8c94lvfsnrl5pbyakz8md"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-curl" ,rust-curl-0.4)
         ("rust-dirs" ,rust-dirs-2)
         ("rust-env-logger" ,rust-env-logger-0.7)
         ("rust-failure" ,rust-failure-0.1)
         ("rust-glob" ,rust-glob-0.3)
         ("rust-log" ,rust-log-0.4)
         ("rust-pkg-config" ,rust-pkg-config-0.3)
         ("rust-structopt" ,rust-structopt-0.3)
         ("rust-tar" ,rust-tar-0.4)
         ("rust-zstd" ,rust-zstd-0.5))))
    (home-page "https://github.com/rust-math/intel-mkl-src")
    (synopsis "CLI utility for redistributiing Intel(R) MKL")
    (description "CLI utility for redistributiing Intel(R) MKL")
    (license license:expat)))

(define-public rust-intel-mkl-src-0.5
  (package
    (name "rust-intel-mkl-src")
    (version "0.5.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "intel-mkl-src" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "155q49a7nfbq1lllchsyx8jv2q2pijrjh1w08awvrbjyfcxb6q3j"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-intel-mkl-tool" ,rust-intel-mkl-tool-0.1))))
    (home-page "https://github.com/rust-math/intel-mkl-src")
    (synopsis "Redistribution of Intel(R) MKL as a crate")
    (description "Redistribution of Intel(R) MKL as a crate")
    (license license:expat)))

(define-public rust-accelerate-src-0.3
  (package
    (name "rust-accelerate-src")
    (version "0.3.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "accelerate-src" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "17fiqyq7f9k41pbsyrvk9pxyx9z6fw399wq036cvwkbmb14xcpj1"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page "https://github.com/blas-lapack-rs/accelerate-src")
    (synopsis
      "The package provides a source of BLAS and LAPACK via the Accelerate framework.")
    (description
      "The package provides a source of BLAS and LAPACK via the Accelerate framework.")
    (license (list license:asl2.0 license:expat))))

(define-public rust-blas-src-0.6
  (package
    (name "rust-blas-src")
    (version "0.6.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "blas-src" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0a134wadi4rslfqk4mafi6y7bbvacjh12x87621w4vyc3dni6px2"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-accelerate-src" ,rust-accelerate-src-0.3)
         ("rust-intel-mkl-src" ,rust-intel-mkl-src-0.5)
         ("rust-netlib-src" ,rust-netlib-src-0.8)
         ("rust-openblas-src" ,rust-openblas-src-0.9))))
    (home-page "https://github.com/blas-lapack-rs/blas-src")
    (synopsis "The package provides a BLAS source of choice.")
    (description "The package provides a BLAS source of choice.")
    (license (list license:asl2.0 license:expat))))

(define-public rust-ndarray-0.14
  (package
    (name "rust-ndarray")
    (version "0.14.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "ndarray" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "011wqzmrd9gpfcfvy1xfbskqfiahn96pmi2d0r9x34d682amq3bc"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-approx" ,rust-approx-0.4)
         ("rust-blas-src" ,rust-blas-src-0.6)
         ("rust-cblas-sys" ,rust-cblas-sys-0.1)
         ("rust-matrixmultiply" ,rust-matrixmultiply-0.2)
         ("rust-num-complex" ,rust-num-complex-0.3)
         ("rust-num-integer" ,rust-num-integer-0.1)
         ("rust-num-traits" ,rust-num-traits-0.2)
         ("rust-rawpointer" ,rust-rawpointer-0.2)
         ("rust-rayon" ,rust-rayon-1)
         ("rust-serde" ,rust-serde-1))))
    (home-page "https://github.com/rust-ndarray/ndarray")
    (synopsis
      "An n-dimensional array for general elements and for numerics. Lightweight array views and slicing; views support chunking and splitting.")
    (description
      "An n-dimensional array for general elements and for numerics.  Lightweight array views and slicing; views support chunking and splitting.")
    (license (list license:expat license:asl2.0))))

(define-public rust-smawk-0.3
  (package
    (name "rust-smawk")
    (version "0.3.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "smawk" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0hv0q1mw1r1brk7v3g4a80j162p7g1dri4bdidykrakzfqjd4ypn"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t #:cargo-inputs (("rust-ndarray" ,rust-ndarray-0.14))))
    (home-page "https://github.com/mgeisler/smawk")
    (synopsis "Functions for finding row-minima in a totally monotone matrix.")
    (description
      "This package provides functions for finding row-minima in a totally monotone matrix.")
    (license license:expat)))

(define-public rust-unicode-normalization-0.1
  (package
    (name "rust-unicode-normalization")
    (version "0.1.19")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "unicode-normalization" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1yabhmg8zlcksda3ajly9hpbzqgbhknxwch8dwkfkaa1569r0ifm"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t #:cargo-inputs (("rust-tinyvec" ,rust-tinyvec-1))))
    (home-page "https://github.com/unicode-rs/unicode-normalization")
    (synopsis
      "This crate provides functions for normalization of
Unicode strings, including Canonical and Compatible
Decomposition and Recomposition, as described in
Unicode Standard Annex #15.
")
    (description
      "This crate provides functions for normalization of
Unicode strings, including Canonical and Compatible
Decomposition and Recomposition, as described in
Unicode Standard Annex #15.
")
    (license (list license:expat license:asl2.0))))

(define-public rust-serde-derive-1
  (package
    (name "rust-serde-derive")
    (version "1.0.130")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "serde_derive" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "12shxhi47db54i4j44ic2nl299x5p89ngna0w3m6854nn4d1mg6p"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-proc-macro2" ,rust-proc-macro2-1)
         ("rust-quote" ,rust-quote-1)
         ("rust-syn" ,rust-syn-1))))
    (home-page "https://serde.rs")
    (synopsis "Macros 1.1 implementation of #[derive(Serialize, Deserialize)]")
    (description
      "Macros 1.1 implementation of #[derive(Serialize, Deserialize)]")
    (license (list license:expat license:asl2.0))))

(define-public rust-serde-1
  (package
    (name "rust-serde")
    (version "1.0.130")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "serde" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "04y9s1mxcxakg9bhfdiff9w4zzprk6m6dazcpmpi8nfg6zg0cbgi"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-serde-derive" ,rust-serde-derive-1))))
    (home-page "https://serde.rs")
    (synopsis "A generic serialization/deserialization framework")
    (description
      "This package provides a generic serialization/deserialization framework")
    (license (list license:expat license:asl2.0))))

(define-public rust-hyphenation-commons-0.8
  (package
    (name "rust-hyphenation-commons")
    (version "0.8.4")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "hyphenation_commons" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1gq59h9h8597k04yl53an0j56cvb0in98pxpp27dkiz5mnifgssz"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-fst" ,rust-fst-0.4) ("rust-serde" ,rust-serde-1))))
    (home-page "https://github.com/tapeinosyne/hyphenation")
    (synopsis "Proemial code for the `hyphenation` library")
    (description "Proemial code for the `hyphenation` library")
    (license (list license:asl2.0 license:expat))))

(define-public rust-fst-0.4
  (package
    (name "rust-fst")
    (version "0.4.7")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "fst" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "06mnksicgv9rp8b7w0ykkshf355l05zym3ygm74qr5z30ndmpf3s"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-utf8-ranges" ,rust-utf8-ranges-1))))
    (home-page "https://github.com/BurntSushi/fst")
    (synopsis
      "Use finite state transducers to compactly represents sets or maps of many
strings (> 1 billion is possible).
")
    (description
      "Use finite state transducers to compactly represents sets or maps of many
strings (> 1 billion is possible).
")
    (license (list license:unlicense license:expat))))

(define-public rust-bincode-1
  (package
    (name "rust-bincode")
    (version "1.3.3")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "bincode" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1bfw3mnwzx5g1465kiqllp5n4r10qrqy88kdlp3jfwnq2ya5xx5i"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t #:cargo-inputs (("rust-serde" ,rust-serde-1))))
    (home-page "https://github.com/bincode-org/bincode")
    (synopsis
      "A binary serialization / deserialization strategy for transforming structs into bytes and vice versa!")
    (description
      "This package provides a binary serialization / deserialization strategy for transforming structs into bytes and vice versa!")
    (license license:expat)))

(define-public rust-hyphenation-0.8
  (package
    (name "rust-hyphenation")
    (version "0.8.4")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "hyphenation" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1w2hib167vpz7jbg3zs92ifihj4akirlhb5509aib1df8i6dvx5w"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-bincode" ,rust-bincode-1)
         ("rust-bincode" ,rust-bincode-1)
         ("rust-fst" ,rust-fst-0.4)
         ("rust-fst" ,rust-fst-0.4)
         ("rust-hyphenation-commons" ,rust-hyphenation-commons-0.8)
         ("rust-hyphenation-commons" ,rust-hyphenation-commons-0.8)
         ("rust-pocket-resources" ,rust-pocket-resources-0.3)
         ("rust-serde" ,rust-serde-1)
         ("rust-serde" ,rust-serde-1)
         ("rust-unicode-normalization" ,rust-unicode-normalization-0.1))))
    (home-page "https://github.com/tapeinosyne/hyphenation")
    (synopsis "Knuth-Liang hyphenation for a variety of languages")
    (description "Knuth-Liang hyphenation for a variety of languages")
    (license (list license:asl2.0 license:expat))))

(define-public rust-textwrap-0.14
  (package
    (name "rust-textwrap")
    (version "0.14.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "textwrap" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "106xjfzfpk3nj51fx9slf9kyir7xjwvpqm003v9ardgq5b8whrh0"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-hyphenation" ,rust-hyphenation-0.8)
         ("rust-smawk" ,rust-smawk-0.3)
         ("rust-terminal-size" ,rust-terminal-size-0.1)
         ("rust-unicode-linebreak" ,rust-unicode-linebreak-0.1)
         ("rust-unicode-width" ,rust-unicode-width-0.1))))
    (home-page "https://github.com/mgeisler/textwrap")
    (synopsis
      "Powerful library for word wrapping, indenting, and dedenting strings")
    (description
      "Powerful library for word wrapping, indenting, and dedenting strings")
    (license license:expat)))

(define-public rust-uniquote-3
  (package
    (name "rust-uniquote")
    (version "3.0.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "uniquote" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0gqwq3kbzdsj5qsc8jfm5v4qwzgnp4rrfvdpm71ch1593h22y664"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page "https://github.com/dylni/uniquote")
    (synopsis "Quote strings for clear display in output
")
    (description "Quote strings for clear display in output
")
    (license (list license:expat license:asl2.0))))

(define-public rust-print-bytes-0.4
  (package
    (name "rust-print-bytes")
    (version "0.4.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "print_bytes" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1zmvbaxfl4r780j0smg2kn1q3agks601aa43s5zdlzgcp32yjfvm"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t #:cargo-inputs (("rust-winapi" ,rust-winapi-0.3))))
    (home-page "https://github.com/dylni/print_bytes")
    (synopsis "Print bytes as losslessly as possible
")
    (description "Print bytes as losslessly as possible
")
    (license (list license:expat license:asl2.0))))

(define-public rust-os-str-bytes-4
  (package
    (name "rust-os-str-bytes")
    (version "4.2.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "os_str_bytes" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "16d70qzd2g18i28i6znjcpck0r9hjd5gz5qcr1cl2l9s6d1sknmd"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-memchr" ,rust-memchr-2)
         ("rust-print-bytes" ,rust-print-bytes-0.4)
         ("rust-uniquote" ,rust-uniquote-3))))
    (home-page "https://github.com/dylni/os_str_bytes")
    (synopsis
      "Utilities for converting between byte sequences and platform-native strings
")
    (description
      "Utilities for converting between byte sequences and platform-native strings
")
    (license (list license:expat license:asl2.0))))

(define-public rust-syn-1
  (package
    (name "rust-syn")
    (version "1.0.82")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "syn" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0ncx7gg5mvd16q5xf77hgk09nwmfq0ppsn0vgc9x9jv0pg85vbwd"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-proc-macro2" ,rust-proc-macro2-1)
         ("rust-quote" ,rust-quote-1)
         ("rust-unicode-xid" ,rust-unicode-xid-0.2))))
    (home-page "https://github.com/dtolnay/syn")
    (synopsis "Parser for Rust source code")
    (description "Parser for Rust source code")
    (license (list license:expat license:asl2.0))))

(define-public rust-proc-macro2-1
  (package
    (name "rust-proc-macro2")
    (version "1.0.32")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "proc-macro2" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0hqbxlvhiaybakl1gai3mgps1dxsmxricxsr2rfdrh222z0qql5s"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-unicode-xid" ,rust-unicode-xid-0.2))))
    (home-page "https://github.com/dtolnay/proc-macro2")
    (synopsis
      "A substitute implementation of the compiler's `proc_macro` API to decouple
token-based libraries from the procedural macro use case.
")
    (description
      "This package provides a substitute implementation of the compiler's `proc_macro` API to decouple
token-based libraries from the procedural macro use case.
")
    (license (list license:expat license:asl2.0))))

(define-public rust-clap-derive-3
  (package
    (name "rust-clap-derive")
    (version "3.0.0-beta.5")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "clap_derive" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1lyhsxpcv3bl2sp4a2fd9d2c47xwamla6rgy5wcvdzw6yyscc5cb"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-heck" ,rust-heck-0.3)
         ("rust-proc-macro-error" ,rust-proc-macro-error-1)
         ("rust-proc-macro2" ,rust-proc-macro2-1)
         ("rust-quote" ,rust-quote-1)
         ("rust-syn" ,rust-syn-1))))
    (home-page "https://clap.rs/")
    (synopsis
      "Parse command line argument by defining a struct, derive crate.")
    (description
      "Parse command line argument by defining a struct, derive crate.")
    (license (list license:expat license:asl2.0))))

(define-public rust-clap-3
  (package
    (name "rust-clap")
    (version "3.0.0-beta.5")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "clap" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0qqxzdxys8amgb420ykfa1143wk3gghn7ksqbms97nsfarw3izzy"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-atty" ,rust-atty-0.2)
         ("rust-backtrace" ,rust-backtrace-0.3)
         ("rust-bitflags" ,rust-bitflags-1)
         ("rust-clap-derive" ,rust-clap-derive-3)
         ("rust-indexmap" ,rust-indexmap-1)
         ("rust-lazy-static" ,rust-lazy-static-1)
         ("rust-os-str-bytes" ,rust-os-str-bytes-4)
         ("rust-regex" ,rust-regex-1)
         ("rust-strsim" ,rust-strsim-0.10)
         ("rust-termcolor" ,rust-termcolor-1)
         ("rust-terminal-size" ,rust-terminal-size-0.1)
         ("rust-textwrap" ,rust-textwrap-0.14)
         ("rust-unicase" ,rust-unicase-2)
         ("rust-yaml-rust" ,rust-yaml-rust-0.4))))
    (home-page "https://clap.rs/")
    (synopsis
      "A simple to use, efficient, and full-featured Command Line Argument Parser")
    (description
      "This package provides a simple to use, efficient, and full-featured Command Line Argument Parser")
    (license (list license:expat license:asl2.0))))

(define-public dua-cli
  (package
    (name "dua-cli")
    (version "2.14.11")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "dua-cli" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1wh1k2bzaz7dn0dcvjg8kac0yhswi9m1bvn9bkal423mj0i79sia"))))
    (build-system cargo-build-system)
    (arguments
      `(#:cargo-inputs
        (("rust-anyhow" ,rust-anyhow-1)
         ("rust-atty" ,rust-atty-0.2)
         ("rust-byte-unit" ,rust-byte-unit-4)
         ("rust-clap" ,rust-clap-3)
         ("rust-colored" ,rust-colored-2)
         ("rust-crosstermion" ,rust-crosstermion-0.8)
         ("rust-filesize" ,rust-filesize-0.2)
         ("rust-itertools" ,rust-itertools-0.10)
         ("rust-jwalk" ,rust-jwalk-0.6)
         ("rust-num-cpus" ,rust-num-cpus-1)
         ("rust-open" ,rust-open-2)
         ("rust-petgraph" ,rust-petgraph-0.6)
         ("rust-sysinfo" ,rust-sysinfo-0.20)
         ("rust-trash" ,rust-trash-2)
         ("rust-tui" ,rust-tui-0.16)
         ("rust-tui-react" ,rust-tui-react-0.16)
         ("rust-unicode-segmentation" ,rust-unicode-segmentation-1)
         ("rust-wild" ,rust-wild-2))
        #:cargo-development-inputs
        (("rust-pretty-assertions" ,rust-pretty-assertions-0.7))))
    (home-page "https://github.com/Byron/dua-cli")
    (synopsis
      "A tool to conveniently learn about the disk usage of directories, fast!")
    (description
      "This package provides a tool to conveniently learn about the disk usage of directories, fast!")
    (license license:expat)))

