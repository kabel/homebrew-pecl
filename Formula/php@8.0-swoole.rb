require_relative "../lib/php_pecl_formula"

class PhpAT80Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-5.1.1.tgz"
  sha256 "5551ceace3c9f986403cd1f4659acf8f2b8750fcf02b5bd88c3f967ee258922f"
  license "Apache-2.0"

  conflicts_with "php@8.0-openswoole", because: "both provide the same PHP API"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, ventura:  "6a9fef4fe9af98eca2d61f843d17e31cc49029e7d0fe788f9bf54f7e3c5289a4"
    sha256 cellar: :any, monterey: "3b98be4687892e0ee1db322d86b99bbdb7cc7f3272f2c65ce0f59f1559614ab1"
    sha256 cellar: :any, big_sur:  "038b5171065525e61befe2e35b388d7611306fbb7de3a3c9062a76c3cdfd54c8"
  end

  deprecate! date: "2023-11-26", because: :unsupported

  depends_on "brotli"
  depends_on "libnghttp2"
  depends_on "openssl@3"

  configure_arg %W[
    --enable-http2
    --enable-mysqlnd
    --enable-sockets
    --with-openssl-dir=#{Formula["openssl@3"].opt_prefix}
    --with-nghttp2_dir=#{Formula["libnghttp2"].opt_prefix}
  ]
end
