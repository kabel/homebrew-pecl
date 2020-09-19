require_relative "../lib/php_pecl_formula"

class PhpSwoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.5.4.tgz"
  sha256 "2cf0019d421e5a1f6d745df7655049d4b1c158db88270a296181b1d975449040"
  license "Apache-2.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "48df3edaf914658e984728470f33ce3c6ebb480634219333b66752e230595e69" => :catalina
    sha256 "37f855dba435637f0a8490b8455278b3aa5f7e2fa8730bd79c077aaa9ba5b041" => :mojave
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
