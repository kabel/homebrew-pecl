require_relative "../lib/php_pecl_formula"

class PhpSwoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.6.6.tgz"
  sha256 "75ac779852c8a692945fc20892b45ed6143cb20198e52d2448445fe39bd21541"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "55bb7e92b709c9f39095d162d5c10d487cd0b9131099541f486771ec8c739331"
    sha256 catalina: "e9237683a0d56b525c06b18d012e77e86ba385e273307904a442e93ad75f2fe7"
    sha256 mojave:   "5399340bcfc464a35e88121a6c6df3fd84ee564cba580e42dd4592524c83e787"
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
