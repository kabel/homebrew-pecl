require_relative "../lib/php_pecl_formula"

class PhpAT81Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-5.1.1.tgz"
  sha256 "5551ceace3c9f986403cd1f4659acf8f2b8750fcf02b5bd88c3f967ee258922f"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, ventura:  "935f25250ad2cf963fd8551a3cf459d132fab9197710333ccc4aca14079e1c37"
    sha256 cellar: :any, monterey: "f69861e8ab096e9013ec329702c59164802105121393331d41fb1727aa09f8e3"
    sha256 cellar: :any, big_sur:  "1a9ee31eed713392120d8970530f521ba4b58fc71eed0007166a86e11eae4a9e"
  end

  deprecate! date: "2025-12-31", because: :unsupported

  conflicts_with "php@8.1-openswoole", because: "both provide the same PHP API"

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
