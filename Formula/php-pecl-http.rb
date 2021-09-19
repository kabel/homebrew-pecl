require_relative "../lib/php_pecl_formula"

class PhpPeclHttp < PhpPeclFormula
  extension_dsl "Extended HTTP Support"

  url "https://pecl.php.net/get/pecl_http-4.2.1.tgz"
  sha256 "ab07d55ccdfa897c897c26f1c0851b557b363431766c9ea4c799ea61443bdcdc"
  license "BSD-2-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "0d9864a36066828909221e10507086e32fb8e26c4481a0e3a391d08398b89d33"
    sha256 catalina: "3611bd88523eff927596165b11ca145d7da942d18bf55da24559fc87c4a34def"
    sha256 mojave:   "ee75c33f0bd801643fa225eeda5ca910554ae3a65d4aad151dba2a3c4b643cea"
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
