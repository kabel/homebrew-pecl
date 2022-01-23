require_relative "../lib/php_pecl_formula"

class PhpAT74Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.8.6.tgz"
  sha256 "e28b7c2d7a567233260f77bf133ad834cc6a50f3eea50424bf689b2e46685b1b"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, big_sur:  "6a08434bf45932bbac6efb301235245242ff63b85c89746d2fe1043b971e0c31"
    sha256 cellar: :any, catalina: "c05c5f39dc652980a92a9c9a763815ac7a984f64b4fa87152bcfcd439c770dfc"
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
