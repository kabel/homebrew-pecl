require_relative "../lib/php_pecl_formula"

class PhpAT74Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.6.7.tgz"
  sha256 "c5842d3209d1db49a1a6102fb1892a1d73e3bddf8088ca329e53a33f00b9fc80"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "d77f8ccf656d471ca676341cef013d63f2bfbbac2cfc599a8923cfecd31e8a5f"
    sha256 catalina: "e06007203680e3478e9adbce900f8030855db0a80f9bbd322b353f17172d3c5a"
    sha256 mojave:   "66733a5f3760c50303190431390692b07d256b281868b4b283539da52292fcb7"
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
