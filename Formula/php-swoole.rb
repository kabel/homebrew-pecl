require_relative "../lib/php_pecl_formula"

class PhpSwoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.4.17.tgz"
  sha256 "3276b06c648599196f6b477b656542fadeb15e0573cdc1b6121df727636608c1"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "d61ae30a86f3356a6bfac010eda48f581c15810abf4ccdd6b6b8e4c3c917e8bc" => :catalina
    sha256 "b9e83bed66b3ff121b149e3392e5126a0cd5b23354428ca3bdea1a836531dc46" => :mojave
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
