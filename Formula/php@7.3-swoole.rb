require_relative "../lib/php_pecl_formula"

class PhpAT73Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.6.7.tgz"
  sha256 "c5842d3209d1db49a1a6102fb1892a1d73e3bddf8088ca329e53a33f00b9fc80"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "d538c8eca7f5a9035459b19be5e0a59b911893b25143d8b7fa316d11693ac5e4"
    sha256 catalina: "c5cb14e46eae7770d69807e7d615e0eafd10a7ceef6804e792e9f94b41c1b432"
    sha256 mojave:   "cface8238420cd48272b436db4eb50a78b0ad7810e421cbc84d4d81870ff1443"
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
