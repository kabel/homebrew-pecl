require_relative "../lib/php_pecl_formula"

class PhpAT73Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.6.5.tgz"
  sha256 "1fb0c02220a06b08185f74adf50653d3f2dc2c4aacef01c5c8a5ef2169e117a7"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "2562496e2fb8f20550f51f35f7939af98e30e5d20750203807119899fb59d219"
    sha256 catalina: "d8f1836cbe9f2a59a38bf128d6ccf0f4f482b7bccf378b492e4b9357955e0856"
    sha256 mojave:   "856662654c48c3a9255d70914213f9751203f78e8bded3228f3754c21e60b728"
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
