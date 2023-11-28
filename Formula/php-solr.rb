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
  revision 2
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:   "010b999b79140e5d8ecf92c3bdd106f67afeeafab94399072ccefca08a157ff5"
    sha256 cellar: :any, ventura:  "3d28495e1e152f7fabdda008b3bc915fe836a74ad2c658ecf6fe37d4f74f45e4"
    sha256 cellar: :any, monterey: "548353a4a82b189478813abe14d69860c6faa1de6031f9d9fb407d779b046952"
  end

  depends_on "curl"

  configure_arg %W[
    --with-curl=#{Formula["curl"].opt_prefix}
  ]
end
