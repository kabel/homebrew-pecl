require_relative "../lib/php_pecl_formula"

class PhpAT74Openswoole< PhpPeclFormula
  extension_dsl "High Performance Programmatic Server for PHP with Async IO, Coroutines and Fibers"

  url "https://pecl.php.net/get/openswoole-4.11.0.tgz"
  sha256 "f1840dedec436d51872940fd7b46cfac97db1ee6efdc96fdad9a823df8dae768"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, big_sur:  "fb1f51133b6f48be0ccea9a8c777626bd33f40d4655ce2e3c3358999fde0d07d"
    sha256 cellar: :any, catalina: "d83a47a8646829ab2f2c629cc431742f736ea10e21619b5d92d1f3866ed83e8e"
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
