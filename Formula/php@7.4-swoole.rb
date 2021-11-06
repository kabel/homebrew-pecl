require_relative "../lib/php_pecl_formula"

class PhpAT74Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.8.1.tgz"
  sha256 "fe3699431cfe62c57eeb9af3ddd30d4232fdec454f8b95920c244f13564b8609"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "8fbf0bcba04a32b3d5a9c4b871a9343fccbe2ce056249c1de5eef33447a8d67e"
    sha256 catalina: "4076c85054b0223d4319e4a595f430404ce36170da15e63a518f6b002eab8312"
    sha256 mojave:   "1ac51570998e1cce6e6c42732213bf90fce446d6b38d4d7d95f37b14e09001f3"
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
