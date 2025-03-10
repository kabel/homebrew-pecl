require_relative "../lib/php_pecl_formula"

class PhpAT81Solr < PhpPeclFormula
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
    sha256 cellar: :any, sonoma:  "d4b93e13b68936b3da8f6e2d78c8a6606e5bc6350e43ea642a11746573f97306"
    sha256 cellar: :any, ventura: "609c3a88933f826624cbc608acd0379ca8d3d61c6252acb4f7f6c839f5d1c7ec"
  end

  deprecate! date: "2025-12-31", because: :unsupported

  depends_on "curl"

  configure_arg %W[
    --with-curl=#{Formula["curl"].opt_prefix}
  ]
end
