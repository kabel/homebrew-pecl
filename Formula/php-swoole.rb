require_relative "../lib/php_pecl_formula"

class PhpSwoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.4.5.tgz"
  sha256 "717fc7f8cfcb5a0721db18503d78defa0b76ed7219f8070f661bc3414e2cce44"
  revision 1

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "4ce5c76401463caabb0d6a75cf1b24843fff39dec74eced4ccc0d758597f4beb" => :mojave
    sha256 "225b145312a9762badf2dc46a0db4a00f22db6f03a838ee6aec6e7296b10b860" => :high_sierra
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
