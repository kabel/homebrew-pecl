require_relative "../lib/php_pecl_formula"

class PhpAT72Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.4.18.tgz"
  sha256 "00b8fc5fc11406127c4f946a6cfe5421bf92fe5d018882a986c60bf61d86233b"

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
