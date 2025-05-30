require_relative "../lib/php_pecl_formula"

class PhpAT83Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-6.0.2.tgz"
  sha256 "ca9df27a4188f6670720ffaed9c4ecd6e832ea5aed55e554b63230f3147166ca"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:  "aa7b00f353b447fdf7654e86cfc03a23bef122a481af026069f48d478932c57b"
    sha256 cellar: :any, ventura: "284cb8528e55453d140312063d218cbc235a2097328df3422f8d9c8cc45ac479"
  end

  deprecate! date: "2027-12-31", because: :unsupported

  conflicts_with "php@8.3-openswoole", because: "both provide the same PHP API"

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
