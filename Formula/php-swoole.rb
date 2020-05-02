require_relative "../lib/php_pecl_formula"

class PhpSwoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.5.0.tgz"
  sha256 "6e3a4eaeca1abc56871fff6cd3c1dc7b87afeaeb3655a28fb99a3d30f7c3d0ab"

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
