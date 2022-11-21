require_relative "../lib/php_pecl_formula"

class PhpAT74Solr < PhpPeclFormula
  extension_dsl <<~EOS
    The Apache Solr PHP extension is an extremely fast,
    light-weight, feature-rich library that allows PHP applications to
    communicate easily and efficiently with Apache Solr server instances
    using an object-oriented API
  EOS

  url "https://pecl.php.net/get/solr-2.5.1.tgz"
  sha256 "2b41601e74fe371e6525579637a8ddff270e58a0ff636e7f56df8919d6e7777d"
  revision 1
  license "PHP-3.01"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, ventura:  "c0a87bdf167dd62eb5afc76343d45f69027bcce282ea9cd255ad837a08bb6868"
    sha256 cellar: :any, monterey: "bc0c2310a96ded71d061e843aeafa2c25644ae429e8e933664c348abe081ba5a"
    sha256 cellar: :any, big_sur:  "490dddfe88c3281181d7a215a2f860b2361e5a86ca2a645655197396546685a8"
  end

  depends_on "curl"

  configure_arg %W[
    --with-curl=#{Formula["curl"].opt_prefix}
  ]
end
