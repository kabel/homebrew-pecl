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
    sha256 cellar: :any, monterey: "98defd100d142a6bfa5b95a27b8170e2a3ed000ee2f0a6054a8800565f4f351f"
    sha256 cellar: :any, big_sur:  "31ab19a0e9d06bcc846f3bdcd64d167fc0788f1aad2429db6c6178c540b6f8fa"
    sha256               catalina: "4afdfde2b313ddf3a5af78c0665d77871dd65f468c377ad1d6926492f329e932"
    sha256               mojave:   "0fe770845f20936e37fe4eee82dd8997313c5ab269181b609a7d04bce09a63f8"
  end

  depends_on "curl"

  configure_arg %W[
    --with-curl=#{Formula["curl"].opt_prefix}
  ]
end
