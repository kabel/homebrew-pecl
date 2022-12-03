require_relative "../lib/php_pecl_formula"

class PhpAT80PeclHttp < PhpPeclFormula
  extension_dsl "Extended HTTP Support"

  url "https://pecl.php.net/get/pecl_http-4.2.3.tgz"
  sha256 "fa2ab558fc8f0928a10f35c0f566f7c4a1d32e727bd3a96579e4c28482ee9d6a"
  revision 1
  license "BSD-2-Clause"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, ventura:  "32701b03ca7453e56469e178117b98eb590daacd7f5df9f88f496f775da50d1e"
    sha256 cellar: :any, monterey: "0e0f4e636e6f32a0355ba3cead85f49972ebd137b719f6504225f466ed5dbd10"
    sha256 cellar: :any, big_sur:  "4a71c95d3bd2d57f9c7e1ac934ea98755fcca706b6bdd4bf4d5167908fb02a94"
  end

  deprecate! date: "2022-11-26", because: :versioned_formula

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
