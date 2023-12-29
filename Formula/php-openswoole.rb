require_relative "../lib/php_pecl_formula"

class PhpOpenswoole< PhpPeclFormula
  extension_dsl "High Performance Programmatic Server for PHP with Async IO, Coroutines and Fibers"

  url "https://pecl.php.net/get/openswoole-22.1.2.tgz"
  sha256 "ec9d08e9484bf95a0080738342a84f09b9c5b8222f4a03c4736caacb7668cb46"
  license "Apache-2.0"

  conflicts_with "php-swoole", because: "both provide the same PHP API"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:   "905736bdb813736bf47132ec5a9e7ea6afe06ae7866d9f078d343017f3586cad"
    sha256 cellar: :any, ventura:  "c9086c975d1232acad0ac8015fb80ced15e838d4fece9e112223e14a97d749f1"
    sha256 cellar: :any, monterey: "dc3c532b5b3b5b968a428ca841dfd4ef92148145391531f942142e42050dfdcd"
  end

  depends_on "openssl@3"
  depends_on "brotli"

  configure_arg %W[
    --enable-http2
    --enable-mysqlnd
    --enable-sockets
    --with-openssl-dir=#{Formula["openssl@3"].opt_prefix}
  ]
end
