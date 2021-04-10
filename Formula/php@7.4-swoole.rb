require_relative "../lib/php_pecl_formula"

class PhpAT74Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.6.5.tgz"
  sha256 "1fb0c02220a06b08185f74adf50653d3f2dc2c4aacef01c5c8a5ef2169e117a7"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "2d21b787b1aba3ad4eec8cce849d00cff8df1b5cf7debafd9fa02ecac307e873"
    sha256 catalina: "1bb73d6863109e53881ad4a86ac70a38f5b4d8892de7847485143691b920b618"
    sha256 mojave:   "93347166af58cba95b6898f781caa109ad7ed05b2ee72657d98d1f4f069401b6"
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
