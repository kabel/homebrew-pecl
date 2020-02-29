require_relative "../lib/php_pecl_formula"

class PhpAT73Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.4.16.tgz"
  sha256 "04864e1b705c2b62198a5f3890dd3c23f95a4787c97f3c1b086f0367bdaf9a87"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "9bfe4fd219cf39afa3fea88740753c60f5bed7dfc02cc5a9fb081530684ef90f" => :mojave
    sha256 "b2052f41d39f22a0d8f25d3db7c7d4fb91f02bb070e6dee5d61da786fa281fe6" => :high_sierra
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
