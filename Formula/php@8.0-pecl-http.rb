require_relative "../lib/php_pecl_formula"

class PhpAT80PeclHttp < PhpPeclFormula
  extension_dsl "Extended HTTP Support"

  url "https://pecl.php.net/get/pecl_http-4.2.4.tgz"
  sha256 "fb1e10c2e5edfb011ff8dc2e473cdbd2bbe0127d1279dfce4d98570555ac6ded"
  license "BSD-2-Clause"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, ventura:  "908cd62c993425dcf322baf0b2ad55262611a0a8d47e255908a5e8cdb8a6c6bb"
    sha256 cellar: :any, monterey: "8465aa4a4a77efa8f0a39718900c438fa6fc76b376a35cc747a83b39edf58dc9"
  end

  deprecate! date: "2023-11-26", because: :unsupported

  depends_on "brotli"
  depends_on "curl"
  depends_on "icu4c"
  depends_on "libevent"
  depends_on "libidn2"
  depends_on "kabel/pecl/php@8.0-raphf"

  configure_arg %W[
    --with-http
    --with-http-libicu-dir=#{Formula["icu4c"].opt_prefix}
  ]

  on_macos do
    configure_arg "--with-http-zlib-dir=#{MacOS.sdk_path_if_needed}/usr"
  end

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
