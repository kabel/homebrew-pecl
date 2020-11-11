require_relative "../lib/php_pecl_formula"

class PhpAT73Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.5.7.tgz"
  sha256 "a6fada79611191c021f698265c5651c0566db6cda705f29e8bdb5a99c4c95008"
  license "Apache-2.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "a5ddc046a577edc41f35cb177544629ed3ebc95a397d7862f9974d25710cda91" => :catalina
    sha256 "56b2941ba6dbbd36df392f24a0a438b0f74a3b28bbe0f5c73c4667b7977407bf" => :mojave
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
