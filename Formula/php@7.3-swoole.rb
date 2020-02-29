require_relative "../lib/php_pecl_formula"

class PhpAT73Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.4.16.tgz"
  sha256 "04864e1b705c2b62198a5f3890dd3c23f95a4787c97f3c1b086f0367bdaf9a87"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "b3228834dbccf4ce05e2022c65a1bedab4f8866c394d944cd32ec58ce1968034" => :catalina
    sha256 "5c135a6cbcfa3f4e7515f28441fcafc29be64e55c03e230297751ea18abb1e74" => :mojave
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
