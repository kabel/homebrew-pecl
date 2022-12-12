require_relative "../lib/php_pecl_formula"

class PhpSolr < PhpPeclFormula
  extension_dsl <<~EOS
    The Apache Solr PHP extension is an extremely fast,
    light-weight, feature-rich library that allows PHP applications to
    communicate easily and efficiently with Apache Solr server instances
    using an object-oriented API
  EOS

  url "https://pecl.php.net/get/solr-2.6.0.tgz"
  sha256 "7cbee19bd62d3fc89aea266cbf51c0e1d9d4127098f46848910419e8733a4dc7"
  revision 1
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, ventura:  "d10c8e429e10c8ce09b4e2018331463da0a67bc19e20d21dc08925f1bf0a3666"
    sha256 cellar: :any, monterey: "d37b2dd55c5923d95d04ed2481119123050dead5dd8fe63f92d41903d60c03b9"
    sha256 cellar: :any, big_sur:  "9132395b8d092f40bac2243e178f3045ba1a80476423a346c9fa74eaee735c22"
  end

  depends_on "curl"

  configure_arg %W[
    --with-curl=#{Formula["curl"].opt_prefix}
  ]
end
