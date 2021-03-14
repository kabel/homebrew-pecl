require_relative "../lib/php_pecl_formula"

class PhpAT74Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.6.4.tgz"
  sha256 "6128388eb39a1a264779c7d5bc536cc5fb095e73cb700b965eeee023ac6df641"
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
