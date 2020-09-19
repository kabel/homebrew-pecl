require_relative "../lib/php_pecl_formula"

class PhpAT72Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.5.4.tgz"
  sha256 "2cf0019d421e5a1f6d745df7655049d4b1c158db88270a296181b1d975449040"
  license "Apache-2.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "515aa06b7da962620d1db9271bb08dfbcedb8e89f56ce5874e096b04cb4b2601" => :catalina
    sha256 "fb528181fd565c020ef6edbc3da26c951aede51722d3f311a4f6157128d49664" => :mojave
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
