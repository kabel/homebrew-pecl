require_relative "../lib/php_pecl_formula"

class PhpSwoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-5.1.1.tgz"
  sha256 "5551ceace3c9f986403cd1f4659acf8f2b8750fcf02b5bd88c3f967ee258922f"
  license "Apache-2.0"

  conflicts_with "php-openswoole", because: "both provide the same PHP API"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, ventura:  "29238410d111d9ce412482c392ca69dc6027ca41b150fe3387114331ec52a149"
    sha256 cellar: :any, monterey: "49d0444b881fe813f8f897de28e09fa8c69f7816c6b97df59808cd1a403ecf88"
    sha256 cellar: :any, big_sur:  "a5ec2045455eb3af30a71b5a24b14ae47393b493a3ba0347049c00e5dfc2d654"
  end

  depends_on "brotli"
  depends_on "libnghttp2"
  depends_on "openssl@3"

  configure_arg %W[
    --enable-http2
    --enable-mysqlnd
    --enable-sockets
    --with-openssl-dir=#{Formula["openssl@3"].opt_prefix}
    --with-nghttp2_dir=#{Formula["libnghttp2"].opt_prefix}
  ]
end
