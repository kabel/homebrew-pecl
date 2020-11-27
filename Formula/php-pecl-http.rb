require_relative "../lib/php_pecl_formula"

class PhpPeclHttp < PhpPeclFormula
  extension_dsl "Extended HTTP Support"

  url "https://pecl.php.net/get/pecl_http-4.0.0beta1.tgz"
  sha256 "9973a28c0aa83ce9f643d1df6c92d1e3d9a13f91e22b202004e37f6caa52460d"
  license "BSD-2-Clause"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "c13c038c49311a826408e4dd00ea92454e112ae5576ebcedb62fd1b02fe17a22" => :catalina
    sha256 "2d7d8c04adc85fdbd202b0a94895db562d563fd18f31b3cdf496a2bd090f61c5" => :mojave
  end

  depends_on "brotli"
  depends_on "curl-openssl"
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
