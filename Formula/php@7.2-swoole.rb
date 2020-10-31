require_relative "../lib/php_pecl_formula"

class PhpAT72Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.5.6.tgz"
  sha256 "1a1502b54767c441e4de71e4d778e134d1c9e3ed5391d0b7aa6ee6a80b6b6df4"
  license "Apache-2.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "a32c1f7236e633684d450e96d9c31752e272c487ee64dfeb378e326aae91a7fa" => :catalina
    sha256 "2dc1dc8907c9b19d327c6b119367480f08fa59c583c55fea5fe6d74651366c9b" => :mojave
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
