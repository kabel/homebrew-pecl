require_relative "../lib/php_pecl_formula"

class PhpSwoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.5.5.tgz"
  sha256 "3a470e4960ffe52db3606098806482f54e4374073da866a01f73614d4de45f28"
  license "Apache-2.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "500922e4b6dc1e137d90cd542b22e5ed0e7a63d26a698924e702b573e7ca165c" => :catalina
    sha256 "a4e414fe71dbbe84e4a08ea99656a7bab4263736a7ee52a46c28a8e9523d1477" => :mojave
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
