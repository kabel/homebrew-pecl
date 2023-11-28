require_relative "../lib/php_pecl_formula"

class PhpOpenswoole< PhpPeclFormula
  extension_dsl "High Performance Programmatic Server for PHP with Async IO, Coroutines and Fibers"

  url "https://pecl.php.net/get/openswoole-22.1.0.tgz"
  sha256 "2dc7c37957040495fb3bbef64e7cc0d8d0549dd31ede3e96101ad79502d19dea"
  license "Apache-2.0"

  conflicts_with "php-swoole", because: "both provide the same PHP API"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:   "26ec985ccf760f09bff2ff6ac823e7e4271cb4f5138de1e7e27471b7025fb20e"
    sha256 cellar: :any, ventura:  "d026a93b735383d08f501818ce312a4338d230ff93292653e4e2a1ae43442f9f"
    sha256 cellar: :any, monterey: "f998cb380fc3f5a154314d012d8d8dfcf0144d9610ad2563275970a3c2fd0d57"
  end

  depends_on "openssl@3"
  depends_on "brotli"

  configure_arg %W[
    --enable-http2
    --enable-mysqlnd
    --enable-sockets
    --with-openssl-dir=#{Formula["openssl@3"].opt_prefix}
  ]
end
