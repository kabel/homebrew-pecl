require_relative "../lib/php_pecl_formula"

class PhpSwoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.4.7.tgz"
  sha256 "7c1396b0a685e92b376eeda6e89624bb263b75795c1ca4c2a3c8a2dba9894a7b"

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
