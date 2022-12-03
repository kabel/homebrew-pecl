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
    sha256 cellar: :any, ventura:  "893bb3af47c56e212ed7fd8c8850018b8f1baa5ffc9faf88ffd8801e85aa8cd8"
    sha256 cellar: :any, monterey: "bf1316b4e17f1146567676decb131479ee16cb17cecc853422407a83c2570485"
    sha256 cellar: :any, big_sur:  "8cfbfed3f71ed460df0f6b77e2fb46e12c9f43d4f1fc898a3924aff511c6a121"
  end

  depends_on "curl"

  configure_arg %W[
    --with-curl=#{Formula["curl"].opt_prefix}
  ]
end
