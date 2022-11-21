require_relative "../lib/php_pecl_formula"

class PhpAT74Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.8.11.tgz"
  sha256 "307ddd7909e24c8edd7f650d7caeefd6a90fe49c721b0de3f5a7407990430f67"
  license "Apache-2.0"

  conflicts_with "php@7.4-openswoole", because: "both provide the same PHP API"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, ventura:  "80e6e9ce7a4ab56daa34c054780f950f65cbe4f07750d93c33ad6cc56fdde5fd"
    sha256 cellar: :any, monterey: "26ac37492209f186f32f53c0c2f92f66592a66a945edf8896b52daeed49739d5"
    sha256 cellar: :any, big_sur:  "91159e64ee9305e6e63f4d11ea0baa081baaabee98a7c4e716fdaf1496f19d67"
    sha256 cellar: :any, catalina: "9f4851587f2780b6b28045454d61062bb64accb31bda397f78c4058c8ac7b899"
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
