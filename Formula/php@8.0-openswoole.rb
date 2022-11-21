require_relative "../lib/php_pecl_formula"

class PhpAT80Openswoole< PhpPeclFormula
  extension_dsl "High Performance Programmatic Server for PHP with Async IO, Coroutines and Fibers"

  url "https://pecl.php.net/get/openswoole-4.12.0.tgz"
  sha256 "de2e6c5e098e1db0c02b5e28ac2d07d7a33a82a3fadf25abfe36c288e5e4dd99"
  revision 1
  license "Apache-2.0"

  conflicts_with "php@8.0-swoole", because: "both provide the same PHP API"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, ventura:  "74d5db30da71a818d800f7c086ef8f7fbfc45edbb2ab7e7bb06bc11dbdfe70ae"
    sha256 cellar: :any, monterey: "46765577e240f5a6e3ee61f69f7b1ee3f2564ef3c7c96fefd4e710951ac23eea"
    sha256 cellar: :any, big_sur:  "fb4e0c2287692407baaa089d18e5f8a517a90f0a3d5a069b7eaf037105bf1e6b"
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
