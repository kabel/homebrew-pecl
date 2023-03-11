require_relative "../lib/php_pecl_formula"

class PhpSwoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-5.0.2.tgz"
  sha256 "ecefcab9ca36f6e724b6f8c9cf784b1c2616d3efe4544be3eda629ad2037fe68"
  license "Apache-2.0"

  conflicts_with "php-openswoole", because: "both provide the same PHP API"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, ventura:  "1cb16bfd885f1c646f367cd8cedee9d625bef56d205b3cfa02466edf1e94ce7a"
    sha256 cellar: :any, monterey: "933bf625df393cbc4fbe9238cb7eb4271442647c45e633774a5c486c60173261"
    sha256 cellar: :any, big_sur:  "c631011f5c5693ba374a0dd9cdb48e93aec073be153245ddd1baf9911bdc091f"
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
