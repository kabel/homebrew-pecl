require_relative "../lib/php_pecl_formula"

class PhpSolr < PhpPeclFormula
  extension_dsl <<~EOS
    The Apache Solr PHP extension is an extremely fast,
    light-weight, feature-rich library that allows PHP applications to
    communicate easily and efficiently with Apache Solr server instances
    using an object-oriented API
  EOS

  url "https://pecl.php.net/get/solr-2.5.1.tgz"
  sha256 "2b41601e74fe371e6525579637a8ddff270e58a0ff636e7f56df8919d6e7777d"
  revision 2
  license "PHP-3.01"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, monterey: "5ccfb1d744530fd2e976d0aced76b37f00503c7cd9665793571282d2c1b6099a"
    sha256               big_sur:  "d5d2cbfa46a40fc963e0c99b9a07ead45774a795d5167b388918de77ab5f5431"
    sha256               catalina: "ef79854187106fb570e6356e4605ed3aea448e907c4f7b29ebc61662eb0e29fa"
  end

  depends_on "curl"

  configure_arg %W[
    --with-curl=#{Formula["curl"].opt_prefix}
  ]
end
