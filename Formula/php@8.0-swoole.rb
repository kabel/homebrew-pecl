require_relative "../lib/php_pecl_formula"

class PhpAT80Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.8.6.tgz"
  sha256 "e28b7c2d7a567233260f77bf133ad834cc6a50f3eea50424bf689b2e46685b1b"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "b162f0da5a6449d372a767c93eda97214d108486453656bedd0b9c6f166302ea"
    sha256 catalina: "e2c22936900a5b88a280ecc608875840c838e8a0bbe55a3a5233425e53fc424b"
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
