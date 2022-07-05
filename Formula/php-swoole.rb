require_relative "../lib/php_pecl_formula"

class PhpSwoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.8.10.tgz"
  sha256 "39fba19af24518e05e6b3f76c3175539e5d171096c254c23d4736e011ab27e72"
  license "Apache-2.0"

  conflicts_with "php-openswoole", because: "both provide the same PHP API"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, monterey: "d512718bc8b29bf1263a84195edd5c86e03913281a0b7cae805d60d3ef09fff3"
    sha256 cellar: :any, big_sur:  "0dbb0fc2a368723fa30a7610dfcb3582b519cd5633e36166c077314392234f44"
    sha256 cellar: :any, catalina: "0922b18dc69e6e3918f9a7cd2bfbc7c7df1b1b9ea0680a66b67b2dbc67184354"
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
