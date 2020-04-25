require_relative "../lib/php_pecl_formula"

class PhpAT73PeclHttp < PhpPeclFormula
  extension_dsl "Extended HTTP Support"

  url "https://pecl.php.net/get/pecl_http-3.2.3.tgz"
  sha256 "cf9d2a2ed335e572366025eca1d69e86c585f96ca07db341839a06f52ee4aa88"
  revision 1

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "0b3a7adc734eaa6c0303dad3a98badf22e1c4797d89fee283f47b34fea0455b6" => :mojave
    sha256 "8b5413d54dea6ed2880fe2ff814750d6cae748e675f89352262045341839f6a3" => :high_sierra
  end

  depends_on "brotli"
  depends_on "curl-openssl"
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
