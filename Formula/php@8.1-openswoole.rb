require_relative "../lib/php_pecl_formula"

class PhpAT81Openswoole < PhpPeclFormula
  extension_dsl "High Performance Programmatic Server for PHP with Async IO, Coroutines and Fibers"

  url "https://pecl.php.net/get/openswoole-22.1.2.tgz"
  sha256 "ec9d08e9484bf95a0080738342a84f09b9c5b8222f4a03c4736caacb7668cb46"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:   "efc28404afd13490774e5fa85cc8d45e4faff991d424ab893479d9c29700989e"
    sha256 cellar: :any, ventura:  "06640ffd8490178fe2264d322cb9d7e55db582943f1ddcf47e46536f4ef9e4c7"
    sha256 cellar: :any, monterey: "b1cfea49c5c633e9a5ac5ba224fe5b32efa7c40d476e70a1776b4be61ce639d4"
  end

  deprecate! date: "2025-12-31", because: :unsupported

  conflicts_with "php@8.1-swoole", because: "both provide the same PHP API"

  depends_on "openssl@3"
  depends_on "brotli"

  configure_arg %W[
    --enable-http2
    --enable-mysqlnd
    --enable-sockets
    --with-openssl-dir=#{Formula["openssl@3"].opt_prefix}
  ]
end
