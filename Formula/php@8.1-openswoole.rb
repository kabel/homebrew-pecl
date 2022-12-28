require_relative "../lib/php_pecl_formula"

class PhpAT81Openswoole< PhpPeclFormula
  extension_dsl "High Performance Programmatic Server for PHP with Async IO, Coroutines and Fibers"

  url "https://pecl.php.net/get/openswoole-22.0.0.tgz"
  sha256 "bf1ebf241bd4a52b5b39102a37da8cfa4b3dfcbd2be4104adf408873dac89034"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, ventura:  "91d3bb370477308a7f408c408e5b7ac82ef6dbd7b3b6a13404c18098c57d1dc2"
    sha256 cellar: :any, monterey: "24fcc34b96296d7d01e0e5af4118fa6cd05d88d3f2c5256f4718f89c2d131474"
    sha256 cellar: :any, big_sur:  "dcaf7d299bb3282de9cbfab1dacdba613dfa59ee94546b5adbcdb2e5e2ec466c"
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
