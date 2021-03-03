require_relative "../lib/php_pecl_formula"

class PhpAT73Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.6.3.tgz"
  sha256 "aa301d7f6c6c75e98e8512bcc080be250895dab1477541cc444ab47f5fdf9d9d"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 catalina: "f5f1d4adc3f3876a716aad25c29f991b603898bbb59f3bd693c4f9543bd3569a"
    sha256 mojave:   "6ca84d05d4eb72fce76840684c351af8d825d8742253172e34236db263f6d17f"
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
