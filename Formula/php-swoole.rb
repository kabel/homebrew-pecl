require_relative "../lib/php_pecl_formula"

class PhpSwoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.7.0.tgz"
  sha256 "690bc9d4d4877e0a7d26e9a18b61ea7b2352caab5022a37d87b4cf7c776d4051"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "eb54c0051208a0c536e1af680dee754790c292ce0493ba1c4d22b35fe2608c19"
    sha256 catalina: "e8e3913143326c94efd4cb5c8e41ccd6a9a2a3f45f09a5e4d6c08bd49f567569"
    sha256 mojave:   "8a24978fc2c8cf6e14c90a00e096af33125a5daa0b0a7fed720f9f629832fdb9"
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
