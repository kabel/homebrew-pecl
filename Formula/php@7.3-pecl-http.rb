require_relative "../lib/php_pecl_formula"

class PhpAT73PeclHttp < PhpPeclFormula
  extension_dsl "Extended HTTP Support"

  url "https://pecl.php.net/get/pecl_http-3.2.4.tgz"
  sha256 "37354ff7680b9b9839da8b908fff88227af7f6746c2611c873493af41d54f033"
  license "BSD-2-Clause"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "f248167e15939dd7183846313004bd683ce8370b9ccc60b688d3ec5d448fb7e6" => :catalina
    sha256 "50c656f11d5df4b9ac74e262542cb17d7624a8a66aa307b13d15646238025d06" => :mojave
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
