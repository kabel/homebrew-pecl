require_relative "../lib/php_pecl_formula"

class PhpPeclHttp < PhpPeclFormula
  extension_dsl "Extended HTTP Support"

  url "https://pecl.php.net/get/pecl_http-3.2.1.tgz"
  sha256 "9c5ab5ace7f232699bf4d8997dd9135c92bb630357c51d968d1baca698fadc92"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "59602798ee4d86853a1f6c0608f1cb8e43c4886f5853307c8f199fb5952cf78d" => :mojave
    sha256 "faac306a68fe21acd6af6c2e5f1340371d446ae2b7b094cb9acd72b2e3d5bee6" => :high_sierra
  end

  depends_on "brotli"
  depends_on "curl-openssl"
  depends_on "icu4c"
  depends_on "libevent"
  depends_on "libidn2"
  depends_on "kabel/pecl/php-propro"
  depends_on "kabel/pecl/php-raphf"

  configure_arg %W[
    --with-http
    --with-http-libicu-dir=#{Formula["icu4c"].opt_prefix}
    --with-http-zlib-dir=#{MacOS.sdk_path_if_needed}/usr
  ]

  def install
    extra_includes = %W[
      -I#{Formula["kabel/pecl/php-propro"].opt_include}/php
      -I#{Formula["kabel/pecl/php-raphf"].opt_include}/php
    ]
    ENV["EXTRA_INCLUDES"] = extra_includes * " "
    super
  end

  def provides_extension
    "http"
  end
end
