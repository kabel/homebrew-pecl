require_relative "../lib/php_pecl_formula"

class PhpSwoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.5.8.tgz"
  sha256 "202efb1ca36b7d30a54ee7571c7db34a5bf73a983a2c97f68cf074891a8f12c9"
  license "Apache-2.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "dd2fb86ff71a32286f25aa53c74cc0f6386784b36de3ba4ad84db64c4fc7307d" => :catalina
    sha256 "62b6436cd0724889766f19eb8729753c9e8d0de24694f03c9305736208df6880" => :mojave
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
