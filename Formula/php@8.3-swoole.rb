require_relative "../lib/php_pecl_formula"

class PhpAT83Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-6.0.1.tgz"
  sha256 "2cc2bb1a4420a9251d1842ccd2066f1d090f389931223c71c75847a0a2c962b4"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:  "8fe7a95b86312dfaeaa5fd90f35c5cb35c4fbbc563c6c640fc1f6df38ecdc508"
    sha256 cellar: :any, ventura: "9b270bb6582c9c7939ef3af30a50617b3d085a1e474f173a508d38ab3a26c526"
  end

  deprecate! date: "2027-12-31", because: :unsupported

  conflicts_with "php@8.3-openswoole", because: "both provide the same PHP API"

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
