require_relative "../lib/php_pecl_formula"

class PhpAT82Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-6.0.1.tgz"
  sha256 "2cc2bb1a4420a9251d1842ccd2066f1d090f389931223c71c75847a0a2c962b4"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:  "8a9c30d261602a9512711dd6456484ead29fac1709b69c85c21e51ae8aa241bc"
    sha256 cellar: :any, ventura: "d5b5ceec3e599f8fe6d9442e5e1f526d021b0e2c45436b68da0d0a91acc07e96"
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
