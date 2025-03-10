require_relative "../lib/php_pecl_formula"

class PhpAT83Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-6.0.1.tgz"
  sha256 "2cc2bb1a4420a9251d1842ccd2066f1d090f389931223c71c75847a0a2c962b4"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:  "c0552893051edd39a4f622f91980b7b90f6fd44c0c9e95854b6ee20d67d7bdd4"
    sha256 cellar: :any, ventura: "5731c974c4a7cc3aea57e724943da740c5a2752257fe6b63041b26b1d9733ad2"
  end

  deprecate! date: "2027-12-31", because: :unsupported

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
