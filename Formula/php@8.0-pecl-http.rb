require_relative "../lib/php_pecl_formula"

class PhpAT80PeclHttp < PhpPeclFormula
  extension_dsl "Extended HTTP Support"

  url "https://pecl.php.net/get/pecl_http-4.2.2.tgz"
  sha256 "c338afd29259f0093f07f4e99b80705a2d5bb046c7ab32e5938eef29bbb63a6e"
  license "BSD-2-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, monterey: "04f6bd2012ef648a7eaf19ce75d10ff801620a4ba52fbc1e84350c3b21a487f9"
    sha256 cellar: :any, big_sur:  "3d8097526aee5f8c6ca2acbef907180836bef1606b6e059096a199706002f83e"
    sha256 cellar: :any, catalina: "ba99a6c84fd10b83089bbb551cdda5ebc23a47e814f91791ada6f8a55e32188f"
  end

  depends_on "brotli"
  depends_on "curl"
  depends_on "icu4c"
  depends_on "libevent"
  depends_on "libidn2"
  depends_on "kabel/pecl/php@8.0-raphf"

  configure_arg %W[
    --with-http
    --with-http-libicu-dir=#{Formula["icu4c"].opt_prefix}
    --with-http-zlib-dir=#{MacOS.sdk_path_if_needed}/usr
  ]

  def install
    extra_includes = %W[
      -I#{Formula["kabel/pecl/php@8.0-raphf"].opt_include}/php
    ]
    ENV["EXTRA_INCLUDES"] = extra_includes * " "
    super
  end

  def provides_extension
    "http"
  end
end
