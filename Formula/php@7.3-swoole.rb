require_relative "../lib/php_pecl_formula"

class PhpAT73Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.6.1.tgz"
  sha256 "86b9181c1cb0e50607aec52e02158095eb58baf43b12b27250767653bd69c6ef"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 "f2c90ed850f3a3ffb02414293b8affddeb02e40cd1d9db469006ea53a1f1ea0b" => :catalina
    sha256 "a66d14372421a0d045f4b39ea8fe57a03c39acdbb7285c605ef9a7c99e3d077a" => :mojave
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
