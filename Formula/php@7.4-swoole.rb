require_relative "../lib/php_pecl_formula"

class PhpAT74Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.5.10.tgz"
  sha256 "01e5d40072e14d5240419b6da7c79ca53d0134040aa71ef9789277923c13a710"
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
