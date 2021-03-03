require_relative "../lib/php_pecl_formula"

class PhpAT74Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.6.3.tgz"
  sha256 "aa301d7f6c6c75e98e8512bcc080be250895dab1477541cc444ab47f5fdf9d9d"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 catalina: "696d7ec0ebb21c1d74a97ea8e5066f71c257ae784a36e138bf3d29e0ab6b8700"
    sha256 mojave:   "0b7033134d533690eadeae5cf739a3f918a30045904846a9db5eeabd0dae4d35"
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
