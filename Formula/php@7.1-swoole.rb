require_relative "../lib/php_pecl_formula"

class PhpAT71Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.4.5.tgz"
  sha256 "717fc7f8cfcb5a0721db18503d78defa0b76ed7219f8070f661bc3414e2cce44"
  revision 1

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "d62c1520b2d23b18329ece47c5a3b8362af3ec9b91e0afde874728092082fa9f" => :mojave
    sha256 "2c2e8953903aead2137fd0ce34980cd3988e50f13fbbf444125d5081cfadd133" => :high_sierra
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
