require_relative "../lib/php_pecl_formula"

class PhpAT73Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.5.5.tgz"
  sha256 "3a470e4960ffe52db3606098806482f54e4374073da866a01f73614d4de45f28"
  license "Apache-2.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "1e3489bf292feb090ee5622a3364d0850226f8a67d731a4c472f09643217dfde" => :catalina
    sha256 "e9ec746edf641fe46cacfd91934e58a0e372263aaef384038801707f0dd51ebe" => :mojave
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
