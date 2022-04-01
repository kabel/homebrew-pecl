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
  license "PHP-3.01"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, monterey: "7659013e55a8efde4576a02c5b4e46183dac8326b1d001b02ac028fabb1e678b"
    sha256               big_sur:  "c7feb9c0e3f01a84c6c54936911c432dba157bac3de88333bd079b310677a1fb"
    sha256               catalina: "f8a754ada4c5d32ae2e8f53cbf2a40ad8a10594a3c1037e0d36a4b8599eaaa04"
  end

  depends_on "curl"

  configure_arg %W[
    --with-curl=#{Formula["curl"].opt_prefix}
  ]
end
