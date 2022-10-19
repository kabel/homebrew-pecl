require_relative "../lib/php_pecl_formula"

class PhpAT74Openswoole< PhpPeclFormula
  extension_dsl "High Performance Programmatic Server for PHP with Async IO, Coroutines and Fibers"

  url "https://pecl.php.net/get/openswoole-4.12.0.tgz"
  sha256 "de2e6c5e098e1db0c02b5e28ac2d07d7a33a82a3fadf25abfe36c288e5e4dd99"
  license "Apache-2.0"

  conflicts_with "php@7.4-swoole", because: "both provide the same PHP API"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, monterey: "44d8b9f7f0faf419a39b83986f716c86d4664717dc01b4a91a7bdd904d2cac45"
    sha256 cellar: :any, big_sur:  "fb1f51133b6f48be0ccea9a8c777626bd33f40d4655ce2e3c3358999fde0d07d"
    sha256 cellar: :any, catalina: "d83a47a8646829ab2f2c629cc431742f736ea10e21619b5d92d1f3866ed83e8e"
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
