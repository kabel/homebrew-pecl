require_relative "../lib/php_pecl_formula"

class PhpSwoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.6.4.tgz"
  sha256 "6128388eb39a1a264779c7d5bc536cc5fb095e73cb700b965eeee023ac6df641"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "6487bab583fe03b88436951048b310142e96a290c1a34a9f0c8e6bcd0beb4d36"
    sha256 catalina: "481698c488ff450af476e870e59ae6c376b6cfb88e4d4043a863bde4471d1398"
    sha256 mojave:   "c29985189a2822e0ceda7a5ceed4bd207bf2135cb2020e1b009a3a44de9524a7"
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
