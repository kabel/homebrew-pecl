require_relative "../lib/php_pecl_formula"

class PhpAT80Openswoole< PhpPeclFormula
  extension_dsl "High Performance Programmatic Server for PHP with Async IO, Coroutines and Fibers"

  url "https://pecl.php.net/get/openswoole-4.12.0.tgz"
  sha256 "de2e6c5e098e1db0c02b5e28ac2d07d7a33a82a3fadf25abfe36c288e5e4dd99"
  license "Apache-2.0"

  conflicts_with "php@8.0-swoole", because: "both provide the same PHP API"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, monterey: "07a292e7c157003190719780a5aa500850d4ed7b4aba0a5abcfe9e153dfc58c5"
    sha256 cellar: :any, big_sur:  "7c746fee3d2c6ee69a68e30491bb8b4adced3cb4031f239e30b03f1d698bede1"
    sha256 cellar: :any, catalina: "50a0115abea5bd317ce510c2eff5cd3a7c87b304dc64e4d17491907f81a54cbb"
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
