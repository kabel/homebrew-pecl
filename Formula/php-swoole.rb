require_relative "../lib/php_pecl_formula"

class PhpSwoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.4.5.tgz"
  sha256 "717fc7f8cfcb5a0721db18503d78defa0b76ed7219f8070f661bc3414e2cce44"
  revision 1

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "1b569ea1ffcfa400e1d01a4143b52f2f962de98a459ccee0df372819e353c45b" => :mojave
    sha256 "f3d676b955785c0f5016bda3081b7f300bd25ad532f71a9e3c6a50846f5247ec" => :high_sierra
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
