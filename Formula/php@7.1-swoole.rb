require_relative "../lib/php_pecl_formula"

class PhpAT71Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.4.6.tgz"
  sha256 "3e8835cc47867557fb4dbfc74522e3951bd15abb6100dd0ad81cf87634926fb9"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "fcf5e0e3deb0dd90a8db079899aca33c4dfb3402a7c226302e7b131a520c6b2c" => :mojave
    sha256 "c38a40a22f1913fc5a2a3f4167a6b4de3ce7ea37c880f68aa0b8c1f268826d1b" => :high_sierra
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
