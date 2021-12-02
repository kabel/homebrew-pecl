require_relative "../lib/php_pecl_formula"

class PhpSwoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.8.3.tgz"
  sha256 "39afd29e698c73f2995f23ffa97f414fb575c4f6b811625afc650d9e0a40e29c"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "dd6da8464bc9256ed765f3a7c8bdf8d80e50189e5eadc9056b230cccdd3321b5"
    sha256 catalina: "9ac5294c9e42c4a94cb664dc2c9e045478c915dec012a6b3535cbe145beb352a"
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
