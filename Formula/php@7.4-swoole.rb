require_relative "../lib/php_pecl_formula"

class PhpAT74Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.7.0.tgz"
  sha256 "690bc9d4d4877e0a7d26e9a18b61ea7b2352caab5022a37d87b4cf7c776d4051"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "37582148d23375887f5a95562f388c782cf87aa4f09566c4abc24072f897f10d"
    sha256 catalina: "0945e862d6fb57a0891b59ab246ff1aa2449cf07fa105f3071c9e0cc9220683a"
    sha256 mojave:   "910f382f64ad51c6ab60502d0ee8cdd26d39e5b0b61f5d2b890d0e15da6b6675"
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
