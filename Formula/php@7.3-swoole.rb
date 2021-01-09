require_relative "../lib/php_pecl_formula"

class PhpAT73Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.6.0.tgz"
  sha256 "84bcb805bf4401a25f329972f313a57c125fc32e022e91e0054644a67a6d3d95"
  license "Apache-2.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "bcbfaf92e904dd9b42a75b7ae0fdcee6c17d1e5a3db5cdb07edaa7b13249f17a" => :catalina
    sha256 "b28eefdb1add8f17a7c25d55927c879b8da5897f2d3a7ef07a48c3503d575624" => :mojave
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
