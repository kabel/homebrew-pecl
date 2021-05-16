require_relative "../lib/php_pecl_formula"

class PhpAT73PeclHttp < PhpPeclFormula
  extension_dsl "Extended HTTP Support"

  url "https://pecl.php.net/get/pecl_http-3.2.4.tgz"
  sha256 "37354ff7680b9b9839da8b908fff88227af7f6746c2611c873493af41d54f033"
  revision 1
  license "BSD-2-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "9280dc1f5fa1f5dc0ad44af86303a3549dc60c7b722885013e9ed41c3daff1c5"
    sha256 catalina: "a9329b201199571c42c066e8f2d92eebe9806cc70fcdefccb4ebdcf1dde4a03b"
    sha256 mojave:   "ea6c2e07fca1a1ac4bdce89e9779c1e3ed0a960cd21316df8ab76ed6ad095f01"
  end

  depends_on "brotli"
  depends_on "curl"
  depends_on "icu4c"
  depends_on "libevent"
  depends_on "libidn2"
  depends_on "kabel/pecl/php@7.3-propro"
  depends_on "kabel/pecl/php@7.3-raphf"

  configure_arg %W[
    --with-http
    --with-http-libicu-dir=#{Formula["icu4c"].opt_prefix}
    --with-http-zlib-dir=#{MacOS.sdk_path_if_needed}/usr
  ]

  def install
    extra_includes = %W[
      -I#{Formula["kabel/pecl/php@7.3-propro"].opt_include}/php
      -I#{Formula["kabel/pecl/php@7.3-raphf"].opt_include}/php
    ]
    ENV["EXTRA_INCLUDES"] = extra_includes * " "
    super
  end

  def provides_extension
    "http"
  end
end
