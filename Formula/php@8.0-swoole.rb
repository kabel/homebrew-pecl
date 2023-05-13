require_relative "../lib/php_pecl_formula"

class PhpAT80Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-5.0.3.tgz"
  sha256 "6c51e11199214921e07ab1b9f0e67781c96f7b8e06afb4225f05d1dc79832ead"
  license "Apache-2.0"

  conflicts_with "php@8.0-openswoole", because: "both provide the same PHP API"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, ventura:  "7fbc790506e357ce15ab27c41f837691fe44b3fa8c8cb14a44949a3420091b26"
    sha256 cellar: :any, monterey: "c545228ea1878c7b513108bdfb46844421274657f99d524bd158b5d36c1762f6"
    sha256 cellar: :any, big_sur:  "352299eb6169f3e43a1046cb03dce2242102e43aa7efc526ecf8ec59ad31b13b"
  end

  deprecate! date: "2022-11-26", because: :versioned_formula

  depends_on "brotli"
  depends_on "libnghttp2"
  depends_on "openssl@1.1"

  configure_arg %W[
    --enable-http2
    --enable-mysqlnd
    --enable-sockets
    --with-openssl-dir=#{Formula["openssl@1.1"].opt_prefix}
    --with-nghttp2_dir=#{Formula["libnghttp2"].opt_prefix}
  ]
end
