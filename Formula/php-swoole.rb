require_relative "../lib/php_pecl_formula"

class PhpSwoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.6.3.tgz"
  sha256 "aa301d7f6c6c75e98e8512bcc080be250895dab1477541cc444ab47f5fdf9d9d"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "901df3df9c81005dadb2c324c0e1afd91b461ad66ce5bba632ebfb20765c2709"
    sha256 catalina: "dcb1512dad0d0d7d789221806b5b09990d68efd1ffb8f36ce25bd81604e5b3ed"
    sha256 mojave:   "e930d0df2166ed592547d84769393819f38305e0c8dafcf855559ff2dde1c3de"
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
