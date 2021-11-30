require_relative "../lib/php_pecl_formula"

class PhpAT80Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.8.1.tgz"
  sha256 "fe3699431cfe62c57eeb9af3ddd30d4232fdec454f8b95920c244f13564b8609"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "92089a4bc952265b2ad31709b05d4d9fba7e7f80d78d31ced67134900ab97adb"
    sha256 catalina: "9d2f8f21992b7bcc0ba73a7362c9bfe10a665adb4f9e665bed9432f0c1af9203"
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
