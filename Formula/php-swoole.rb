require_relative "../lib/php_pecl_formula"

class PhpSwoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.8.1.tgz"
  sha256 "fe3699431cfe62c57eeb9af3ddd30d4232fdec454f8b95920c244f13564b8609"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "b311c1b0c7c1354644842d20ebefbc199e72791202543b1f6628ff12a4063540"
    sha256 catalina: "f82a810fcac899f30bcdf5c88e757c4d2083c04181308f240d1354472ef49122"
    sha256 mojave:   "ca7e6dc2c9daada8937e86d7dce27450c94caca7aefc67cf70250758b7ceafbc"
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
