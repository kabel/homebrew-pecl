require_relative "../lib/php_pecl_formula"

class PhpAT81PeclHttp < PhpPeclFormula
  extension_dsl "Extended HTTP Support"

  url "https://pecl.php.net/get/pecl_http-4.2.3.tgz"
  sha256 "fa2ab558fc8f0928a10f35c0f566f7c4a1d32e727bd3a96579e4c28482ee9d6a"
  license "BSD-2-Clause"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, ventura:  "c212998e872110749fccc7d1e7e67cba31fda7c34cea6df78e0cd471b61502a2"
    sha256 cellar: :any, monterey: "e2d1123fa58bdc6103a49434e92922d7dbae062d8c620b63ddc94f0c01eed4f1"
    sha256 cellar: :any, big_sur:  "2de372db3224107131b5ae10bfb452c108cd2eae9477e14c31ffa60259fce3eb"
  end

  deprecate! date: "2024-11-25", because: :unsupported

  depends_on "brotli"
  depends_on "curl"
  depends_on "icu4c"
  depends_on "libevent"
  depends_on "libidn2"
  depends_on "kabel/pecl/php@8.1-raphf"

  configure_arg %W[
    --with-http
    --with-http-libicu-dir=#{Formula["icu4c"].opt_prefix}
    --with-http-zlib-dir=#{MacOS.sdk_path_if_needed}/usr
  ]

  def install
    extra_includes = %W[
      -I#{Formula["kabel/pecl/php@8.1-raphf"].opt_include}/php
    ]
    ENV["EXTRA_INCLUDES"] = extra_includes * " "
    super
  end

  def provides_extension
    "http"
  end
end
