require_relative "../lib/php_pecl_formula"

class PhpAT81Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-6.0.2.tgz"
  sha256 "ca9df27a4188f6670720ffaed9c4ecd6e832ea5aed55e554b63230f3147166ca"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:  "07b13a12d36a307eea97a255c301a6b0668591dc559a2ff4c6fa766cf14dd55c"
    sha256 cellar: :any, ventura: "9ee98685025da28b4deb83be3015c96e7c99858df8c0c31d3b5a5103dc68b825"
  end

  deprecate! date: "2025-12-31", because: :unsupported

  conflicts_with "php@8.1-openswoole", because: "both provide the same PHP API"

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
