require_relative "../lib/php_pecl_formula"

class PhpAT82Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-6.0.1.tgz"
  sha256 "2cc2bb1a4420a9251d1842ccd2066f1d090f389931223c71c75847a0a2c962b4"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:  "80fd23e173210d188267f743c41ba3e9be1304afde38b1f0d3c3a0866b8c5e17"
    sha256 cellar: :any, ventura: "f04530811c884591748ac05d546e064c647215eede6054c95f82a385007bdc8e"
  end

  deprecate! date: "2026-12-31", because: :unsupported

  conflicts_with "php@8.2-openswoole", because: "both provide the same PHP API"

  depends_on "brotli"
  depends_on "libnghttp2"
  depends_on "openssl@3"

  configure_arg %W[
    --enable-mysqlnd
    --enable-openssl
    --enable-sockets
    --with-nghttp2_dir=#{Formula["libnghttp2"].opt_prefix}
  ]
end
