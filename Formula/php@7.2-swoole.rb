require_relative "../lib/php_pecl_formula"

class PhpAT72Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.5.4.tgz"
  sha256 "2cf0019d421e5a1f6d745df7655049d4b1c158db88270a296181b1d975449040"
  license "Apache-2.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "0ca2452d9e1751c939d78f3a52b79dea52e8fefdab13d31111714dd39544e8ae" => :catalina
    sha256 "dda34be4c51d9e9da07af86037aed0d4d57be5f39640f1a60b60ef60087b7168" => :mojave
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
