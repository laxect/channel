(use-modules 
  (guix packages)
  (guix download)
  (gnu packages fonts))

(define font-iosevka-term-ss10
  (package
    (inherit font-iosevka-term)
    (name "font-iosevka-term-ss10")
    (version (package-version font-iosevka))
    (source
     (origin
       (method url-fetch/zipbomb)
       (uri (string-append "https://github.com/be5invis/Iosevka"
                           "/releases/download/v" version
                           "/ttf-iosevka-term-ss10-" version ".zip"))
       (sha256
        (base32 "1asj7ah4w0sqz5kp1rf74ymrx53xhq5iv5xf9yrk14cnlinb1x38"))))))
