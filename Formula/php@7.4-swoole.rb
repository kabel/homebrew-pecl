require_relative "../lib/php_pecl_formula"

class PhpAT74Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.7.0.tgz"
  sha256 "690bc9d4d4877e0a7d26e9a18b61ea7b2352caab5022a37d87b4cf7c776d4051"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "c4aa5a51e1801739dfc640a0e53f2229d850518ca113807fed1e77db87e3fec7"
    sha256 catalina: "f12bc1682273aa83e425ca2140c7fc5d6a1e8fa4f337df48fca3cf72d65c8836"
    sha256 mojave:   "8956d72d862b8472b78efc2f2cf45b81865dbd8f60d80be41ae79eba4d704cde"
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
