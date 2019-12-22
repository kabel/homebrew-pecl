require_relative "../lib/php_pecl_formula"

class PhpAT72Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.4.13.tgz"
  sha256 "6294210a58bdb3a5f2b9a472658c886360744ae458bce96d631d0657577c57b9"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "0e461e46cb6836691c4d48b2637848ae64ca46ac25972e367a8bbfbac76b377a" => :mojave
    sha256 "7d7dc9c1ee4a260c5c6471b2062f9da40200383a9bd3f0f755d43918d3778f89" => :high_sierra
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
