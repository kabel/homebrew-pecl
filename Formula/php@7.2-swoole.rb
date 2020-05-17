require_relative "../lib/php_pecl_formula"

class PhpAT72Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.5.1.tgz"
  sha256 "d48d90fb57f04f25911d33a2c5e99a6c615f58e7260c63702b769016079224d5"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "4ad33443d774df4628bd3e99c613ef38001bc7084ad64546188403f5513e4b97" => :catalina
    sha256 "e02d44a70b96fdeeda44f56ea70dc126435497e9fce3a384c59eb9615983eedb" => :mojave
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
