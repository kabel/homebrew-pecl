require_relative "../lib/php_pecl_formula"

class PhpAT72Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.4.17.tgz"
  sha256 "3276b06c648599196f6b477b656542fadeb15e0573cdc1b6121df727636608c1"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "91dc522c33c94a509018161da62d1130cffb65ec6fa4d1d64927b3c49c1cd64f" => :catalina
    sha256 "492ee8f47642d4710b0ad6951b93ff11c1b4805de74a9d056890fa8518d7df25" => :mojave
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
