require_relative "../lib/php_pecl_formula"

class PhpAT73Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.7.1.tgz"
  sha256 "508fefdcb0d0899458ec7efaaa8972c66cd27d5ac83da0ef214792acce8a6fb5"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "e1ec9772254ff3193877a94d0ae0fdc4d59f46a1080726bd93753ea9c4ebf863"
    sha256 catalina: "06aa609fc9be58ada1a6a63021c6d795b49425b4d84948d29b23a2fd44e95826"
    sha256 mojave:   "696e3175f00154324446fc79536d13c80fdbedf9d9797edb2fd58ee86b823dab"
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
