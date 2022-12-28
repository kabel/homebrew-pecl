require_relative "../lib/php_pecl_formula"

class PhpOpenswoole< PhpPeclFormula
  extension_dsl "High Performance Programmatic Server for PHP with Async IO, Coroutines and Fibers"

  url "https://pecl.php.net/get/openswoole-22.0.0.tgz"
  sha256 "bf1ebf241bd4a52b5b39102a37da8cfa4b3dfcbd2be4104adf408873dac89034"
  license "Apache-2.0"

  conflicts_with "php-swoole", because: "both provide the same PHP API"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, ventura:  "182f1a18b485ec803911f6c481374192578fbe330d74d713c23dd83bcf84da0d"
    sha256 cellar: :any, monterey: "9262ba8ff63fc0702e3e428f9c02f017485d17a240a333380b9c1e9cea2ef011"
    sha256 cellar: :any, big_sur:  "e6a43b8a48ff8eaa316b064f3e888c1bf69d9ac4bb5dc0063cf6aa892c9616a0"
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
