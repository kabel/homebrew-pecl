require_relative "../lib/php_pecl_formula"

class PhpAT72Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.4.13.tgz"
  sha256 "6294210a58bdb3a5f2b9a472658c886360744ae458bce96d631d0657577c57b9"

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
