require_relative "../lib/php_pecl_formula"

class PhpAT81Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-5.0.2.tgz"
  sha256 "ecefcab9ca36f6e724b6f8c9cf784b1c2616d3efe4544be3eda629ad2037fe68"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, ventura:  "0fef84fdacae4a5d1f9ba12e2ab4cd83001f220be09818a201eeb7412f8c5ba0"
    sha256 cellar: :any, monterey: "154f10aecf6998ecb2dbb194723dfde5ee05c28310d6674d0611b3e3f5832602"
    sha256 cellar: :any, big_sur:  "f6ff9a081afbc8363bbaba78c4a9aa0caf009696eb32cf20cafa770faa02a074"
  end

  conflicts_with "php@8.1-openswoole", because: "both provide the same PHP API"

  depends_on "openssl@1.1"
  depends_on "brotli"

  configure_arg %W[
    --enable-http2
    --enable-mysqlnd
    --enable-sockets
    --with-openssl-dir=#{Formula["openssl@1.1"].opt_prefix}
  ]
end
