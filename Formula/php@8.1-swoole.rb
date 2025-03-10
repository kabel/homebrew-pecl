require_relative "../lib/php_pecl_formula"

class PhpAT81Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-6.0.1.tgz"
  sha256 "2cc2bb1a4420a9251d1842ccd2066f1d090f389931223c71c75847a0a2c962b4"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:  "dea64637a802aa77d904248faae154eb4f0f587e19346b49b2b7d1b4cc61232b"
    sha256 cellar: :any, ventura: "466eaaa57801d48707c760b2543868c129450131da5575bd6368a152f6a38f94"
  end

  deprecate! date: "2025-12-31", because: :unsupported

  conflicts_with "php@8.1-openswoole", because: "both provide the same PHP API"

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
