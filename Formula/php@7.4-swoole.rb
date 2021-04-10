require_relative "../lib/php_pecl_formula"

class PhpAT74Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.6.5.tgz"
  sha256 "1fb0c02220a06b08185f74adf50653d3f2dc2c4aacef01c5c8a5ef2169e117a7"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "57e78fd16839e7227cebafa8758b836dddb26dac61eae433ead892bd26b270f2"
    sha256 catalina: "be1a3e4bece198f0f6ff11fd2f9564f119bab6e536869acbf039c3a98dce6b1d"
    sha256 mojave:   "de2f04871becb79bea9763841bcf659db0234fcb68dd21f0118929c8be18a266"
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
