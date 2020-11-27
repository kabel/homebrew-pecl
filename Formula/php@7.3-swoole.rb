require_relative "../lib/php_pecl_formula"

class PhpAT73Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.5.9.tgz"
  sha256 "8991012db81138a1cd825860ba1628e8f1b799573ad16aeed82a955b6fe72e3d"
  license "Apache-2.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "d5c1cf4532981977eed890a6a43a80f649b8b3a2fc63da7682d19e285aa15c34" => :catalina
    sha256 "8f1eab6903fba5efbc34a77215dca55493adb8ba363890cd8c69320a81c95072" => :mojave
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
