require_relative "../lib/php_pecl_formula"

class PhpAT81Swoole< PhpPeclFormula
  extension_dsl "Event-driven asynchronous and concurrent networking engine with high performance"

  url "https://pecl.php.net/get/swoole-5.1.6.tgz"
  sha256 "335bf67aba33789450701b36fb21d5b46d72f837de92def2f80d4a0090eb57c8"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:  "45bfb20f406c85d2de9c6e901633e8163b13704ff411c3db17020d40e7335785"
    sha256 cellar: :any, ventura: "7dbd926384ca00fa20d21c99e72e211e36a416fbc7630b1a32d15ef7bb0f4dee"
  end

  deprecate! date: "2025-12-31", because: :unsupported

  conflicts_with "php@8.1-openswoole", because: "both provide the same PHP API"

  depends_on "brotli"
  depends_on "libnghttp2"
  depends_on "openssl@3"

  configure_arg %W[
    --enable-http2
    --enable-mysqlnd
    --enable-sockets
    --with-openssl-dir=#{Formula["openssl@3"].opt_prefix}
    --with-nghttp2_dir=#{Formula["libnghttp2"].opt_prefix}
  ]
end
