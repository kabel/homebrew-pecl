require_relative "../lib/php_pecl_formula"

class PhpAT74Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.6.4.tgz"
  sha256 "6128388eb39a1a264779c7d5bc536cc5fb095e73cb700b965eeee023ac6df641"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "7834c82d4faaf1b410e10574d64761d0718828418867c7d54e82b8455e57371d"
    sha256 catalina: "fde37e0536dcb35faf770ff1869157406ae420275ce0bbdd19ddfecb92740d60"
    sha256 mojave:   "7ad4bfe1800aac7213ee5a80dd27c25ae71f351122c88a4953d0dc8d72eac910"
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
