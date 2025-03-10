require_relative "../lib/php_pecl_formula"

class PhpAT83Solr < PhpPeclFormula
  extension_dsl <<~EOS
    The Apache Solr PHP extension is an extremely fast,
    light-weight, feature-rich library that allows PHP applications to
    communicate easily and efficiently with Apache Solr server instances
    using an object-oriented API
  EOS

  url "https://pecl.php.net/get/solr-2.8.0.tgz"
  sha256 "092b52a7b94a807e40f8d85032c85dd0c052fab31d4f518e1d756b9f2d42d4b8"
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:  "9d60aa095fcb1165b4555909a2fd479a6d49c08f01052a68f04ab2f502becffd"
    sha256 cellar: :any, ventura: "fe6b75fa8ca268762cc71fa6912b3c56127e422b4846d1f3901ecfb0ba7295a3"
  end

  deprecate! date: "2027-12-31", because: :unsupported

  depends_on "curl"

  configure_arg %W[
    --with-curl=#{Formula["curl"].opt_prefix}
  ]
end
