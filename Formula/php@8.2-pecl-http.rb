require_relative "../lib/php_pecl_formula"

class PhpAT82PeclHttp < PhpPeclFormula
  extension_dsl "Extended HTTP Support"

  url "https://pecl.php.net/get/pecl_http-4.2.6.tgz"
  sha256 "cd33230050b3f7c5ddb6f4383ce2a81f0bcdb934432029eec72ebf0f942b876d"
  license "BSD-2-Clause"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:  "73306a479e152a9cc27375b593c8fa486ec9cef73cc635ff0838f4dba55920c5"
    sha256 cellar: :any, ventura: "736cf75605acdbd3169ff862a6fba3280c66e54f9a391543454de955558b711d"
  end

  deprecate! date: "2026-12-31", because: :unsupported

  depends_on "brotli"
  depends_on "curl"
  depends_on "icu4c@76"
  depends_on "libevent"
  depends_on "libidn2"
  depends_on "openssl@3"
  depends_on "kabel/pecl/php@8.2-raphf"

  configure_arg %W[
    --with-http
    --with-http-libicu-dir=#{Formula["icu4c@76"].opt_prefix}
  ]

  on_macos do
    configure_arg "--with-http-zlib-dir=#{MacOS.sdk_path_if_needed}/usr"
  end

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
