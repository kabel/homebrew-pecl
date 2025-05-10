require_relative "../lib/php_pecl_formula"

class PhpSwoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-6.0.2.tgz"
  sha256 "ca9df27a4188f6670720ffaed9c4ecd6e832ea5aed55e554b63230f3147166ca"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:  "1e5a965f9553137fed9f2516a25144729e5f88d5282cd4cc1ebc1e2174a9d4b7"
    sha256 cellar: :any, ventura: "f28aa078f85222465fe8e8c104e5c20af29d59dca63bf847e0d155827f21326d"
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
