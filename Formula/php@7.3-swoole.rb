require_relative "../lib/php_pecl_formula"

class PhpAT73Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.5.2.tgz"
  sha256 "f613601a90350ac0632dbab9955ffc7ae29dd1f0a58d3c9af9a1efb01c2925d0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "5724293c9d6eaf39970455e9b7badb23f0a467fdd46a044de98805b535212de8" => :catalina
    sha256 "c3cbfc06589cee20571a3d4c3347f405c5152d2bfe7cde714a5ad34610c73a67" => :mojave
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
