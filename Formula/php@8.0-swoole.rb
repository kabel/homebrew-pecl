require_relative "../lib/php_pecl_formula"

class PhpAT80Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.8.3.tgz"
  sha256 "39afd29e698c73f2995f23ffa97f414fb575c4f6b811625afc650d9e0a40e29c"
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
