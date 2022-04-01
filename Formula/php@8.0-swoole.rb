require_relative "../lib/php_pecl_formula"

class PhpAT80Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.8.7.tgz"
  sha256 "ca888cb886c883092ebe8788253d600bc52c384e74e27110f97b04ecea6b6fda"
  license "Apache-2.0"

  conflicts_with "php@8.0-openswoole", because: "both provide the same PHP API"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, monterey: "5ef756797151de1cbf1295b06ca983edd083b3c1780e3e5e61f5b97bb0887cfc"
    sha256 cellar: :any, big_sur:  "8a464eb2a401530fbf2b4fda4373d79ff6b1bc4b2098d6223e28314d67a3a5e3"
    sha256 cellar: :any, catalina: "96f923c9e48a39976aeb08edc9934f6ea8185f28d2d2c5bc7872b69fe6e45a93"
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
