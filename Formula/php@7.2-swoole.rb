require_relative "../lib/php_pecl_formula"

class PhpAT72Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-4.4.18.tgz"
  sha256 "00b8fc5fc11406127c4f946a6cfe5421bf92fe5d018882a986c60bf61d86233b"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "6a4f91b65c46f8642b4b8ec19c113da161a9521a5669ded3c043838304df531e" => :catalina
    sha256 "a47b5abbfba589179e7209b7e866908c482c6066afcf7436a9993a21ccb07eb5" => :mojave
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
