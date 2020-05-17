require_relative "../lib/php_pecl_formula"

class PhpSwoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.5.1.tgz"
  sha256 "d48d90fb57f04f25911d33a2c5e99a6c615f58e7260c63702b769016079224d5"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "dbe4f789a67faafe6055c337d563022d99dd152c18ba39b714be73f7259b2a88" => :catalina
    sha256 "3ce53697986fb679883a258ac5cc0704b5df6830a92b2ce604d14a1da1ec2204" => :mojave
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
