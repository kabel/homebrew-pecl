require_relative "../lib/php_pecl_formula"

class PhpAT74Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.5.10.tgz"
  sha256 "01e5d40072e14d5240419b6da7c79ca53d0134040aa71ef9789277923c13a710"
  license "Apache-2.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "d7a2d42ad8cc0347445ac395ca775cbf095243fb0cf0b6fe1157615ab848fa49" => :catalina
    sha256 "8e9e2130bba68b08be242aa99c592854cd751521f9a3fc9a04d011b6a05c6efd" => :mojave
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
