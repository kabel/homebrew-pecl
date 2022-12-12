require_relative "../lib/php_pecl_formula"

class PhpSwoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-5.0.1.tgz"
  sha256 "6e73086b28ce447cdd895f1f36167b12befd48e10224b43169e35d2cf9de05ff"
  revision 1
  license "Apache-2.0"

  conflicts_with "php-openswoole", because: "both provide the same PHP API"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, ventura:  "34c81fcde9e5b71bc6e2e2159b649da472b4decc13f5b9e9e173a0e575f40478"
    sha256 cellar: :any, monterey: "02822b846277df10a6d7aea536857e2e0b2297fb01a2b8d491ee88b8247c5372"
    sha256 cellar: :any, big_sur:  "1e864e797dcb2e9df824fd61dd7f14a01e2e65528e83ce2e62367506b6b064d1"
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
