require_relative "../lib/php_pecl_formula"

class PhpAT73Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.4.13.tgz"
  sha256 "6294210a58bdb3a5f2b9a472658c886360744ae458bce96d631d0657577c57b9"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "d9667c38f3ae16eba69702e49c24283bdf89f5eea8851d9dbab3639abbb86b1e" => :mojave
    sha256 "9b8c5d5c953ce7b5f565164bccb51e8bbd5d23469bd7580519e25a065019a8a8" => :high_sierra
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
