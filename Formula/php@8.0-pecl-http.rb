require_relative "../lib/php_pecl_formula"

class PhpAT80PeclHttp < PhpPeclFormula
  extension_dsl "Extended HTTP Support"

  url "https://pecl.php.net/get/pecl_http-4.2.3.tgz"
  sha256 "fa2ab558fc8f0928a10f35c0f566f7c4a1d32e727bd3a96579e4c28482ee9d6a"
  license "BSD-2-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, monterey: "9a7a15580d62bd47a7057c5a4d5dc4d6096f0876ca326bbab8c597321d41a8bc"
    sha256 cellar: :any, big_sur:  "017066b9dcc3cb0eea09a1a81025c94ede8ca2bff25c7e1191c09671f2334f7c"
    sha256 cellar: :any, catalina: "ed45ce0fe03427da7fe72a3eaefd2f7ca65089fa20562feb386b5d1b685f2ac0"
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
