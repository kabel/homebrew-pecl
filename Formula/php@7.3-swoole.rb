require_relative "../lib/php_pecl_formula"

class PhpAT73Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.5.5.tgz"
  sha256 "3a470e4960ffe52db3606098806482f54e4374073da866a01f73614d4de45f28"
  license "Apache-2.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "e05046428bafd380fafd86db2c6d79b29eedac8d027d0617bd7078f90d9b18ec" => :catalina
    sha256 "c5517f772524e11df5d215b344a28977300a11caf3bea55e8dec29f78b34404f" => :mojave
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
