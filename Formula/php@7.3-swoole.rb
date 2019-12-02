require_relative "../lib/php_pecl_formula"

class PhpAT73Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.4.12.tgz"
  sha256 "ad787fd0602faf8b54060496c3968f2a93c07f40fa083f22c9874699c31cfad5"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "578b873250f0c1d024550c5c7a0f7e5716fd10c8488cf607339be6b5e9d0910d" => :mojave
    sha256 "2a4e9ca3166549fddaca35a55991b77c61fb37a9877d2cd26da9311053b354a0" => :high_sierra
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
