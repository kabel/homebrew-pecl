require_relative "../lib/php_pecl_formula"

class PhpSwoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.4.16.tgz"
  sha256 "04864e1b705c2b62198a5f3890dd3c23f95a4787c97f3c1b086f0367bdaf9a87"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "948749c108f5e9a3af168903a3ca1e3b311f88e9d9f60d5159a931b9d6ef511f" => :catalina
    sha256 "725b218e5aba68200bf0440783b1afad104a3e7be49a7033e82382c909166f2e" => :mojave
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
