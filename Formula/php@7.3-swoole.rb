require_relative "../lib/php_pecl_formula"

class PhpAT73Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.5.3.tgz"
  sha256 "77cc4ef41d76c1a22ff3739d632ec6059b55a21ed1c0db375e0eded08c34a43f"
  license "Apache-2.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "18ae475a2b40bf68a610bc850049e7dcd4420ba94de0334666f781995d3597a9" => :catalina
    sha256 "898e3d83b97d3b97036c0049dce7e26730466cfa48ace055c8e7cf21d80e1e9d" => :mojave
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
