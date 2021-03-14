require_relative "../lib/php_pecl_formula"

class PhpAT73Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.6.4.tgz"
  sha256 "6128388eb39a1a264779c7d5bc536cc5fb095e73cb700b965eeee023ac6df641"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "4d8e889597659ec2e1fccb886e96685e0808cfa226089f4b57ff3af3869f3ed3"
    sha256 catalina: "930b22da2cef722f4c9512be20778363fafbc2516d1cc4a422d5378f6e2ed52d"
    sha256 mojave:   "6f9680b532a902a9e61262dd7d994c10c757ccc6ba2fa4e064993a5137819561"
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
