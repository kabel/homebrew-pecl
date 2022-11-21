require_relative "../lib/php_pecl_formula"

class PhpAT80Solr < PhpPeclFormula
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
    sha256 cellar: :any, ventura:  "f3847bb81fb9f95dc57580e200e6e9272cdaa1f647ee93858c39c42add3126e1"
    sha256 cellar: :any, monterey: "6b0f96e99e701fcb8efdb8c1383cb45934903568867688722c4230f83c7df975"
    sha256 cellar: :any, big_sur:  "9135f106aa7604785a190a59c9ebc78f0ea8240691c64ad0e21e54faf675890a"
  end

  depends_on "curl"

  configure_arg %W[
    --with-curl=#{Formula["curl"].opt_prefix}
  ]
end
