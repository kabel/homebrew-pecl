require_relative "../lib/php_pecl_formula"

class PhpAT81Openswoole< PhpPeclFormula
  extension_dsl "High Performance Programmatic Server for PHP with Async IO, Coroutines and Fibers"

  url "https://pecl.php.net/get/openswoole-22.1.2.tgz"
  sha256 "ec9d08e9484bf95a0080738342a84f09b9c5b8222f4a03c4736caacb7668cb46"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:   "e41db055a432f56e098abe6cb6be714e347ff96af5d14866d6523e2b126df314"
    sha256 cellar: :any, ventura:  "4a5ab68dcdd2c72aba51a5e778d75e7e69bf8484f4ee3922730271a80642eac7"
    sha256 cellar: :any, monterey: "523c8f45842316b64aac19e202780451b9983e7eac58ea5f23831525194f1b04"
  end

  deprecate! date: "2024-11-25", because: :unsupported

  conflicts_with "php@8.1-swoole", because: "both provide the same PHP API"

  depends_on "openssl@3"
  depends_on "brotli"

  configure_arg %W[
    --enable-http2
    --enable-mysqlnd
    --enable-sockets
    --with-openssl-dir=#{Formula["openssl@3"].opt_prefix}
  ]
end
