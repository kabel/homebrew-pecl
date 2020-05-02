require_relative "../lib/php_pecl_formula"

class PhpSwoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.5.0.tgz"
  sha256 "6e3a4eaeca1abc56871fff6cd3c1dc7b87afeaeb3655a28fb99a3d30f7c3d0ab"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "7093a1754fd05293bdf2f19e5abf9a05e8eb8dbf4b2841f45be7ad9d09500c8b" => :catalina
    sha256 "80438f5bb29d4d803007019354bc200c8a48e9f0acbf1abdc0a1bce67bf4bac9" => :mojave
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
