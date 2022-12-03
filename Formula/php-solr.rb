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
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, ventura:  "b30aba2291c1ebab2772e0cb52fcb8dcd3d820ff8b710e8076415042df7c5e93"
    sha256 cellar: :any, monterey: "f64b1f6b3fc722d7fe2d651bada738a91b6a6d6bbda49b4a81b37bb79fcb737b"
    sha256 cellar: :any, big_sur:  "af64ba1b3a08e58b7d0cafd22cfda74b0f832ea14ef36cc41eea4e179f43f92d"
  end

  depends_on "curl"

  configure_arg %W[
    --with-curl=#{Formula["curl"].opt_prefix}
  ]
end
