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
    sha256 cellar: :any, ventura:  "67b3186fea41ed672ce3110677595ee8d9076a98589977e416746b93fe9584c2"
    sha256 cellar: :any, monterey: "88a15450134d65ebb6638eac32e295a50ced2f7f73cdf10452974134d3a0a7fa"
    sha256 cellar: :any, big_sur:  "0210ac802531a72700a92628571eeccc7506c62c7e39d034554680742c3a6a8a"
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
