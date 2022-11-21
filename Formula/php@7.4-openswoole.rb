require_relative "../lib/php_pecl_formula"

class PhpAT74Openswoole< PhpPeclFormula
  extension_dsl "High Performance Programmatic Server for PHP with Async IO, Coroutines and Fibers"

  url "https://pecl.php.net/get/openswoole-4.12.0.tgz"
  sha256 "de2e6c5e098e1db0c02b5e28ac2d07d7a33a82a3fadf25abfe36c288e5e4dd99"
  revision 1
  license "Apache-2.0"

  conflicts_with "php@7.4-swoole", because: "both provide the same PHP API"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, ventura:  "4275fe849aa93770cdf9c1389be293da8a50186ff62f5962a33bcbba58aac3a0"
    sha256 cellar: :any, monterey: "3e4823849575562f5cefceeefc438430c3e7273c55df9b89a647b49ce30adbf9"
    sha256 cellar: :any, big_sur:  "72fea30cd39326ab590d589e759e6785b03e47dae24c9100a0473c805115cc81"
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
