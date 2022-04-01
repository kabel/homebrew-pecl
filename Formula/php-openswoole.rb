require_relative "../lib/php_pecl_formula"

class PhpOpenswoole< PhpPeclFormula
  extension_dsl "High Performance Programmatic Server for PHP with Async IO, Coroutines and Fibers"

  url "https://pecl.php.net/get/openswoole-4.11.0.tgz"
  sha256 "f1840dedec436d51872940fd7b46cfac97db1ee6efdc96fdad9a823df8dae768"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, monterey: "65ab8958854a9badca179fa4fad72044c4dfccee19894274a7c2628833b5bc44"
    sha256 cellar: :any, big_sur:  "70048603693c4d2254729b6c7ee9f15422e64ba83384609c5b1e1b099f744da6"
    sha256 cellar: :any, catalina: "499d950afc8eb034ebdd964ce39691309df540bcfd6dfe05a9fe7717501c2af5"
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
