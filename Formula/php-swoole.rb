require_relative "../lib/php_pecl_formula"

class PhpSwoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.8.3.tgz"
  sha256 "39afd29e698c73f2995f23ffa97f414fb575c4f6b811625afc650d9e0a40e29c"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "7737cc3e786ad93014faf5d9f7c260fc6cd6cae20a2daeffdde5fa3060e7fa53"
    sha256 catalina: "7d9960c97f6a20789073b91f293c78e4270a1bd8a0ecbdbbde000920ad6bf530"
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
