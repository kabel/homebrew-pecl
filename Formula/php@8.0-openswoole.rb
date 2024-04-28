require_relative "../lib/php_pecl_formula"

class PhpAT80Openswoole< PhpPeclFormula
  extension_dsl "High Performance Programmatic Server for PHP with Async IO, Coroutines and Fibers"

  url "https://pecl.php.net/get/openswoole-22.1.0.tgz"
  sha256 "2dc7c37957040495fb3bbef64e7cc0d8d0549dd31ede3e96101ad79502d19dea"
  license "Apache-2.0"

  conflicts_with "php@8.0-swoole", because: "both provide the same PHP API"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:   "695dc9274b9d7c916f805d24985ab3ff37f98e13fa94163a1613e518d797315b"
    sha256 cellar: :any, ventura:  "97833c04c16e7eb8ce413178aa5813e55f851fc48a31c24b6a6f3fbc1e7d924d"
    sha256 cellar: :any, monterey: "598e29759a43b6a05a254b49f1e28594412bd08a7d203fef6115ff14ac749329"
  end

  deprecate! date: "2023-11-26", because: :unsupported

  depends_on "openssl@3"
  depends_on "brotli"

  configure_arg %W[
    --enable-http2
    --enable-mysqlnd
    --enable-sockets
    --with-openssl-dir=#{Formula["openssl@3"].opt_prefix}
  ]
end
