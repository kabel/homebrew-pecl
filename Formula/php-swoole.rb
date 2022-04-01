require_relative "../lib/php_pecl_formula"

class PhpSwoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.8.7.tgz"
  sha256 "ca888cb886c883092ebe8788253d600bc52c384e74e27110f97b04ecea6b6fda"
  license "Apache-2.0"

  conflicts_with "php-openswoole", because: "both provide the same PHP API"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, monterey: "8db23048525667c519f2763ed0aa79586e1108f0db81958935deb2f6de62c746"
    sha256 cellar: :any, big_sur:  "d800fca02657e26c3811eb4a39bcdeb277f98996e4aa979adfd83b24a4aae97b"
    sha256 cellar: :any, catalina: "875484b9f6859d43e4f5476482bec9d59cc57cf7efad70e35a28aa9ed04b5a6d"
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
