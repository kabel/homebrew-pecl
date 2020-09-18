require_relative "../lib/php_pecl_formula"

class PhpAT73Solr < PhpPeclFormula
  extension_dsl "The Apache Solr PHP extension is an extremely fast, light-weight, feature-rich library that allows PHP applications to communicate easily and efficiently with Apache Solr server instances using an object-oriented API."

  url "https://pecl.php.net/get/solr-2.5.1.tgz"
  sha256 "2b41601e74fe371e6525579637a8ddff270e58a0ff636e7f56df8919d6e7777d"
  license "PHP-3.01"

  depends_on "curl-openssl"

  configure_arg %W[
    --with-curl=#{Formula["curl-openssl"].opt_prefix}
  ]
end
