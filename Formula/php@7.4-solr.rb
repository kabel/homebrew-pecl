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
  license "PHP-3.01"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "4afdfde2b313ddf3a5af78c0665d77871dd65f468c377ad1d6926492f329e932" => :catalina
    sha256 "0fe770845f20936e37fe4eee82dd8997313c5ab269181b609a7d04bce09a63f8" => :mojave
  end

  depends_on "curl"

  configure_arg %W[
    --with-curl=#{Formula["curl"].opt_prefix}
  ]
end
