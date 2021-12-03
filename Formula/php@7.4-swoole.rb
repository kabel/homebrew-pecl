require_relative "../lib/php_pecl_formula"

class PhpAT74Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.8.3.tgz"
  sha256 "39afd29e698c73f2995f23ffa97f414fb575c4f6b811625afc650d9e0a40e29c"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "de3198a9ff4e397822c165ec891def27054e2f9a9f32cf996f513541f45f425b"
    sha256 catalina: "669eeeb91a162e4b415401a20c3404a297a7cd313b66d03e84fd888094737fa3"
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
