require_relative "../lib/php_pecl_formula"

class PhpAT74Openswoole< PhpPeclFormula
  extension_dsl "High Performance Programmatic Server for PHP with Async IO, Coroutines and Fibers"

  url "https://pecl.php.net/get/openswoole-4.12.0.tgz"
  sha256 "de2e6c5e098e1db0c02b5e28ac2d07d7a33a82a3fadf25abfe36c288e5e4dd99"
  revision 1
  license "Apache-2.0"

  conflicts_with "php@7.4-swoole", because: "both provide the same PHP API"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, monterey: "0fce434c8935853a74657de1af276b40ad5e7b86a923879e51f5a9767691890d"
    sha256 cellar: :any, big_sur:  "2e4d918b780977070775c5816054bb950ff7ed1fcef833fbca3994a6e4e0eea9"
    sha256 cellar: :any, catalina: "7743decd82edcf40627d7f76e3e4d53197210cb49b43eade188ebc2ee2aaa8eb"
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
