require_relative "../lib/php_pecl_formula"

class PhpSwoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.8.10.tgz"
  sha256 "39fba19af24518e05e6b3f76c3175539e5d171096c254c23d4736e011ab27e72"
  license "Apache-2.0"

  conflicts_with "php-openswoole", because: "both provide the same PHP API"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, monterey: "f32b6134650f7efc328ff59dd8e381c9d89fa3b9a689c8a38d955d44db8731ac"
    sha256 cellar: :any, big_sur:  "be800aa01ab12330003088792588e44f84ebc9692876d215eec06efcb3588494"
    sha256 cellar: :any, catalina: "6d73362b069b066d40738492f44ee7f16cc5eaa8c21165bce335805cc9dd7ba5"
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
