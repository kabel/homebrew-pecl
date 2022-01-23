require_relative "../lib/php_pecl_formula"

class PhpAT80Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.8.6.tgz"
  sha256 "e28b7c2d7a567233260f77bf133ad834cc6a50f3eea50424bf689b2e46685b1b"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, big_sur:  "b1374fb81650e2d03298659365af14883a414d0aaa39c463e75f1c70aa1e8af9"
    sha256 cellar: :any, catalina: "bbdecffa49fefae5c1a99b2069274e7410f36c45a2331b7bd0fdb831c36189b2"
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
