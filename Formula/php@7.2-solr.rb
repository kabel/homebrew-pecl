require_relative "../lib/php_pecl_formula"

class PhpAT72Solr < PhpPeclFormula
  extension_dsl <<~EOS
    The Apache Solr PHP extension is an extremely fast,
    light-weight, feature-rich library that allows PHP applications to
    communicate easily and efficiently with Apache Solr server instances
    using an object-oriented API
  EOS

  url "https://pecl.php.net/get/solr-2.5.1.tgz"
  sha256 "2b41601e74fe371e6525579637a8ddff270e58a0ff636e7f56df8919d6e7777d"
  license "PHP-3.01"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "afdb2a6b1e29c146b36e64bb5d8bc8fce6568250d208ea1700b4cbb97434ae63" => :catalina
    sha256 "f8de2a94029702410bdeac6f9015e186501eab391912502dfddaa3872ea269bc" => :mojave
  end

  depends_on "curl-openssl"

  configure_arg %W[
    --with-curl=#{Formula["curl-openssl"].opt_prefix}
  ]
end
