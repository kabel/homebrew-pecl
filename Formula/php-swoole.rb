require_relative "../lib/php_pecl_formula"

class PhpSwoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.4.12.tgz"
  sha256 "ad787fd0602faf8b54060496c3968f2a93c07f40fa083f22c9874699c31cfad5"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "2364fe62ba34cd5fd9e4dc31440ed750041e98d8db7f903f1626c116c2e1a534" => :mojave
    sha256 "fa9f711ee43dfec33de10d76890523c63aae7bb637130e0cb3e275ca2b0ad87b" => :high_sierra
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
