require_relative "../lib/php_pecl_formula"

class PhpAT72Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.4.16.tgz"
  sha256 "04864e1b705c2b62198a5f3890dd3c23f95a4787c97f3c1b086f0367bdaf9a87"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "ada5b095888486223a83dd7900c8b3338bed52d1073f1d5c12a5e094bfbfbcde" => :catalina
    sha256 "5389cef0f460bd30436efe106c13729ff8cc44069242cfd771fe69418b493736" => :mojave
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
