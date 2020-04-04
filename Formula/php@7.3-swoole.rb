require_relative "../lib/php_pecl_formula"

class PhpAT73Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.4.17.tgz"
  sha256 "3276b06c648599196f6b477b656542fadeb15e0573cdc1b6121df727636608c1"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "7e9240dc3caf0744f185003ee2951f883fd0ce1935d931e450a43fbfea8bca2d" => :catalina
    sha256 "98909ebf52b8b1e600341153c292f19a04b1ceca3519df9517d93bb42f3f11d5" => :mojave
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
