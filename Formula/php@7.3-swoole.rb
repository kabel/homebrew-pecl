require_relative "../lib/php_pecl_formula"

class PhpAT73Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.7.1.tgz"
  sha256 "508fefdcb0d0899458ec7efaaa8972c66cd27d5ac83da0ef214792acce8a6fb5"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "c37452fdfa15f1960fb3380287f9a517ad7387ca5eecc3e746049c6de3200883"
    sha256 catalina: "6c74a4231e53d6dd6d38bb92e1ca9a97d73f84a8879f69e787d51f9fba8068a7"
    sha256 mojave:   "a538ee3adb275280377a3b6d2d33d286399a2325f12abcc9997df66352cfa9e1"
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
