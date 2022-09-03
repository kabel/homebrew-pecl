require_relative "../lib/php_pecl_formula"

class PhpSwoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-5.0.0.tgz"
  sha256 "d3912a9e2878079cd1b357c4ebca08a5311830d3af4bdff44a88bec82cfc94ae"
  license "Apache-2.0"

  conflicts_with "php-openswoole", because: "both provide the same PHP API"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, monterey: "383c2f73ff68a2e81ed4802645f1a76f1f98bfdd9dd7c88972ab91cbfe80ff3d"
    sha256 cellar: :any, big_sur:  "6d20269f7a008c8d3b65fb03f682b229b02b18ce39fd5769c8d22ff4abb3e842"
    sha256 cellar: :any, catalina: "b1126019b8bcf5210aaa7a0e31fd15f0a4553565bebe2db7ff21f9e5ece41220"
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
