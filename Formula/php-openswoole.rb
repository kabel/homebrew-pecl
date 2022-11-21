require_relative "../lib/php_pecl_formula"

class PhpOpenswoole< PhpPeclFormula
  extension_dsl "High Performance Programmatic Server for PHP with Async IO, Coroutines and Fibers"

  url "https://pecl.php.net/get/openswoole-4.12.0.tgz"
  sha256 "de2e6c5e098e1db0c02b5e28ac2d07d7a33a82a3fadf25abfe36c288e5e4dd99"
  revision 1
  license "Apache-2.0"

  conflicts_with "php-swoole", because: "both provide the same PHP API"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, monterey: "f744ee24c811d44059904140170c58ff98053b708910ef3d195b679472bb977a"
    sha256 cellar: :any, big_sur:  "aedafe908ce27e0c86e02289c33fe6c9f2ef1142dd6edad64c8a061fa8342547"
    sha256 cellar: :any, catalina: "610167629c5f41ca1bde670bf8f6affbe094db90eacff975d7b6e7d454c8f7e7"
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
