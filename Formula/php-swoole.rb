require_relative "../lib/php_pecl_formula"

class PhpSwoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.5.2.tgz"
  sha256 "f613601a90350ac0632dbab9955ffc7ae29dd1f0a58d3c9af9a1efb01c2925d0"
  license "Apache-2.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "2e7bf2ff1c82cb81baf579786431fdfc5e2db897bbfe795eed1bfe3e0bc0a8b9" => :catalina
    sha256 "73989a719909d0fb34152d88ad6c0f9b855fdd30aa83151287ca1dddf002567f" => :mojave
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
