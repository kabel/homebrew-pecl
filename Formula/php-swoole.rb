require_relative "../lib/php_pecl_formula"

class PhpSwoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.4.6.tgz"
  sha256 "3e8835cc47867557fb4dbfc74522e3951bd15abb6100dd0ad81cf87634926fb9"

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
