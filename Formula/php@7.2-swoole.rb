require_relative "../lib/php_pecl_formula"

class PhpAT72Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.5.1.tgz"
  sha256 "d48d90fb57f04f25911d33a2c5e99a6c615f58e7260c63702b769016079224d5"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "75d1d3767f0a79a2deceb01d3a5c903b6811e65499d25235c4fd2bd97a2c4d6b" => :catalina
    sha256 "4842fac8ec960f87de8ec21934af6eaf5c04ecdf13784e6b665e8b20ee97b5cf" => :mojave
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
