require_relative "../lib/php_pecl_formula"

class PhpAT74PeclHttp < PhpPeclFormula
  extension_dsl "Extended HTTP Support"

  url "https://pecl.php.net/get/pecl_http-3.3.0.tgz"
  sha256 "9194524be3997328b6788ef37e37485253e03eadc4bf51abd740358d03d2f536"
  license "BSD-2-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, monterey: "33327f56f80897e9a4ec97056d2fc12c88a4893cf8a884b1feb5e4143e5bb1dd"
    sha256 cellar: :any, big_sur:  "ba286721bccf42549d10d7974a815f8453ebd503875c0d79ba950fa8e84c4cec"
    sha256 cellar: :any, catalina: "acb0a469ec142e77b5de440cd0a0eab0310b1f6a6e9e6627ff087e5ae4aeb2ba"
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
