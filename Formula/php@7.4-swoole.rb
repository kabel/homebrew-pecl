require_relative "../lib/php_pecl_formula"

class PhpAT74Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.8.9.tgz"
  sha256 "0c032ecd1dd8dd38cc579c5d3a395cde0def9623ce07008f0d6f386b1c1c3253"
  license "Apache-2.0"

  conflicts_with "php@7.4-openswoole", because: "both provide the same PHP API"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, monterey: "582d6e91cf41ed2df71c37afa676cf4ae489d43e6280f96b088819266d97d761"
    sha256 cellar: :any, big_sur:  "5cb2edecaf35d3979603d82d820571c620f7758298ccede094bf95d0798a9c9f"
    sha256 cellar: :any, catalina: "948b2ffb2476c92b17e12665504b59336e9cf9476410a6da454e515c8bf6a2ef"
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
