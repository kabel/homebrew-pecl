require_relative "../lib/php_pecl_formula"

class PhpSwoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.5.10.tgz"
  sha256 "01e5d40072e14d5240419b6da7c79ca53d0134040aa71ef9789277923c13a710"
  license "Apache-2.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "a355fc7f001e335938f69273087cfc335b4796a27e89469b1bd4666243bed1a4" => :catalina
    sha256 "de40b5bd8b634865db8c703ef9d7613186737fe2754f72a6897e67eb03940d83" => :mojave
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
