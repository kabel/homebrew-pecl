require_relative "../lib/php_pecl_formula"

class PhpAT72Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.4.15.tgz"
  sha256 "12655c97b701d3822bb32ca3fc137edfe77c11b5b3055e724644783a3618f058"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "09ff702622470a28aeb7364df69fa20c8d3917953fd23fc2021d674a2d66d512" => :mojave
    sha256 "b64288b2253f2b4d1aecb05b66ba94fa3d59cc3dded21af8c58a1557c518b1ac" => :high_sierra
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
