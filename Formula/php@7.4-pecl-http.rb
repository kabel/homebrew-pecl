require_relative "../lib/php_pecl_formula"

class PhpAT74PeclHttp < PhpPeclFormula
  extension_dsl "Extended HTTP Support"

  url "https://pecl.php.net/get/pecl_http-3.2.5.tgz"
  sha256 "38f9345cee2e60b4919af73a6a291e1d3b90543c61edc9def6bd783f3b100728"
  license "BSD-2-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, catalina: "a82abe470815f5163b2f8ea1579c977c7831c2cbe7aa302c5c7fe5b7e8be9cf2"
  end

  depends_on "brotli"
  depends_on "curl"
  depends_on "icu4c"
  depends_on "libevent"
  depends_on "libidn2"
  depends_on "kabel/pecl/php@7.4-propro"
  depends_on "kabel/pecl/php@7.4-raphf"

  configure_arg %W[
    --with-http
    --with-http-libicu-dir=#{Formula["icu4c"].opt_prefix}
    --with-http-zlib-dir=#{MacOS.sdk_path_if_needed}/usr
  ]

  def install
    extra_includes = %W[
      -I#{Formula["kabel/pecl/php@7.4-propro"].opt_include}/php
      -I#{Formula["kabel/pecl/php@7.4-raphf"].opt_include}/php
    ]
    ENV["EXTRA_INCLUDES"] = extra_includes * " "
    super
  end

  def provides_extension
    "http"
  end
end
