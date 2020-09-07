require_relative "../lib/php_pecl_formula"

class PhpAT72Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.5.3.tgz"
  sha256 "77cc4ef41d76c1a22ff3739d632ec6059b55a21ed1c0db375e0eded08c34a43f"
  license "Apache-2.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "665437c5828dd9d67793b34c8e09d1982393bc0488a5cfd59c221f811f1f1122" => :catalina
    sha256 "f272e501573bab1404de1af12dfbbbeb1522db6c4f3e82b6124631c845aff834" => :mojave
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
