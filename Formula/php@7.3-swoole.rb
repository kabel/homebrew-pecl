require_relative "../lib/php_pecl_formula"

class PhpAT73Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.5.3.tgz"
  sha256 "77cc4ef41d76c1a22ff3739d632ec6059b55a21ed1c0db375e0eded08c34a43f"
  license "Apache-2.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "c535ff2289f5d286cb657ac498bc97eb9bbf465740083db3a7096577209ca2e4" => :catalina
    sha256 "20e8207dfde2ae7b7a314e5c1efc6beee5ef874f4306a330656660be02694c2a" => :mojave
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
