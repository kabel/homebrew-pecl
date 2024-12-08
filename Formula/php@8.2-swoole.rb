require_relative "../lib/php_pecl_formula"

class PhpAT82Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-5.1.6.tgz"
  sha256 "335bf67aba33789450701b36fb21d5b46d72f837de92def2f80d4a0090eb57c8"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:  "2377be9e2f85e0d0e011959a8b5ade40fdfba8b0621617255dad7dac84ed55a1"
    sha256 cellar: :any, ventura: "acb9a9d259c5b082fc8bd53366ba05939d4a849c4f3951fac30ab84d083ce510"
  end

  deprecate! date: "2026-12-31", because: :unsupported

  conflicts_with "php@8.2-openswoole", because: "both provide the same PHP API"

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
