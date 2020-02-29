require_relative "../lib/php_pecl_formula"

class PhpAT72Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.4.16.tgz"
  sha256 "04864e1b705c2b62198a5f3890dd3c23f95a4787c97f3c1b086f0367bdaf9a87"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "5b1ecda802e763e3650a9fb1273e8b0898bb56ae5fe58e30e62df728b0e8f765" => :mojave
    sha256 "70c4f491ab8f42aedc0e90ac2ca7b33538404960c28a6cd3558204044403ba6c" => :high_sierra
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
