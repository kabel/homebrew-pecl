require_relative "../lib/php_pecl_formula"

class PhpSwoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.7.1.tgz"
  sha256 "508fefdcb0d0899458ec7efaaa8972c66cd27d5ac83da0ef214792acce8a6fb5"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "5411f18fba177bc9e4b1a4f0bbb0021ae4a19d3277a7ad11caf674e1b8de6c06"
    sha256 catalina: "43f99a38f2bfa644477c0174e417e84e51b34a979d4c8f6e4e79dd07e79180ac"
    sha256 mojave:   "10c59bb69d9d69c2f729b655194c9f5ce8ceaed2e04aa5193fc9d051057cee09"
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
