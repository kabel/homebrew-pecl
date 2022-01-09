require_relative "../lib/php_pecl_formula"

class PhpAT74Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.8.5.tgz"
  sha256 "14275af75bceefd6353b53e88efef5d152f3c305543c7c27d0ed649623b228f8"
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
