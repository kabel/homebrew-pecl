require_relative "../lib/php_pecl_formula"

class PhpPeclHttp < PhpPeclFormula
  extension_dsl "Extended HTTP Support"

  url "https://pecl.php.net/get/pecl_http-4.2.0.tgz"
  sha256 "9898c2e2b2c78ce11fca1cb3a151ff201ce957afb8b8c1985a52dd5eae35812e"
  license "BSD-2-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "2ce9dfc0cfe5ce98207679b0e271ba29c592bfa7a482c589b37859f58b1315ed"
    sha256 catalina: "6564b45f72beb33a7748fc5e113226d97dee11b1ddd265e77f902d9948028f2e"
    sha256 mojave:   "d5187e737036bb557b934adaf7b43966eeb1a84995f2c64e358553ba42cf4880"
  end

  depends_on "brotli"
  depends_on "curl"
  depends_on "icu4c"
  depends_on "libevent"
  depends_on "libidn2"
  depends_on "kabel/pecl/php-raphf"

  configure_arg %W[
    --with-http
    --with-http-libicu-dir=#{Formula["icu4c"].opt_prefix}
    --with-http-zlib-dir=#{MacOS.sdk_path_if_needed}/usr
  ]

  def install
    extra_includes = %W[
      -I#{Formula["kabel/pecl/php-raphf"].opt_include}/php
    ]
    ENV["EXTRA_INCLUDES"] = extra_includes * " "
    super
  end

  def provides_extension
    "http"
  end
end
