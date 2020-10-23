require_relative "../lib/php_pecl_formula"

class PhpSwoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.5.5.tgz"
  sha256 "3a470e4960ffe52db3606098806482f54e4374073da866a01f73614d4de45f28"
  license "Apache-2.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "ec7b2634b8f7663c9176e190062dcc1697afea64bd469c54ceff93047c1b8406" => :catalina
    sha256 "ba4472db752933c668267e54931a6272f32a6d3b9beae5c7c9d07682a8e77c25" => :mojave
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
