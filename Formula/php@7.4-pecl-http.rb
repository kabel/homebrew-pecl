require_relative "../lib/php_pecl_formula"

class PhpAT74PeclHttp < PhpPeclFormula
  extension_dsl "Extended HTTP Support"

  url "https://pecl.php.net/get/pecl_http-3.2.3.tgz"
  sha256 "cf9d2a2ed335e572366025eca1d69e86c585f96ca07db341839a06f52ee4aa88"
  license "BSD-2-Clause"
  revision 2

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "f78efd0e9d3d78f6fee9b4ca513514fe58051e11b52b9038ccd0b4ec606af469" => :catalina
    sha256 "b38fe48e6d79b4e817e3388d64867544c1c26676579825e7f13a5430e1feda6b" => :mojave
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
