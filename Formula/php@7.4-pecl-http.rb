require_relative "../lib/php_pecl_formula"

class PhpAT74PeclHttp < PhpPeclFormula
  extension_dsl "Extended HTTP Support"

  url "https://pecl.php.net/get/pecl_http-3.2.4.tgz"
  sha256 "37354ff7680b9b9839da8b908fff88227af7f6746c2611c873493af41d54f033"
  revision 1
  license "BSD-2-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "1f2c5e8ffee46ecf14272a93518324643377da5b62ac55543fc5bb40e5a39b53"
    sha256 catalina: "b004a550e6dbe9962dc177e497351abb2d6dd26f6f9097f43d491025983bdada"
    sha256 mojave:   "2d4ce9444f158d0dcc21ef8e53301caf5686162068d9f8e3c98f2d14a0b048f2"
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
