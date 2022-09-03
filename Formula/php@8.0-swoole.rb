require_relative "../lib/php_pecl_formula"

class PhpAT80Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-5.0.0.tgz"
  sha256 "d3912a9e2878079cd1b357c4ebca08a5311830d3af4bdff44a88bec82cfc94ae"
  license "Apache-2.0"

  conflicts_with "php@8.0-openswoole", because: "both provide the same PHP API"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, monterey: "5387f249ad27ba73ff09a0b2b7baeb9805e3ea220155e67bbefbe19ee0a97f82"
    sha256 cellar: :any, big_sur:  "bce6508726c0776e108c3826dcdb738df676aa016454fa9cdff49ece89661302"
    sha256 cellar: :any, catalina: "46088b41a85d65dd43cf7ef1311e11ba9910948eecf7234293ded792b1710d97"
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
