require_relative "../lib/php_pecl_formula"

class PhpAT74Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.6.1.tgz"
  sha256 "86b9181c1cb0e50607aec52e02158095eb58baf43b12b27250767653bd69c6ef"
  license "Apache-2.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "db85fa90b08dbd06b8b56b4399ee15466238c03a2ce0b07772dd8b929530da5c" => :catalina
    sha256 "58ee81526fb018ff535b51ca12cf944d46badbde658fdc0246cfb1544c2de53f" => :mojave
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
