require_relative "../lib/php_pecl_formula"

class PhpSwoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.6.0.tgz"
  sha256 "84bcb805bf4401a25f329972f313a57c125fc32e022e91e0054644a67a6d3d95"
  license "Apache-2.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "abe01bdff477694abe22c3ffe800ff5e74010b5257ee0827512979a7e326c5e5" => :catalina
    sha256 "02e53705b9c4773252cae851d3b3d9ec03378cff1f2983ed4f421cd9fe8369f8" => :mojave
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
