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
  license "PHP-3.01"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "77c31fd0136d321d58d7f2971aaf27f67bd1c832646855172c6f0165d21b0741" => :catalina
    sha256 "5f206b2d493305e3552242d8615aa6c993c4c20f81039e3980d0fd1bdac587fd" => :mojave
  end

  depends_on "curl-openssl"

  configure_arg %W[
    --with-curl=#{Formula["curl-openssl"].opt_prefix}
  ]
end
