require_relative "../lib/php_pecl_formula"

class PhpSwoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.6.2.tgz"
  sha256 "ae4d02cbb70b47acef0cc490ddba98ba631bc43c52abf2f0a06ec45e1e81e7a6"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 catalina: "8a55cf8141eb3be07a3d1a22d28bf6ca92b3eba7ff98aa8bafd64163ac283406"
    sha256 mojave:   "a665adfc5fa54f36e3a4cd7f3a4d65b4fb1eb43abf6e1fb56926133dbdc9f792"
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
