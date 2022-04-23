require_relative "../lib/php_pecl_formula"

class PhpAT74Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.8.9.tgz"
  sha256 "0c032ecd1dd8dd38cc579c5d3a395cde0def9623ce07008f0d6f386b1c1c3253"
  license "Apache-2.0"

  conflicts_with "php@7.4-openswoole", because: "both provide the same PHP API"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, monterey: "7a6b34bc77942a6ec60540318a53afa2e5bcd57c059e04e53aecea49a4c19e3b"
    sha256 cellar: :any, big_sur:  "813bbc804b3ed9f108754f39afc582afec43155e62884f2c59f2b05d11644be2"
    sha256 cellar: :any, catalina: "d34bdaab90b0d12aa1ad80df73068c442911baf7c31951e06ef09d757715850e"
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
