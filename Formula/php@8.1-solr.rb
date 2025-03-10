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
    sha256 cellar: :any, sonoma:   "1b841b1429552736e9bce2e679ba6e8797bf68a130081a9be167cb89db9e8038"
    sha256 cellar: :any, ventura:  "5b6d46ef2229866fb680a5fdcdd19c68597e94d655954e70eb01a898678f5800"
    sha256 cellar: :any, monterey: "38974938a91496835b18ebb0f7f74e4af5e8e3e5d676062892d2993e166c24de"
  end

  deprecate! date: "2025-12-31", because: :unsupported

  depends_on "curl"

  configure_arg %W[
    --with-curl=#{Formula["curl"].opt_prefix}
  ]
end
