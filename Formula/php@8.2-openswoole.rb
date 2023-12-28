require_relative "../lib/php_pecl_formula"

class PhpAT82Openswoole< PhpPeclFormula
  extension_dsl "High Performance Programmatic Server for PHP with Async IO, Coroutines and Fibers"

  url "https://pecl.php.net/get/openswoole-22.1.2.tgz"
  sha256 "ec9d08e9484bf95a0080738342a84f09b9c5b8222f4a03c4736caacb7668cb46"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:   "ac1cb6f79fa6ebf423e46f2340a483f358af7c9ad91036d4a517cb5643e205da"
    sha256 cellar: :any, ventura:  "bb14c8ea613e366e309289ef9685d9e203da2d28c3037b5eb31568ce5c336bb2"
    sha256 cellar: :any, monterey: "49d0b989141ada64717d07ae6750096cb5f85fe2a088254f3c3c9525686a1c48"
  end

  deprecate! date: "2025-12-08", because: :unsupported

  conflicts_with "php@8.2-swoole", because: "both provide the same PHP API"

  depends_on "openssl@3"
  depends_on "brotli"

  configure_arg %W[
    --enable-http2
    --enable-mysqlnd
    --enable-sockets
    --with-openssl-dir=#{Formula["openssl@3"].opt_prefix}
  ]
end
