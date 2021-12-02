require_relative "../lib/php_pecl_formula"

class PhpAT80Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.8.3.tgz"
  sha256 "39afd29e698c73f2995f23ffa97f414fb575c4f6b811625afc650d9e0a40e29c"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "90fb486fb87e60d89fee6f681911a349a853614f22df8838cc1e647f4ce431c7"
    sha256 catalina: "ac7f5ae82f5220cf50460f31aa69c5fa0cc28c3dcc355f3a7650f80d7828bf28"
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
