require_relative "../lib/php_pecl_formula"

class PhpSwoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.5.10.tgz"
  sha256 "01e5d40072e14d5240419b6da7c79ca53d0134040aa71ef9789277923c13a710"
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
