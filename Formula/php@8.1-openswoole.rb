require_relative "../lib/php_pecl_formula"

class PhpAT81Openswoole< PhpPeclFormula
  extension_dsl "High Performance Programmatic Server for PHP with Async IO, Coroutines and Fibers"

  url "https://pecl.php.net/get/openswoole-22.0.0.tgz"
  sha256 "bf1ebf241bd4a52b5b39102a37da8cfa4b3dfcbd2be4104adf408873dac89034"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, ventura:  "0bb079d31230a69c6e23c3983f18c6d38c724de3984583aaa2a3efb041913f77"
    sha256 cellar: :any, monterey: "8cbf84b919e577ae37e64cfe1f83dbb9fa06c04ce96b9e143a250dc346817a31"
    sha256 cellar: :any, big_sur:  "5e9e66be6dd9226b086f50a0166078ca0acaa435c3a552a29ef00d755cfe89f1"
  end

  conflicts_with "php@8.1-swoole", because: "both provide the same PHP API"

  depends_on "openssl@1.1"
  depends_on "brotli"

  configure_arg %W[
    --enable-http2
    --enable-mysqlnd
    --enable-sockets
    --with-openssl-dir=#{Formula["openssl@1.1"].opt_prefix}
  ]
end
