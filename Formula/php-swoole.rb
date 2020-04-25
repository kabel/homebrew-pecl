require_relative "../lib/php_pecl_formula"

class PhpSwoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.4.18.tgz"
  sha256 "00b8fc5fc11406127c4f946a6cfe5421bf92fe5d018882a986c60bf61d86233b"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "f7447ae664f000ed8fdea0883dd4a92d6df4128ea310c6243332f4e587653dbb" => :catalina
    sha256 "f90244d2b432205eb6eb5db4c749ec8a646dde2cdbcbc170c66833662cb8895e" => :mojave
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
