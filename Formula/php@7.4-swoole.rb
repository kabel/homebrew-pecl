require_relative "../lib/php_pecl_formula"

class PhpAT74Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.6.0.tgz"
  sha256 "84bcb805bf4401a25f329972f313a57c125fc32e022e91e0054644a67a6d3d95"
  license "Apache-2.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "ce8b68ffa3a11b1082d302e7ed088b74530e4f1494df981c84ad02e5e0aab769" => :catalina
    sha256 "98f47e6cdc12111f272c6023d5ef7622800f7bc7d28c63363aaef85f96718b7b" => :mojave
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
