require_relative "../lib/php_pecl_formula"

class PhpSwoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.6.1.tgz"
  sha256 "86b9181c1cb0e50607aec52e02158095eb58baf43b12b27250767653bd69c6ef"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 "2979a139ec0d080273d87a3f99b2b91d3a23deb4186f402ed9af4f1052b0aaee" => :catalina
    sha256 "fffc40211d7f3c998d2cf982dc2caf2738e2b4dad49b0ae7fde1fb1818f65159" => :mojave
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
