require_relative "../lib/php_pecl_formula"

class PhpSwoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-6.0.2.tgz"
  sha256 "ca9df27a4188f6670720ffaed9c4ecd6e832ea5aed55e554b63230f3147166ca"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:  "2920e5349046af4f7b05301f7f53fdff1f1eec5316a74887472ca6e615088f06"
    sha256 cellar: :any, ventura: "ea62427d51812e6132950d8e94ae40fb99b47c037447435e898a02adfec2f142"
  end

  conflicts_with "php-openswoole", because: "both provide the same PHP API"

  depends_on "brotli"
  depends_on "libnghttp2"
  depends_on "openssl@3"

  configure_arg %W[
    --enable-mysqlnd
    --enable-openssl
    --enable-sockets
    --with-nghttp2_dir=#{Formula["libnghttp2"].opt_prefix}
  ]
end
