require_relative "../lib/php_pecl_formula"

class PhpAT80PeclHttp < PhpPeclFormula
  extension_dsl "Extended HTTP Support"

  url "https://pecl.php.net/get/pecl_http-4.2.1.tgz"
  sha256 "ab07d55ccdfa897c897c26f1c0851b557b363431766c9ea4c799ea61443bdcdc"
  license "BSD-2-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "3611e1b3c9cc1b9a9334f5959ddd20f6e6a1a8946515d377bcb6a55d6a0af36d"
    sha256 catalina: "33cbc2207cd270a4b746ae464d55a0f854495e92860d2c5032b0af0e2d447711"
    sha256 mojave:   "6943f6cc53655ece49288812ca144b618ee3c82c11c614fb665f1691f730f451"
  end

  depends_on "brotli"
  depends_on "curl"
  depends_on "icu4c"
  depends_on "libevent"
  depends_on "libidn2"
  depends_on "kabel/pecl/php@8.0-raphf"

  configure_arg %W[
    --with-http
    --with-http-libicu-dir=#{Formula["icu4c"].opt_prefix}
    --with-http-zlib-dir=#{MacOS.sdk_path_if_needed}/usr
  ]

  def install
    extra_includes = %W[
      -I#{Formula["kabel/pecl/php@8.0-raphf"].opt_include}/php
    ]
    ENV["EXTRA_INCLUDES"] = extra_includes * " "
    super
  end

  def provides_extension
    "http"
  end
end
