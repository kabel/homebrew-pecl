require_relative "../lib/php_pecl_formula"

class PhpAT83Solr < PhpPeclFormula
  extension_dsl <<~EOS
    The Apache Solr PHP extension is an extremely fast,
    light-weight, feature-rich library that allows PHP applications to
    communicate easily and efficiently with Apache Solr server instances
    using an object-oriented API
  EOS

  url "https://pecl.php.net/get/solr-2.8.1.tgz"
  sha256 "1284d25f0314009abf7187d79e4bdb53a28ca63436c2c3dd8767fc4880810c91"
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:  "58b732cadb7dad487b8e4333cafdc39ad71a885e4e9840e37a0ed33fdaa3c498"
    sha256 cellar: :any, ventura: "37964627a5b9af5c732cbf11b3cd19a4ccc748e239fa7d624d411bfe765d68f7"
  end

  deprecate! date: "2027-12-31", because: :unsupported

  depends_on "curl"

  configure_arg %W[
    --with-curl=#{Formula["curl"].opt_prefix}
  ]
end
