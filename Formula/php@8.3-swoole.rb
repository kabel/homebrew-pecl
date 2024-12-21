require_relative "../lib/php_pecl_formula"

class PhpAT83Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-6.0.0.tgz"
  sha256 "e9bc196f2678fb42f7b3e38e5489b5b20f3dba50118b9669f124b77d05ea7c5a"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:  "aafe3fe6e2753ea6201b3043e8c9aba70df858682ca955e26802e9a267e9d954"
    sha256 cellar: :any, ventura: "eb0e2ea3666853ff4f07b0a82a176444f4d76e0826d2ea6fcfad517fc1e02e80"
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
