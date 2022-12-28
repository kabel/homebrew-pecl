require_relative "../lib/php_pecl_formula"

class PhpOpenswoole< PhpPeclFormula
  extension_dsl "High Performance Programmatic Server for PHP with Async IO, Coroutines and Fibers"

  url "https://pecl.php.net/get/openswoole-22.0.0.tgz"
  sha256 "bf1ebf241bd4a52b5b39102a37da8cfa4b3dfcbd2be4104adf408873dac89034"
  license "Apache-2.0"

  conflicts_with "php-swoole", because: "both provide the same PHP API"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, ventura:  "ec8cb03dd2e75c7312c606a3ed8311d3595cb11b53d69b4fb6de3908f636c942"
    sha256 cellar: :any, monterey: "37361987f47a1373699f4ef24c9e32e4eb2668fa312c0a12b8783bc896e77a15"
    sha256 cellar: :any, big_sur:  "e4ba892830f0e46fb3e2e04c8cf434ef17d63314c23dbf8894d60faafb4d5b5c"
  end

  depends_on "openssl@1.1"
  depends_on "brotli"

  configure_arg %W[
    --enable-http2
    --enable-mysqlnd
    --enable-sockets
    --with-openssl-dir=#{Formula["openssl@1.1"].opt_prefix}
  ]
end
