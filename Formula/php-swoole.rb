require_relative "../lib/php_pecl_formula"

class PhpSwoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.8.5.tgz"
  sha256 "14275af75bceefd6353b53e88efef5d152f3c305543c7c27d0ed649623b228f8"
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
