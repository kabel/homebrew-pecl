require_relative "../lib/php_pecl_formula"

class PhpAT73Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.6.4.tgz"
  sha256 "6128388eb39a1a264779c7d5bc536cc5fb095e73cb700b965eeee023ac6df641"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "6bc443ded65b2cdd7ed48a1a25bf00c10cccb4ae893dae06424f2823538c236e"
    sha256 catalina: "001b32c458cd8b2157073d63d0142bef20c8aa6d0082323b72a505febdc9bb34"
    sha256 mojave:   "203af7059ec8c465ce28ae52654c1d69894b871625465e807991083c2e19cfde"
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
