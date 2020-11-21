require_relative "../lib/php_pecl_formula"

class PhpAT72Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.5.8.tgz"
  sha256 "202efb1ca36b7d30a54ee7571c7db34a5bf73a983a2c97f68cf074891a8f12c9"
  license "Apache-2.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "513da7c6373a079d0df2c98e3396a3e90603207da4bbceb484dba66443b259be" => :catalina
    sha256 "c28b2a39bc9ebd294120a8174b365a92de072c1963faf464b44cd97411be2752" => :mojave
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
