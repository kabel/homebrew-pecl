require_relative "../lib/php_pecl_formula"

class PhpAT80Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-5.0.0.tgz"
  sha256 "d3912a9e2878079cd1b357c4ebca08a5311830d3af4bdff44a88bec82cfc94ae"
  license "Apache-2.0"

  conflicts_with "php@8.0-openswoole", because: "both provide the same PHP API"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, monterey: "b71f6c4ba44e27043430204392882e06b1e70525c1ce37940e0b04181b9446b1"
    sha256 cellar: :any, big_sur:  "bd6b161265bb9769b2a58a76b611d336be9547ac06285c2de681ceaef358e574"
    sha256 cellar: :any, catalina: "7985674e38ff05c6c1a2b798e58b070af3e5b80bfe0ac44fd72b0eac11b306ba"
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
