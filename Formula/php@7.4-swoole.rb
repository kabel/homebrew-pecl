require_relative "../lib/php_pecl_formula"

class PhpAT74Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.8.10.tgz"
  sha256 "39fba19af24518e05e6b3f76c3175539e5d171096c254c23d4736e011ab27e72"
  license "Apache-2.0"

  conflicts_with "php@7.4-openswoole", because: "both provide the same PHP API"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, monterey: "bf3a36b96db6764bf706410cc6051290603627145aa2799cfd78934490c18583"
    sha256 cellar: :any, big_sur:  "6a6d8afa3d7289fed1a65762357a0a0f4f11ac4e66549000053001ba0d2bc8e7"
    sha256 cellar: :any, catalina: "138446331ed3326f6abb9a13b1475c45071d67810a62317863e127d0536f2983"
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
