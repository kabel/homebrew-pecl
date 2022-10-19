require_relative "../lib/php_pecl_formula"

class PhpAT80Openswoole< PhpPeclFormula
  extension_dsl "High Performance Programmatic Server for PHP with Async IO, Coroutines and Fibers"

  url "https://pecl.php.net/get/openswoole-4.12.0.tgz"
  sha256 "de2e6c5e098e1db0c02b5e28ac2d07d7a33a82a3fadf25abfe36c288e5e4dd99"
  license "Apache-2.0"

  conflicts_with "php@8.0-swoole", because: "both provide the same PHP API"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, monterey: "1a40947bea6d94e9873136460a751efdf6e520c1bc3c6db3a060ba4918be5598"
    sha256 cellar: :any, big_sur:  "709d6d6fc9dc58d7f3e344318638383f938359a76646f4cf5c05f4348d6dfe50"
    sha256 cellar: :any, catalina: "d443b38f58da24b408f494163ffa64c7ca9d5d95b48e67b5e612e177efe55075"
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
