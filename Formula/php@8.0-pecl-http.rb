require_relative "../lib/php_pecl_formula"

class PhpAT80PeclHttp < PhpPeclFormula
  extension_dsl "Extended HTTP Support"

  url "https://pecl.php.net/get/pecl_http-4.2.1.tgz"
  sha256 "ab07d55ccdfa897c897c26f1c0851b557b363431766c9ea4c799ea61443bdcdc"
  license "BSD-2-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "2de9dbcb46cb3dd0e1b99acb884a0352b12ea8fc4e05e6f624a6b480f9f917bf"
    sha256 catalina: "822593b11418bb2383d7af0f5b9aaff0d68aace1ad967eb77e479edebd3234ce"
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
