require_relative "../lib/php_pecl_formula"

class PhpSwoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.4.15.tgz"
  sha256 "12655c97b701d3822bb32ca3fc137edfe77c11b5b3055e724644783a3618f058"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "f5aadfdddb04c815e4bc31e74188d3c91bb1d9631dd56bd7e6c8c53471138a1b" => :mojave
    sha256 "743b42104703f7a38cebff4c473ac61052335a5f98f621df3100d130b7b88693" => :high_sierra
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
