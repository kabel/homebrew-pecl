require_relative "../lib/php_pecl_formula"

class PhpAT72PeclHttp < PhpPeclFormula
  extension_dsl "Extended HTTP Support"

  url "https://pecl.php.net/get/pecl_http-3.2.1.tgz"
  sha256 "9c5ab5ace7f232699bf4d8997dd9135c92bb630357c51d968d1baca698fadc92"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "9147ddbfe2a757921eebe29296582fa6ba3f301b428a610fec3367178271aefe" => :mojave
    sha256 "458fa26c803bdc17735dc073d4f9a1d319ac4580bf35e61e597332c19c0e0b8b" => :high_sierra
  end

  depends_on "brotli"
  depends_on "curl-openssl"
  depends_on "icu4c"
  depends_on "libevent"
  depends_on "libidn2"
  depends_on "kabel/pecl/php@7.2-propro"
  depends_on "kabel/pecl/php@7.2-raphf"

  configure_arg %W[
    --with-http
    --with-http-libicu-dir=#{Formula["icu4c"].opt_prefix}
    --with-http-zlib-dir=#{MacOS.sdk_path_if_needed}/usr
  ]

  def install
    extra_includes = %W[
      -I#{Formula["kabel/pecl/php@7.2-propro"].opt_include}/php
      -I#{Formula["kabel/pecl/php@7.2-raphf"].opt_include}/php
    ]
    ENV["EXTRA_INCLUDES"] = extra_includes * " "
    super
  end

  def provides_extension
    "http"
  end
end
