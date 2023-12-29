require_relative "../lib/php_pecl_formula"

class PhpAT81PeclHttp < PhpPeclFormula
  extension_dsl "Extended HTTP Support"

  url "https://pecl.php.net/get/pecl_http-4.2.4.tgz"
  sha256 "fb1e10c2e5edfb011ff8dc2e473cdbd2bbe0127d1279dfce4d98570555ac6ded"
  license "BSD-2-Clause"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:   "3f3bd83d0eb806e9283af90c59c25a9d4b5686587b17a33520f8d6bbbcb31099"
    sha256 cellar: :any, ventura:  "c45447bbf6a9e1740fcb7fcd15ebe78474f03070808f5658c2a06a21a6c0c86f"
    sha256 cellar: :any, monterey: "d19f9d7d946b44ec9628e35e84e8045225fff8e7b1afaed616df34e2af7bb688"
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
  ]

  on_macos do
    configure_arg "--with-http-zlib-dir=#{MacOS.sdk_path_if_needed}/usr"
  end

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
