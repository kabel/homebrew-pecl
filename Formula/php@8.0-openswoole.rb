require_relative "../lib/php_pecl_formula"

class PhpAT80Openswoole< PhpPeclFormula
  extension_dsl "High Performance Programmatic Server for PHP with Async IO, Coroutines and Fibers"

  url "https://pecl.php.net/get/openswoole-22.0.0.tgz"
  sha256 "bf1ebf241bd4a52b5b39102a37da8cfa4b3dfcbd2be4104adf408873dac89034"
  revision 1
  license "Apache-2.0"

  conflicts_with "php@8.0-swoole", because: "both provide the same PHP API"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, ventura:  "f85434836a4e37e5fe74091f86b59ac29ed83221041ced6d9b817f030c7a889e"
    sha256 cellar: :any, monterey: "fb9a0c9297c9e3f1db84177209dcd21e7a893ce558ed6e08f4bad3a3b1785551"
    sha256 cellar: :any, big_sur:  "4ca413efa2eaeea9068cfb9d6879fa2400142db3a129ca963645c1feaafcdd13"
  end

  deprecate! date: "2022-11-26", because: :versioned_formula

  depends_on "openssl@3"
  depends_on "brotli"

  configure_arg %W[
    --enable-http2
    --enable-mysqlnd
    --enable-sockets
    --with-openssl-dir=#{Formula["openssl@3"].opt_prefix}
  ]
end
