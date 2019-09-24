require_relative "../lib/php_pecl_formula"

class PhpSwoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.4.6.tgz"
  sha256 "3e8835cc47867557fb4dbfc74522e3951bd15abb6100dd0ad81cf87634926fb9"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "eb048b8643d732ed54c7e56f4fe6ed4a71426499f6597abcaa6e02a5804b7f40" => :mojave
    sha256 "c8f5742642c6bf01fbcf56178c16a8341801e956dc07497248926cebb4bd12f3" => :high_sierra
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
