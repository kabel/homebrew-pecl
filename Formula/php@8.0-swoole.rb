require_relative "../lib/php_pecl_formula"

class PhpAT80Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.8.10.tgz"
  sha256 "39fba19af24518e05e6b3f76c3175539e5d171096c254c23d4736e011ab27e72"
  license "Apache-2.0"

  conflicts_with "php@8.0-openswoole", because: "both provide the same PHP API"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, monterey: "21c7f384f528b8d33dd9360db85b982342f291df01d870c837d345b761d69cbb"
    sha256 cellar: :any, big_sur:  "eeddb1f4e98518d26985037860f5701b85080b6441fac3639ff7423177a0461b"
    sha256 cellar: :any, catalina: "1e4ccdba0080d57e503758cdfbf9f675f85af0c7633263ebd553d4117e4fdb0b"
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
