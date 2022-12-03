require_relative "../lib/php_pecl_formula"

class PhpAT80Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-5.0.1.tgz"
  sha256 "6e73086b28ce447cdd895f1f36167b12befd48e10224b43169e35d2cf9de05ff"
  license "Apache-2.0"

  conflicts_with "php@8.0-openswoole", because: "both provide the same PHP API"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, ventura:  "ad3c08e4ea81f8447555ff284db01a4af2085f5dd081858203d93736675a0e2c"
    sha256 cellar: :any, monterey: "111a5af5f1cc8ff5857ecf1143884f5b1a15bc555f98fcf748ee3f41ef3bf8b8"
    sha256 cellar: :any, big_sur:  "747738780a5275c54938b64785adfb22ccafd1008af2c51707ce393d84cbb745"
  end

  deprecate! date: "2022-11-26", because: :versioned_formula

  depends_on "openssl@1.1"
  depends_on "brotli"

  configure_arg %W[
    --enable-http2
    --enable-mysqlnd
    --enable-sockets
    --with-openssl-dir=#{Formula["openssl@1.1"].opt_prefix}
  ]
end
