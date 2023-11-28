require_relative "../lib/php_pecl_formula"

class PhpAT82PeclHttp < PhpPeclFormula
  extension_dsl "Extended HTTP Support"

  url "https://pecl.php.net/get/pecl_http-4.2.4.tgz"
  sha256 "fb1e10c2e5edfb011ff8dc2e473cdbd2bbe0127d1279dfce4d98570555ac6ded"
  license "BSD-2-Clause"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:   "dc67c145bb56f6a17a5c54cf7250bd48bd539470d4e8f04aa0ce334490ecb978"
    sha256 cellar: :any, ventura:  "77ed1ea1606c3fe429cccb3465204f3c16bc124508429416a9dae8aab2aa22c1"
    sha256 cellar: :any, monterey: "874a56b3411692b309fcf8876dbe93452ef4b0a628fc7a97232781e1b8e26121"
  end

  deprecate! date: "2025-12-08", because: :unsupported

  depends_on "brotli"
  depends_on "curl"
  depends_on "icu4c"
  depends_on "libevent"
  depends_on "libidn2"
  depends_on "kabel/pecl/php@8.2-raphf"

  configure_arg %W[
    --with-http
    --with-http-libicu-dir=#{Formula["icu4c"].opt_prefix}
    --with-http-zlib-dir=#{MacOS.sdk_path_if_needed}/usr
  ]

  def install
    extra_includes = %W[
      -I#{Formula["kabel/pecl/php@8.2-raphf"].opt_include}/php
    ]
    ENV["EXTRA_INCLUDES"] = extra_includes * " "
    super
  end

  def provides_extension
    "http"
  end
end
