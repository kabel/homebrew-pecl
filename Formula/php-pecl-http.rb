require_relative "../lib/php_pecl_formula"

class PhpPeclHttp < PhpPeclFormula
  extension_dsl "Extended HTTP Support"

  url "https://pecl.php.net/get/pecl_http-4.2.3.tgz"
  sha256 "fa2ab558fc8f0928a10f35c0f566f7c4a1d32e727bd3a96579e4c28482ee9d6a"
  revision 2
  license "BSD-2-Clause"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, ventura:  "8d8389c194c9fb5b92d252f4bd3c3bb12938ac4345a0d8f41c998bd214c6b9c7"
    sha256 cellar: :any, monterey: "3beab6060f3e0a8b50f0d876c05baa7152f5859d1919aa245432eb73a320fcdd"
    sha256 cellar: :any, big_sur:  "8b402b4d2780113029813ae60a995e62eadf6754d7392e68f5dce2df445cc754"
  end

  depends_on "brotli"
  depends_on "curl"
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
