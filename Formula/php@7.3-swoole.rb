require_relative "../lib/php_pecl_formula"

class PhpAT73Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.5.2.tgz"
  sha256 "f613601a90350ac0632dbab9955ffc7ae29dd1f0a58d3c9af9a1efb01c2925d0"
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
