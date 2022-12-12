require_relative "../lib/php_pecl_formula"

class PhpAT81Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-5.0.1.tgz"
  sha256 "6e73086b28ce447cdd895f1f36167b12befd48e10224b43169e35d2cf9de05ff"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, ventura:  "c70f8e37ef0c3529d93d98c84718356395153ad16c4a0f8661b556dbbb784da4"
    sha256 cellar: :any, monterey: "6b73ddb4e5bf5ff25c2fefedf722c5e0cb0914960797a11bc43ec53209715ac5"
    sha256 cellar: :any, big_sur:  "77d5d88efa28c35d2f56435c0222a40f24f32930d413a2936d16adf907b3b6e1"
  end

  conflicts_with "php@8.1-openswoole", because: "both provide the same PHP API"

  depends_on "openssl@1.1"
  depends_on "brotli"

  configure_arg %W[
    --enable-http2
    --enable-mysqlnd
    --enable-sockets
    --with-openssl-dir=#{Formula["openssl@1.1"].opt_prefix}
  ]
end
