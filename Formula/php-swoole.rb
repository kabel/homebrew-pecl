require_relative "../lib/php_pecl_formula"

class PhpSwoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.8.7.tgz"
  sha256 "ca888cb886c883092ebe8788253d600bc52c384e74e27110f97b04ecea6b6fda"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, big_sur:  "6682560cd455d40e84d5540ff2ea0e0b706e688986adc47f92cb69859dadec46"
    sha256 cellar: :any, catalina: "d9deb0b2f15274e83b748cbf153f1e704972cc1f02755f98047117fb115a4fee"
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
