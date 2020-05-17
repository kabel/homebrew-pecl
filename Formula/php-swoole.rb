require_relative "../lib/php_pecl_formula"

class PhpSwoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.5.1.tgz"
  sha256 "d48d90fb57f04f25911d33a2c5e99a6c615f58e7260c63702b769016079224d5"

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
