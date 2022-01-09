require_relative "../lib/php_pecl_formula"

class PhpAT80Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.8.5.tgz"
  sha256 "14275af75bceefd6353b53e88efef5d152f3c305543c7c27d0ed649623b228f8"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "3be82e5e45487c52727813558d04a48a7282de696141b4498c48e4bb1aa7213e"
    sha256 catalina: "a90a247dd3de6219f527fdfaa88f334a166188d934163c61f47d89d1594020aa"
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
