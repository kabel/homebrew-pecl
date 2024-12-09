require_relative "../lib/php_pecl_formula"

class PhpPeclHttp < PhpPeclFormula
  extension_dsl "Extended HTTP Support"

  url "https://pecl.php.net/get/pecl_http-4.2.6.tgz"
  sha256 "cd33230050b3f7c5ddb6f4383ce2a81f0bcdb934432029eec72ebf0f942b876d"
  license "BSD-2-Clause"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:  "e6f393d281639d976ab68ced5e2bf020a02b5dc460843793c586e475a76a1e44"
    sha256 cellar: :any, ventura: "9e9c0f87b73072f0444bcdf847a6225268c535e967cccb60db074de02e3ef841"
  end

  depends_on "brotli"
  depends_on "curl"
  depends_on "icu4c@76"
  depends_on "libevent"
  depends_on "libidn2"
  depends_on "openssl@3"
  depends_on "kabel/pecl/php-raphf"

  configure_arg %W[
    --with-http
    --with-http-libicu-dir=#{Formula["icu4c@76"].opt_prefix}
  ]

  on_macos do
    configure_arg "--with-http-zlib-dir=#{MacOS.sdk_path_if_needed}/usr"
  end

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
