require_relative "../lib/php_pecl_formula"

class PhpSwoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-5.0.1.tgz"
  sha256 "6e73086b28ce447cdd895f1f36167b12befd48e10224b43169e35d2cf9de05ff"
  license "Apache-2.0"

  conflicts_with "php-openswoole", because: "both provide the same PHP API"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, monterey: "3b4f9edc232b434738fd7f40dfa5ff129ca6223b90a5d810721468968939b189"
    sha256 cellar: :any, big_sur:  "bb3b0619aeb12239b4638c5ad1a8721fdbb93cf90e1cdd4c2c7182a82a2e49fb"
    sha256 cellar: :any, catalina: "36749258cdc7b4fd2828460e92fddabfc7ab398d859f1282455c973b19b2071f"
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
