require_relative "../lib/php_pecl_formula"

class PhpAT73PeclHttp < PhpPeclFormula
  extension_dsl "Extended HTTP Support"

  url "https://pecl.php.net/get/pecl_http-3.2.3.tgz"
  sha256 "cf9d2a2ed335e572366025eca1d69e86c585f96ca07db341839a06f52ee4aa88"
  license "BSD-2-Clause"
  revision 2

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "ee961f84ce2eb6220ee7fb9a1c063738e96420590aa976658297ac1c94ee0b86" => :catalina
    sha256 "b08e29e2aec535ed5765390910872b49205a80b9f57e6aa00bbd330277713306" => :mojave
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
