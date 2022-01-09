require_relative "../lib/php_pecl_formula"

class PhpSwoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.8.5.tgz"
  sha256 "14275af75bceefd6353b53e88efef5d152f3c305543c7c27d0ed649623b228f8"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "445364b75f2c4773e459d4c0584f99d7a6d5a220155a9b635a9752cc04f787ac"
    sha256 catalina: "938599bf7c43ce99f8e2852fb9b5d4daa6e73d131db5dd407326f146c51e9139"
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
