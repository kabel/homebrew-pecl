require_relative "../lib/php_pecl_formula"

class PhpAT82Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-6.0.2.tgz"
  sha256 "ca9df27a4188f6670720ffaed9c4ecd6e832ea5aed55e554b63230f3147166ca"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:  "3977c7f3b66b6fcbbe1d89141b73e52beac16300e499f35c707b81fbe0cbf470"
    sha256 cellar: :any, ventura: "ede390151cc7ad454586d0d564a087628b8d0196b6e9a3147de117a3de570552"
  end

  deprecate! date: "2026-12-31", because: :unsupported

  conflicts_with "php@8.2-openswoole", because: "both provide the same PHP API"

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
