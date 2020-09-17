require_relative "../lib/php_pecl_formula"

class PhpSolr < PhpPeclFormula
  extension_dsl "PHP extension for communicating with Apache Solr Server 4.0+"

  url "https://pecl.php.net/get/solr-2.5.1.tgz"
  sha256 "2b41601e74fe371e6525579637a8ddff270e58a0ff636e7f56df8919d6e7777d"
  license "PHP-3.01"

  depends_on "curl-openssl"

  configure_arg %W[
    --with-curl=#{Formula["curl-openssl"].opt_prefix}
  ]
end
