require_relative "../lib/php_pecl_formula"

class PhpAT73Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.5.10.tgz"
  sha256 "01e5d40072e14d5240419b6da7c79ca53d0134040aa71ef9789277923c13a710"
  license "Apache-2.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "83f3d3a5816b793dd7a060e6ab29d7e058b270084e19a2968f3b0d56ba4dd573" => :catalina
    sha256 "805fbc2ac982e91186b86f49d115e7e5caedf8f4495f8e9a85798fa602a82e39" => :mojave
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
