require_relative "../lib/php_pecl_formula"

class PhpAT73Solr < PhpPeclFormula
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
    sha256 "77f6ba94410379f8c56ee3ae8fca4a85dcd6caa73cc811e5250077fbf385a637" => :catalina
    sha256 "6a5e21fac551a7d40d0a0825decfbec82b56ac5000c4fc78121f61bb47fad657" => :mojave
  end

  depends_on "curl"

  configure_arg %W[
    --with-curl=#{Formula["curl"].opt_prefix}
  ]
end
